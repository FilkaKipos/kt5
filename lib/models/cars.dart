import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt5/models/Tcar.dart';

part 'cars.freezed.dart';
part 'cars.g.dart';

@freezed
class CarData with _$CarData {

  factory CarData({
    required List<Car> cars,
  }) = _CarData;
  
  factory CarData.fromJson(Map<String, dynamic> json) => _$CarDataFromJson(json);
}