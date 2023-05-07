import 'package:city_parser/city_parser.dart';

void main(List<String> args) async {
  final autocomplete = await CityParser.getAutocompleteTips('belgr');
  for (var el in autocomplete) {
    print(el);
  }

  final currency = 'USD';
  final cityModel =
      await CityParser.fetchCityInformation(autocomplete[0].id, currency);
  for (var element in cityModel.categories) {
    print(element);
    print('\n');
  }
}
