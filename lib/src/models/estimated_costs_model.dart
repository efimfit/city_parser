import 'package:freezed_annotation/freezed_annotation.dart';

part 'estimated_costs_model.freezed.dart';

@freezed
class EstimatedCostsModel with _$EstimatedCostsModel {
  const factory EstimatedCostsModel({
    List<String>? singlePerson,
    List<String>? fourPersons,
  }) = _EstimatedCostsModel;
}
