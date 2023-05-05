import 'package:freezed_annotation/freezed_annotation.dart';

part 'clothing_model.freezed.dart';

@freezed
class ClothingModel with _$ClothingModel {
  const factory ClothingModel({
    required List<String?> jeans,
    required List<String?> dress,
    required List<String?> nike,
    required List<String?> shoes,
  }) = _ClothingModel;
}
