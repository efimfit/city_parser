import 'package:freezed_annotation/freezed_annotation.dart';

part 'salaries_model.freezed.dart';

@freezed
class SalariesModel with _$SalariesModel {
  const factory SalariesModel({
    required List<String> salary,
    required List<String> mortgage,
  }) = _SalariesModel;
}
