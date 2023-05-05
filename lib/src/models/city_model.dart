import 'package:freezed_annotation/freezed_annotation.dart';

import '/src/models/apartment_model.dart';
import '/src/models/childcare_model.dart';
import '/src/models/clothing_model.dart';
import '/src/models/markets_model.dart';
import '/src/models/rent_model.dart';
import '/src/models/restaurants_model.dart';
import '/src/models/salaries_model.dart';
import '/src/models/sports_model.dart';
import '/src/models/transportation_model.dart';
import '/src/models/utilities_model.dart';
import '/src/models/estimated_costs_model.dart';

part 'city_model.freezed.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    required EstimatedCostsModel estimatedCosts,
    required ApartmentModel apartmentModel,
    required ChildCareModel childCareModel,
    required ClothingModel clothingModel,
    required MarketsModel marketsModel,
    required RentModel rentModel,
    required RestaurantsModel restaurantsModel,
    required SalariesModel salariesModel,
    required SportsModel sportsModel,
    required TransportationModel transportationModel,
    required UtilitiesModel utilitiesModel,
  }) = _CityModel;
}
