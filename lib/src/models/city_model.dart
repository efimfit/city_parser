import 'package:city_parser/src/models/category_group_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    required List<CategoryGroupModel> categories,
  }) = _CityModel;
}
