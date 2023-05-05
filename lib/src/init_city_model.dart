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
          : ['One person', estimatedCostsData[1]],
      fourPersons: estimatedCostsData == null
          ? null
          : ['Four persons', estimatedCostsData[0]]);

  final apartmentModel = ApartmentModel(cityCenter: [
    buyApartmentData[0],
    buyApartmentData[1] == ' ?' ? null : buyApartmentData[1]
  ], outsideCenter: [
    buyApartmentData[2],
    buyApartmentData[3] == ' ?' ? null : buyApartmentData[3]
  ]);

  final childCareModel = ChildCareModel(preschool: [
    childcareData[0],
    childcareData[1] == ' ?' ? null : childcareData[1]
  ], primarySchool: [
    childcareData[2],
    childcareData[3] == ' ?' ? null : childcareData[3]
  ]);

  final clothingModel = ClothingModel(jeans: [
    clothingData[0],
    clothingData[1] == ' ?' ? null : clothingData[1]
  ], dress: [
    clothingData[2],
    clothingData[3] == ' ?' ? null : clothingData[3]
  ], nike: [
    clothingData[4],
    clothingData[5] == ' ?' ? null : clothingData[5]
  ], shoes: [
    clothingData[6],
    clothingData[7] == ' ?' ? null : clothingData[7]
  ]);

  final marketsModel = MarketsModel(milk: [
    marketData[0],
    marketData[1] == ' ?' ? null : marketData[1]
  ], bread: [
    marketData[2],
    marketData[3] == ' ?' ? null : marketData[3]
  ], rice: [
    marketData[4],
    marketData[5] == ' ?' ? null : marketData[5]
  ], eggs: [
    marketData[6],
    marketData[7] == ' ?' ? null : marketData[7]
  ], cheese: [
    marketData[8],
    marketData[9] == ' ?' ? null : marketData[9]
  ], chicken: [
    marketData[10],
    marketData[11] == ' ?' ? null : marketData[11]
  ], beef: [
    marketData[12],
    marketData[13] == ' ?' ? null : marketData[13]
  ], apples: [
    marketData[14],
    marketData[15] == ' ?' ? null : marketData[15]
  ], banana: [
    marketData[16],
    marketData[17] == ' ?' ? null : marketData[17]
  ], oranges: [
    marketData[18],
    marketData[19] == ' ?' ? null : marketData[19]
  ], tomato: [
    marketData[20],
    marketData[21] == ' ?' ? null : marketData[21]
  ], potato: [
    marketData[22],
    marketData[23] == ' ?' ? null : marketData[23]
  ], onion: [
    marketData[24],
    marketData[25] == ' ?' ? null : marketData[25]
  ], lettuce: [
    marketData[26],
    marketData[27] == ' ?' ? null : marketData[27]
  ], water: [
    marketData[28],
    marketData[29] == ' ?' ? null : marketData[29]
  ], wine: [
    marketData[30],
    marketData[31] == ' ?' ? null : marketData[31]
  ], domesticBeer: [
    marketData[32],
    marketData[33] == ' ?' ? null : marketData[33]
  ], importedBeer: [
    marketData[34],
    marketData[35] == ' ?' ? null : marketData[35]
  ], cigarettes: [
    marketData[36],
    marketData[37] == ' ?' ? null : marketData[37]
  ]);

  final rentModel = RentModel(oneBedroomCenter: [
    rentData[0],
    rentData[1] == ' ?' ? null : rentData[1]
  ], oneBedroomOutside: [
    rentData[2],
    rentData[3] == ' ?' ? null : rentData[3]
  ], threeBedroomsCenter: [
    rentData[4],
    rentData[5] == ' ?' ? null : rentData[5]
  ], threeBedroomsOutside: [
    rentData[6],
    rentData[7] == ' ?' ? null : rentData[7]
  ]);

  final salariesModel = SalariesModel(salary: [
    salariesData[0],
    salariesData[1] == ' ?' ? null : salariesData[1]
  ], mortgage: [
    salariesData[2],
    salariesData[3] == ' ?' ? null : salariesData[3]
  ]);

  final sportsModel = SportsModel(
      fitness: [sportsData[0], sportsData[1] == ' ?' ? null : sportsData[1]],
      tennis: [sportsData[2], sportsData[3] == ' ?' ? null : sportsData[3]],
      cinema: [sportsData[4], sportsData[5] == ' ?' ? null : sportsData[5]]);

  final transportationModel = TransportationModel(ticket: [
    transportationData[0],
    transportationData[1] == ' ?' ? null : transportationData[1]
  ], pass: [
    transportationData[2],
    transportationData[3] == ' ?' ? null : transportationData[3]
  ], taxiStart: [
    transportationData[4],
    transportationData[5] == ' ?' ? null : transportationData[5]
  ], taxiOneKm: [
    transportationData[6],
    transportationData[7] == ' ?' ? null : transportationData[7]
  ], gasoline: [
    transportationData[8],
    transportationData[9] == ' ?' ? null : transportationData[9]
  ], volkswagenGolf: [
    transportationData[10],
    transportationData[11] == ' ?' ? null : transportationData[11]
  ], toyotaCorolla: [
    transportationData[12],
    transportationData[13] == ' ?' ? null : transportationData[13]
  ]);

  final restaurantModel = RestaurantsModel(inexpensiveMeal: [
    restaurantData[0],
    restaurantData[1] == ' ?' ? null : restaurantData[1]
  ], mealForTwoPeople: [
    restaurantData[2],
    restaurantData[3] == ' ?' ? null : restaurantData[3]
  ], mcDonalds: [
    restaurantData[4],
    restaurantData[5] == ' ?' ? null : restaurantData[5]
  ], domesticBeer: [
    restaurantData[6],
    restaurantData[7] == ' ?' ? null : restaurantData[7]
  ], importedBeer: [
    restaurantData[8],
    restaurantData[9] == ' ?' ? null : restaurantData[9]
  ], cappuccino: [
    restaurantData[10],
    restaurantData[11] == ' ?' ? null : restaurantData[11]
  ], pepsi: [
    restaurantData[12],
    restaurantData[13] == ' ?' ? null : restaurantData[13]
  ], water: [
    restaurantData[14],
    restaurantData[15] == ' ?' ? null : restaurantData[15]
  ]);

  final utilitiesModel = UtilitiesModel(basic: [
    utilitiesData[0],
    utilitiesData[1] == ' ?' ? null : utilitiesData[1]
  ], mobile: [
    utilitiesData[2],
    utilitiesData[3] == ' ?' ? null : utilitiesData[3]
  ], internet: [
    utilitiesData[4],
    utilitiesData[5] == ' ?' ? null : utilitiesData[5]
  ]);

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
