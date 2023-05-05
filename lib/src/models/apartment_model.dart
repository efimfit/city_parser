import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartment_model.freezed.dart';

@freezed
class ApartmentModel with _$ApartmentModel {
  const factory ApartmentModel({
    required List<String> cityCenter,
    required List<String> outsideCenter,
  }) = _ApartmentModel;
}
