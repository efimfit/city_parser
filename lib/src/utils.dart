import 'package:html/dom.dart';
import 'dart:convert';

import 'urls.dart';

List<String> getCosts(List<Element> rowHtml) {
  List<String> data = [];
  for (var row in rowHtml) {
    final category = row.querySelectorAll('td')[0].text.trim();
    var cost = row.querySelectorAll('td')[1].text;
    cost = cost.replaceAll('\u00a0', String.fromCharCode(32));
    cost = cost.replaceAll(',', '');
    cost = cost.substring(0, cost.indexOf('.') + 3);
    data
      ..add(category)
      ..add(cost);
  }
  return data;
}

List<String> getEstimatedCosts(List<Element> rowHtml) {
  List<String> data = [];
  for (var row in rowHtml) {
    var cost = row.text.split(' ')[7];
    cost = cost.replaceAll(',', '');
    cost = cost.substring(0, cost.indexOf('.') + 2);
    data.add(cost);
  }
  return data;
}

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
