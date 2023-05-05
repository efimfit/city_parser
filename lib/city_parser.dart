library city_parser;

import 'dart:convert';

import 'package:city_parser/src/models/suggestion_city_model.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;

import 'src/init_city_model.dart';
import 'src/models/city_model.dart';
import 'src/utils.dart';
import 'src/currencies_list.dart';

class CityParser {
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

  static Future<CityModel> fetchCityInformation(int id,
      [String currency = 'USD']) async {
    var url = urlDecoder(id: id);
    var response = await http.get(Uri.parse(url));
    var document = parser.parse(response.body);
    final urlRow = document.querySelectorAll('link');

    url = '${urlRow[0].attributes['href']}?displayCurrency=$currency';
    response = await http.get(Uri.parse(url));
    document = parser.parse(response.body);
    final allRowsHtml = document.querySelectorAll('tr');

    List<String>? estimatedCostsData;
    final rows = document.querySelectorAll('ul');
    if (rows.length > 6) {
      estimatedCostsData =
          getEstimatedCosts(rows[5].querySelectorAll('li').sublist(0, 2));
    }

    final restaurantData = getCosts(allRowsHtml.sublist(2, 10));
    final marketData = getCosts(allRowsHtml.sublist(11, 30));
    final transportationData = getCosts(allRowsHtml.sublist(31, 39));
    final utilitiesData = getCosts(allRowsHtml.sublist(40, 43));
    final sportsData = getCosts(allRowsHtml.sublist(44, 47));
    final childcareData = getCosts(allRowsHtml.sublist(48, 50));
    final clothingData = getCosts(allRowsHtml.sublist(51, 55));
    final rentData = getCosts(allRowsHtml.sublist(56, 60));
    final buyApartmentData = getCosts(allRowsHtml.sublist(61, 63));
    final salariesData = getCosts(allRowsHtml.sublist(64, 66));

    return initCityModel(
        estimatedCostsData,
        restaurantData,
        marketData,
        transportationData,
        utilitiesData,
        sportsData,
        childcareData,
        clothingData,
        rentData,
        buyApartmentData,
        salariesData);
  }

  static List<String> getCurrenciesList() {
    return currenciesList;
  }
}
