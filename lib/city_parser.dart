library city_parser;

export 'src/urls.dart';

import 'dart:convert';

import 'package:html/dom.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;

import 'src/init_city_model.dart';
import 'src/urls.dart';
import 'src/models/city_model.dart';

class CityParser {
  static Future<List<List<String>>> getAutocompleteTips(String input) async {
    List<int> decodedBytes = base64.decode(getTipsUrl);
    String decodedStr = utf8.decode(decodedBytes);
    final url = '$decodedStr$input';

    final response = await http.get(Uri.parse(url));
    final jsonData = json.decode(response.body);

    final List<List<String>> autocomplete = [];
    for (Map<String, dynamic> clue in jsonData) {
      final List<String> tip = clue.values.first.split(',');
      autocomplete.add(tip);
    }
    return autocomplete;
  }

  static List<String> _getCosts(List<Element> rowHtml) {
    List<String> data = [];
    for (var row in rowHtml) {
      final category = row.querySelectorAll('td')[0].text.trim();
      var cost = row.querySelectorAll('td')[1].text;
      cost = cost.replaceAll('\u00a0', String.fromCharCode(32));
      cost = cost.replaceAll(',', '');
      cost = cost.trim().replaceAll(' \$', '');
      data
        ..add(category)
        ..add(cost);
    }
    return data;
  }

  static List<String> _getEstimatedCosts(List<Element> rowHtml) {
    List<String> data = [];
    for (var row in rowHtml) {
      var cost = row.text.split(' ')[7];
      cost = cost.replaceAll(',', '');
      cost = cost.trim().replaceAll('\$', '');
      data.add(cost);
    }
    return data;
  }

  static Future<CityModel> fetchCityInformation(String city) async {
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
          _getEstimatedCosts(rows[5].querySelectorAll('li').sublist(0, 2));
    }

    final restaurantData = _getCosts(allRowsHtml.sublist(2, 10));
    final marketData = _getCosts(allRowsHtml.sublist(11, 30));
    final transportationData = _getCosts(allRowsHtml.sublist(31, 39));
    final utilitiesData = _getCosts(allRowsHtml.sublist(40, 43));
    final sportsData = _getCosts(allRowsHtml.sublist(44, 47));
    final childcareData = _getCosts(allRowsHtml.sublist(48, 50));
    final clothingData = _getCosts(allRowsHtml.sublist(51, 55));
    final rentData = _getCosts(allRowsHtml.sublist(56, 60));
    final buyApartmentData = _getCosts(allRowsHtml.sublist(61, 63));
    final salariesData = _getCosts(allRowsHtml.sublist(64, 66));

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
