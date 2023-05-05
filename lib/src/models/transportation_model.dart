import 'package:freezed_annotation/freezed_annotation.dart';

part 'transportation_model.freezed.dart';

@freezed
class TransportationModel with _$TransportationModel {
  const factory TransportationModel({
    required List<String?> ticket,
    required List<String?> pass,
    required List<String?> taxiStart,
    required List<String?> taxiOneKm,
    required List<String?> gasoline,
    required List<String?> volkswagenGolf,
    required List<String?> toyotaCorolla,
  }) = _TransportationModel;
}
