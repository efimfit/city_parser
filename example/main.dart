import 'package:city_parser/city_parser.dart';

void main(List<String> args) async {
  final autocomplete = await CityParser.getAutocompleteTips('kiro');
  for (var el in autocomplete) {
    print(el);
  }

  final cityModel = await CityParser.fetchCityInformation(6101);
  print(cityModel.estimatedCosts);
  print(cityModel.apartmentModel);
  //etc...
}
