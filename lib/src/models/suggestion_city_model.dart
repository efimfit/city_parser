import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion_city_model.freezed.dart';
part 'suggestion_city_model.g.dart';

@freezed
class SuggestionCityModel with _$SuggestionCityModel {
  const factory SuggestionCityModel({
    required String label,
    required int id,
  }) = _SuggestionCityModel;

  factory SuggestionCityModel.fromJson(Map<String, dynamic> json) =>
      _$SuggestionCityModelFromJson(json);
}
