import 'dart:convert';

import 'package:city_parser/src/models/category_element_model.dart';
import 'package:city_parser/src/models/category_group_model.dart';
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

List<CategoryGroupModel> getCosts(Document document) {
  final tableRows = document
      .getElementsByClassName('data_wide_table new_bar_table')[0]
      .querySelectorAll('tr');

  List<CategoryGroupModel> categoryGroups = [];
  var model = CategoryGroupModel(label: '', elements: []);

  for (var element in tableRows) {
    final categoryTitle = element.getElementsByClassName('category_title');
    if (categoryTitle.isNotEmpty) {
      if (model.label.isNotEmpty) {
        categoryGroups.add(model);
        model = model.copyWith(label: '', elements: []);
      }
      model = model.copyWith(label: categoryTitle[0].text);
    } else {
      final categoryItem = element.querySelectorAll('td');
      final label = categoryItem[0].text.trim();
      var price = categoryItem[1]
          .text
          .replaceAll('\u00a0', String.fromCharCode(32))
          .replaceAll(',', '');
      price = price.substring(0, price.indexOf('.') + 3).replaceAll(' ?', '');
      model = model.copyWith(elements: [
        ...model.elements,
        CategoryElementModel(label: label, value: price)
      ]);
    }
  }
  if (model.label.isNotEmpty) {
    categoryGroups.add(model);
    model = model.copyWith(label: 'Estimated costs', elements: []);
  }

  final summaryRows = document.getElementsByClassName('emp_number');
  if (summaryRows.length > 1) {
    for (var i = 0; i < 2; i++) {
      String cost = '';
      if (i == 0) {
        cost = summaryRows[i].text.replaceAll(',', '');
        cost = cost.substring(0, cost.indexOf('.') + 2);
        model = model.copyWith(elements: [
          CategoryElementModel(label: 'Family of four', value: cost)
        ]);
      } else {
        cost = summaryRows[i].text.replaceAll(',', '');
        cost = cost.substring(0, cost.indexOf('.') + 2);
        model = model.copyWith(elements: [
          ...model.elements,
          CategoryElementModel(label: 'Single person', value: cost)
        ]);
      }
    }
  }
  categoryGroups.insert(0, model);

  return categoryGroups;
}
