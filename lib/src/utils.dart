import 'package:html/dom.dart';

List<String> getCosts(List<Element> rowHtml) {
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

List<String> getEstimatedCosts(List<Element> rowHtml) {
  List<String> data = [];
  for (var row in rowHtml) {
    var cost = row.text.split(' ')[7];
    cost = cost.replaceAll(',', '');
    cost = cost.trim().replaceAll('\$', '');
    data.add(cost);
  }
  return data;
}

String trimCityName(String cityName) {
  final commaIndex = cityName.indexOf(',');
  return commaIndex == -1 ? cityName : cityName.substring(0, commaIndex);
}
