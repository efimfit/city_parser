library city_parser;

export 'src/models/city_model.dart';
export 'src/models/suggestion_city_model.dart';
export 'src/models/cost_category_model.dart';
export 'src/models/category_element_model.dart';

import 'dart:convert';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;

import 'package:city_parser/src/models/suggestion_city_model.dart';

import 'src/models/city_model.dart';
import 'src/utils.dart';

class CityParser {
  // static Future<List<SuggestionCityModel>> getAutocompleteTips(
  //     String input) async {
  //   final cityList = await dbSearch(label: input);
  //   final List<SuggestionCityModel> autocomplete = [];
  //   for (Map<String, dynamic> city in cityList) {
  //     final label = city['label'];
  //     final id = city['id'];
  //     autocomplete.add(SuggestionCityModel(label: label, id: id));
  //   }
  //   return autocomplete;
  // }

  static Future<List<SuggestionCityModel>> getAutocompleteTips(
      String input) async {
    final url = urlDecoder(input: input);
    final response = await http.get(Uri.parse(url));
    final jsonData = json.decode(response.body);
    final List<SuggestionCityModel> autocomplete = [];

    for (Map<String, dynamic> clue in jsonData) {
      final label = clue['label'] as String;
      final id = int.parse(clue['value']);
      autocomplete.add(SuggestionCityModel(label: label, id: id));
    }
    return autocomplete;
  }

  // static Future<List<Map<String, dynamic>>> dbSearch(
  //     {String label = '', int id = 0}) async {
  //   var db = await Db.create('mongodb://localhost:27017/local');
  //   await db.open();
  //   var citiesCollection = db.collection('cities');
  //   List<Map<String, dynamic>> cityList = [];
  //   if (label.isNotEmpty) {
  //     cityList = await citiesCollection
  //         .find(where.match('label', label, caseInsensitive: false))
  //         .toList();
  //   } else {
  //     var city = await citiesCollection.findOne(where.eq('id', id));
  //     city != null ? cityList.add(city) : null;
  //   }

  //   await db.close();
  //   return cityList;
  // }

  static Future<CityModel> fetchCityModel(
      SuggestionCityModel suggestionCityModel) async {
    final cityModel =
        await CityParser.fetchCityInformation(suggestionCityModel);
    return cityModel;
  }

  static Future<CityModel> fetchCityInformation(
      SuggestionCityModel suggestionCityModel,
      [String currency = 'USD']) async {
    var url = urlDecoder(id: suggestionCityModel.id);
    var response = await http.get(Uri.parse(url));
    final urlRow =
        parser.parse(response.body).querySelector('meta[property="og:url"]');
    final fetchedUrl = urlRow?.attributes['content'];

    url = '$fetchedUrl?displayCurrency=$currency';
    response = await http.get(Uri.parse(url));
    final document = parser.parse(response.body);

    return CityModel(
        costCategories: getCosts(document),
        label: suggestionCityModel.label,
        id: suggestionCityModel.id);
  }

  // static Future<CityModel> fetchCityInformation(
  //     SuggestionCityModel suggestionCityModel) async {
  //   final cityList = await dbSearch(id: suggestionCityModel.id);

  //   return cityList.isEmpty
  //       ? CityModel(label: '', id: 0, categories: [])
  //       : CityModel.fromJson(cityList[0]);
  // }
}
