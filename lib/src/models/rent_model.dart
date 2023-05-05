import 'package:freezed_annotation/freezed_annotation.dart';

part 'rent_model.freezed.dart';

@freezed
class RentModel with _$RentModel {
  const factory RentModel({
    required List<String?> oneBedroomCenter,
    required List<String?> oneBedroomOutside,
    required List<String?> threeBedroomsCenter,
    required List<String?> threeBedroomsOutside,
  }) = _RentModel;
}
