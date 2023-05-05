library city_parser;

export 'src/urls.dart';

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;

import 'src/init_city_model.dart';
import 'src/urls.dart';
import 'src/models/city_model.dart';
import 'src/utils.dart';

class CityParser {
  static Future<List<String>> getAutocompleteTips(String input) async {
    List<int> decodedBytes = base64.decode(getTipsUrl);
    String decodedStr = utf8.decode(decodedBytes);
    final url = '$decodedStr$input';

    final response = await http.get(Uri.parse(url));
    final jsonData = json.decode(response.body);
    final List<String> autocomplete = [];

    for (Map<String, dynamic> clue in jsonData) {
      final tip = clue.values.first as String;
      autocomplete.add(tip);
    }
    return autocomplete;
  }

  static Future<CityModel> fetchCityInformation(String cityName) async {
    final city = trimCityName(cityName);
    List<int> decodedBytes = base64.decode(fetchCityInformationUrl);
    String decodedStr = utf8.decode(decodedBytes);
    final url = '$decodedStr$city?displayCurrency=USD';

    final response = await http.get(Uri.parse(url));
    final document = parser.parse(response.body);
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
}
