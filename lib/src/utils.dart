import 'dart:convert';

import 'package:html/dom.dart';

import 'urls.dart';

String urlDecoder({int id = 0, String input = ''}) {
  late List<int> decodedBytes;
  late final String url;
  late String decodedStr;
  if (id != 0) {
    decodedBytes = base64.decode(fetchCityInformationUrl);
    decodedStr = utf8.decode(decodedBytes);
    url = '$decodedStr$id';
  } else {
    decodedBytes = base64.decode(getTipsUrl);
    decodedStr = utf8.decode(decodedBytes);
    url = '$decodedStr$input';
  }

  return url;
}

List<List<String?>> getCosts(Document document) {
  final tableRows = document
      .getElementsByClassName('data_wide_table new_bar_table')[0]
      .querySelectorAll('tr');

  List<List<String?>> categories = [];
  List<String?> category = [];

  for (var element in tableRows) {
    final categoryTitle = element.getElementsByClassName('category_title');
    if (categoryTitle.isNotEmpty) {
      if (category.isNotEmpty) {
        categories.add(category);
        category = [];
      }
      category.add(categoryTitle[0].text);
    } else {
      final categoryItem = element.querySelectorAll('td');
      final label = categoryItem[0].text.trim();
      var price = categoryItem[1]
          .text
          .replaceAll('\u00a0', String.fromCharCode(32))
          .replaceAll(',', '');
      price = price.substring(0, price.indexOf('.') + 3);
      category.addAll([label, price == ' ?' ? null : price]);
    }
  }
  if (category.isNotEmpty) {
    categories.add(category);
  }

  List<String?> estimatedCosts = [];
  final summaryRows = document.getElementsByClassName('emp_number');
  if (summaryRows.isNotEmpty) {
    estimatedCosts.add('Estimated costs');
    for (var i = 0; i < 2; i++) {
      i == 0
          ? estimatedCosts.add('Family of four')
          : estimatedCosts.add('Single person');
      var cost = summaryRows[i].text.replaceAll(',', '');
      cost = cost.substring(0, cost.indexOf('.') + 2);
      estimatedCosts.add(cost);
    }
  }
  categories.insert(0, estimatedCosts);

  return categories;
}
