import 'package:freezed_annotation/freezed_annotation.dart';

part 'utilities_model.freezed.dart';

@freezed
class UtilitiesModel with _$UtilitiesModel {
  const factory UtilitiesModel({
    required List<String> basic,
    required List<String> mobile,
    required List<String> internet,
  }) = _UtilitiesModel;
}
