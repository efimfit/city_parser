import 'package:city_parser/src/models/apartment_model.dart';
import 'package:city_parser/src/models/childcare_model.dart';
import 'package:city_parser/src/models/clothing_model.dart';
import 'package:city_parser/src/models/estimated_costs_model.dart';
import 'package:city_parser/src/models/markets_model.dart';
import 'package:city_parser/src/models/rent_model.dart';
import 'package:city_parser/src/models/restaurants_model.dart';
import 'package:city_parser/src/models/salaries_model.dart';
import 'package:city_parser/src/models/sports_model.dart';
import 'package:city_parser/src/models/transportation_model.dart';
import 'package:city_parser/src/models/utilities_model.dart';
import 'package:city_parser/src/models/city_model.dart';

CityModel initCityModel(
  List<String>? estimatedCostsData,
  List<String> restaurantData,
  List<String> marketData,
  List<String> transportationData,
  List<String> utilitiesData,
  List<String> sportsData,
  List<String> childcareData,
  List<String> clothingData,
  List<String> rentData,
  List<String> buyApartmentData,
  List<String> salariesData,
) {
  final estimatedCostsModel = EstimatedCostsModel(
      singlePerson: estimatedCostsData == null
          ? null
          : ['One person', estimatedCostsData[0]],
      fourPersons: estimatedCostsData == null
          ? null
          : ['Four persons', estimatedCostsData[1]]);

  final apartmentModel = ApartmentModel(
      cityCenter: buyApartmentData.sublist(0, 2),
      outsideCenter: buyApartmentData.sublist(2, 4));

  final childCareModel = ChildCareModel(
      preschool: childcareData.sublist(0, 2),
      primarySchool: childcareData.sublist(2, 4));

  final clothingModel = ClothingModel(
      jeans: clothingData.sublist(0, 2),
      dress: clothingData.sublist(2, 4),
      nike: clothingData.sublist(4, 6),
      shoes: clothingData.sublist(6, 8));

  final marketsModel = MarketsModel(
      milk: marketData.sublist(0, 2),
      bread: marketData.sublist(2, 4),
      rice: marketData.sublist(4, 6),
      eggs: marketData.sublist(6, 8),
      cheese: marketData.sublist(8, 10),
      chicken: marketData.sublist(10, 12),
      beef: marketData.sublist(12, 14),
      apples: marketData.sublist(14, 16),
      banana: marketData.sublist(16, 18),
      oranges: marketData.sublist(18, 20),
      tomato: marketData.sublist(20, 22),
      potato: marketData.sublist(22, 24),
      onion: marketData.sublist(24, 26),
      lettuce: marketData.sublist(26, 28),
      water: marketData.sublist(28, 30),
      wine: marketData.sublist(30, 32),
      domesticBeer: marketData.sublist(32, 34),
      importedBeer: marketData.sublist(34, 36),
      cigarettes: marketData.sublist(36, 38));

  final rentModel = RentModel(
      oneBedroomCenter: rentData.sublist(0, 2),
      oneBedroomOutside: rentData.sublist(2, 4),
      threeBedroomsCenter: rentData.sublist(4, 6),
      threeBedroomsOutside: rentData.sublist(6, 8));

  final salariesModel = SalariesModel(
      salary: salariesData.sublist(0, 2), mortgage: salariesData.sublist(2, 4));

  final sportsModel = SportsModel(
      fitness: sportsData.sublist(0, 2),
      tennis: sportsData.sublist(2, 4),
      cinema: sportsData.sublist(4, 6));

  final transportationModel = TransportationModel(
      ticket: transportationData.sublist(0, 2),
      pass: transportationData.sublist(2, 4),
      taxiStart: transportationData.sublist(4, 6),
      taxiOneKm: transportationData.sublist(6, 8),
      gasoline: transportationData.sublist(8, 10),
      volkswagenGolf: transportationData.sublist(10, 12),
      toyotaCorolla: transportationData.sublist(12, 14));

  final restaurantModel = RestaurantsModel(
      inexpensiveMeal: restaurantData.sublist(0, 2),
      mealForTwoPeople: restaurantData.sublist(2, 4),
      mcDonalds: restaurantData.sublist(4, 6),
      domesticBeer: restaurantData.sublist(6, 8),
      importedBeer: restaurantData.sublist(8, 10),
      cappuccino: restaurantData.sublist(10, 12),
      pepsi: restaurantData.sublist(12, 14),
      water: restaurantData.sublist(14, 16));

  final utilitiesModel = UtilitiesModel(
      basic: utilitiesData.sublist(0, 2),
      mobile: utilitiesData.sublist(2, 4),
      internet: utilitiesData.sublist(4, 6));

  return CityModel(
      estimatedCosts: estimatedCostsModel,
      apartmentModel: apartmentModel,
      childCareModel: childCareModel,
      clothingModel: clothingModel,
      marketsModel: marketsModel,
      rentModel: rentModel,
      restaurantsModel: restaurantModel,
      salariesModel: salariesModel,
      sportsModel: sportsModel,
      transportationModel: transportationModel,
      utilitiesModel: utilitiesModel);
}
