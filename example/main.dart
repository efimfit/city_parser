import 'dart:convert';
import 'dart:io';
import 'package:html/dom.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'dart:isolate';
import 'dart:async';

import 'package:city_parser/city_parser.dart';

void main(List<String> args) async {
  /// 1 part
  /// parsing all cities from all countries. Write it to 'city_list.json'
  // parseCities();

  /// 2 part
  /// open 'city_list.json' and getting all suggestions via multiple isolates.
  /// Write suggestions models to multiple files (depending on amount of isolates)
  // initIsolatesGetSuggestions();

  /// 3 part
  /// open and deserialize files with suggestion models. Remove duplicates.
  /// Write into 'suggestions_list.json'
  // combineSuggestionsLists();

  /// 4 part
  /// fetching city models via multiple isolates. Write them to multiple files
  // initIsolatesGetModels();

  /// 5 part
  /// open and deserialize files with city models. Write into 'city_models_list.json'
  combineCityModelsLists();
}

void parseCities() async {
  var url = 'https://www.numbeo.com/cost-of-living/';
  var response = await http.get(Uri.parse(url));
  var document = parser.parse(response.body);

  final countryList = document
      .getElementsByClassName('before_or_select_location_form')[0]
      .querySelectorAll('option')
      .sublist(1);

  var index = 0;
  List<String> cities = [];
  for (var element in countryList) {
    url =
        'https://www.numbeo.com/cost-of-living/country_result.jsp?country=${element.text}';
    response = await http.get(Uri.parse(url));
    document = parser.parse(response.body);
    Element select = document.querySelector('select[name="city"][id="city"]')!;
    List<String> cityList = select.text.split('\n');
    cityList =
        cityList.map((e) => e.trim()).toList().sublist(2, cityList.length - 1);
    for (var city in cityList) {
      cities.add(city);
      print(index++);
    }
  }
  String jsonCityList = jsonEncode(cities);
  File('city_list.json').writeAsStringSync(jsonCityList);
}

Future<void> getSuggestions(List<dynamic> args) async {
  SendPort sendPort = args[0];
  List<String> cities = args[1];
  int index = args[2];

  List<SuggestionCityModel> totalSuggestions = [];
  for (var i = index; i < index + 500; i++) {
    print(i);

    final List<SuggestionCityModel> autocomplete =
        await CityParser.getAutocompleteTips(cities[i]);
    totalSuggestions.addAll(autocomplete);
    if ((i != 0 && i + 1 == index + 500) || i + 1 == cities.length) {
      print('end $i');
      Set<SuggestionCityModel> suggestionsSet = totalSuggestions.toSet();
      String jsonCityList = jsonEncode(suggestionsSet.toList());
      File('suggestions/suggestions_${i + 1}.json')
          .writeAsStringSync(jsonCityList);
      sendPort.send(true);
      break;
    }
  }
}

void initIsolatesGetSuggestions() async {
  List<dynamic> cityListRaw =
      jsonDecode(File('city_list.json').readAsStringSync());
  List<String> cityList = cityListRaw.map((city) => city.toString()).toList();

  for (int i = 0; i < 16; i++) {
    final receivePort = ReceivePort();
    await Isolate.spawn(
        getSuggestions, [receivePort.sendPort, cityList, i * 500]);
    receivePort.listen((_) {
      receivePort.close();
    });
  }
}

void combineSuggestionsLists() {
  List<SuggestionCityModel> suggestionsList = [];

  for (var i = 5; i < 80; i = i + 5) {
    List<dynamic> cityList = jsonDecode(
        File('suggestions/suggestions_${i}00.json').readAsStringSync());
    for (Map<String, dynamic> el in cityList) {
      final model = SuggestionCityModel.fromJson(el);
      suggestionsList.add(model);
    }
  }
  List<dynamic> cityList =
      jsonDecode(File('suggestions/suggestions_7876.json').readAsStringSync());
  for (Map<String, dynamic> el in cityList) {
    final model = SuggestionCityModel.fromJson(el);
    suggestionsList.add(model);
  }
  Set<SuggestionCityModel> suggestionsSet = suggestionsList.toSet();
  String jsonCityList = jsonEncode(suggestionsSet.toList());
  File('suggestions/suggestions_list.json').writeAsStringSync(jsonCityList);
}

Future<void> getCityModels(List<dynamic> args) async {
  SendPort sendPort = args[0];
  List<SuggestionCityModel> suggestions = args[1];
  int index = args[2];

  List<CityModel> totalCityModelList = [];
  for (var i = index; i < index + 500; i++) {
    print(i);

    CityModel cityModel = await CityParser.fetchCityInformation(suggestions[i]);
    totalCityModelList.add(cityModel);
    if ((i != 0 && i + 1 == index + 500) || i + 1 == suggestions.length) {
      print('end $i');
      String jsonCityList = jsonEncode(totalCityModelList.toList());
      File('city_models/${i + 1}.json').writeAsStringSync(jsonCityList);
      sendPort.send(true);
      break;
    }
  }
}

void initIsolatesGetModels() async {
  List<SuggestionCityModel> suggestionsList = [];
  List<dynamic> suggestionsListRaw =
      jsonDecode(File('suggestions/suggestions_list.json').readAsStringSync());
  for (Map<String, dynamic> el in suggestionsListRaw) {
    final model = SuggestionCityModel.fromJson(el);
    suggestionsList.add(model);
  }
  for (int i = 0; i < 16; i++) {
    final receivePort = ReceivePort();
    await Isolate.spawn(
        getCityModels, [receivePort.sendPort, suggestionsList, i * 500]);
    receivePort.listen((_) {
      receivePort.close();
    });
  }
}

void combineCityModelsLists() {
  List<CityModel> cityModelList = [];
  for (var i = 5; i < 80; i = i + 5) {
    List<dynamic> modelsList =
        jsonDecode(File('city_models/${i}00.json').readAsStringSync());
    for (Map<String, dynamic> el in modelsList) {
      final model = CityModel.fromJson(el);
      cityModelList.add(model);
    }
  }
  List<dynamic> modelsList =
      jsonDecode(File('city_models/7729.json').readAsStringSync());
  for (Map<String, dynamic> el in modelsList) {
    final model = CityModel.fromJson(el);
    cityModelList.add(model);
  }
  Set<CityModel> cityModelsSet = cityModelList.toSet();
  print(cityModelsSet.length);
  String jsonCityList = jsonEncode(cityModelsSet.toList());
  File('city_models/city_models_list.json').writeAsStringSync(jsonCityList);
}
