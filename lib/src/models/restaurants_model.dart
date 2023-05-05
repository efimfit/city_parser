import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurants_model.freezed.dart';

@freezed
class RestaurantsModel with _$RestaurantsModel {
  const factory RestaurantsModel({
    required List<String?> inexpensiveMeal,
    required List<String?> mealForTwoPeople,
    required List<String?> mcDonalds,
    required List<String?> domesticBeer,
    required List<String?> importedBeer,
    required List<String?> cappuccino,
    required List<String?> pepsi,
    required List<String?> water,
  }) = _RestaurantsModel;
}
