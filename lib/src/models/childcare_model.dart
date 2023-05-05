import 'package:freezed_annotation/freezed_annotation.dart';

part 'childcare_model.freezed.dart';

@freezed
class ChildCareModel with _$ChildCareModel {
  const factory ChildCareModel({
    required List<String?> preschool,
    required List<String?> primarySchool,
  }) = _ChildCareModel;
}
