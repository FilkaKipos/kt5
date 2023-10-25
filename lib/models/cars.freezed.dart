// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cars.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarData _$CarDataFromJson(Map<String, dynamic> json) {
  return _CarData.fromJson(json);
}

/// @nodoc
mixin _$CarData {
  List<Car> get cars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarDataCopyWith<CarData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarDataCopyWith<$Res> {
  factory $CarDataCopyWith(CarData value, $Res Function(CarData) then) =
      _$CarDataCopyWithImpl<$Res, CarData>;
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class _$CarDataCopyWithImpl<$Res, $Val extends CarData>
    implements $CarDataCopyWith<$Res> {
  _$CarDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_value.copyWith(
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarDataImplCopyWith<$Res> implements $CarDataCopyWith<$Res> {
  factory _$$CarDataImplCopyWith(
          _$CarDataImpl value, $Res Function(_$CarDataImpl) then) =
      __$$CarDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class __$$CarDataImplCopyWithImpl<$Res>
    extends _$CarDataCopyWithImpl<$Res, _$CarDataImpl>
    implements _$$CarDataImplCopyWith<$Res> {
  __$$CarDataImplCopyWithImpl(
      _$CarDataImpl _value, $Res Function(_$CarDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$CarDataImpl(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarDataImpl implements _CarData {
  _$CarDataImpl({required final List<Car> cars}) : _cars = cars;

  factory _$CarDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarDataImplFromJson(json);

  final List<Car> _cars;
  @override
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'CarData(cars: $cars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarDataImpl &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarDataImplCopyWith<_$CarDataImpl> get copyWith =>
      __$$CarDataImplCopyWithImpl<_$CarDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarDataImplToJson(
      this,
    );
  }
}

abstract class _CarData implements CarData {
  factory _CarData({required final List<Car> cars}) = _$CarDataImpl;

  factory _CarData.fromJson(Map<String, dynamic> json) = _$CarDataImpl.fromJson;

  @override
  List<Car> get cars;
  @override
  @JsonKey(ignore: true)
  _$$CarDataImplCopyWith<_$CarDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
