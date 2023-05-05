import 'package:city_parser/city_parser.dart';

void main(List<String> args) async {
  final autocomplete = await CityParser.getAutocompleteTips('bel');
  print(autocomplete);

  final cityModel = await CityParser.fetchCityInformation('Vologda-Russia');
  print(cityModel.estimatedCosts);
  print(cityModel.apartmentModel);
  //etc...
}
