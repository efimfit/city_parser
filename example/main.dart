import 'package:city_parser/city_parser.dart';

void main(List<String> args) async {
  final autocomplete = await CityParser.getAutocompleteTips('belgr');
  for (var el in autocomplete) {
    print(el);
  }

  final currency = 'RUB';
  final cityModel =
      await CityParser.fetchCityInformation(autocomplete[0].id, currency);
  print(cityModel.estimatedCosts);
  print(cityModel.apartmentModel);
  //etc...
}
