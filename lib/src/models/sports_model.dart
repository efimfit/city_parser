import 'package:freezed_annotation/freezed_annotation.dart';

part 'sports_model.freezed.dart';

@freezed
class SportsModel with _$SportsModel {
  const factory SportsModel({
    required List<String> fitness,
    required List<String> tennis,
    required List<String> cinema,
  }) = _SportsModel;
}
