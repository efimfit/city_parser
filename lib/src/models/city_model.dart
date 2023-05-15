import 'package:city_parser/src/models/category_group_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    required String label,
    required int id,
    required List<CategoryGroupModel> categories,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
