import 'package:freezed_annotation/freezed_annotation.dart';

part 'markets_model.freezed.dart';

@freezed
class MarketsModel with _$MarketsModel {
  const factory MarketsModel({
    required List<String?> milk,
    required List<String?> bread,
    required List<String?> rice,
    required List<String?> eggs,
    required List<String?> cheese,
    required List<String?> chicken,
    required List<String?> beef,
    required List<String?> apples,
    required List<String?> banana,
    required List<String?> oranges,
    required List<String?> tomato,
    required List<String?> potato,
    required List<String?> onion,
    required List<String?> lettuce,
    required List<String?> water,
    required List<String?> wine,
    required List<String?> domesticBeer,
    required List<String?> importedBeer,
    required List<String?> cigarettes,
  }) = _MarketsModel;
}
