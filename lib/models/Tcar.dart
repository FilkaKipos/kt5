// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'Tcar.freezed.dart';
part 'Tcar.g.dart';

class ConvertPrice implements JsonConverter<double, dynamic> {
  const ConvertPrice();

  @override
  String toJson(double value) {
    return value.toString();
  }

  @override
  double fromJson(dynamic value) {
    return double.parse(value.substring(1));
  }
}

@freezed
class Car with _$Car {
  factory Car({
    required int id,
    required String car,
    @JsonKey(name: 'car_model') required String model,
    @JsonKey(name: 'car_color') required String color,
    @JsonKey(name: 'car_model_year') required int year,
    @ConvertPrice() required double price,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
