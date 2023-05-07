library city_parser;

export 'src/models/city_model.dart';

import 'dart:convert';

import 'package:city_parser/src/models/suggestion_city_model.dart';
import 'package:html/dom.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;

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
    final urlRow =
        parser.parse(response.body).querySelector('meta[property="og:url"]');
    final fetchedUrl = urlRow?.attributes['content'];

    url = '$fetchedUrl?displayCurrency=$currency';
    response = await http.get(Uri.parse(url));
    final document = parser.parse(response.body);

    return CityModel(categories: getCosts(document));
  }

  static List<String> getCurrenciesList() {
    return currenciesList;
  }
}
