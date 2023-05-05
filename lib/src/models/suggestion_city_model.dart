import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion_city_model.freezed.dart';

@freezed
class SuggestionCityModel with _$SuggestionCityModel {
  const factory SuggestionCityModel({
    required String label,
    required int id,
  }) = _SuggestionCityModel;
}
