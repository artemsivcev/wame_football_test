// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
mixin _$Player {
  int get id => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get nationality => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get height => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  Birth get birth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call(
      {int id,
      String firstname,
      String lastname,
      String name,
      String nationality,
      String photo,
      int age,
      String height,
      String weight,
      Birth birth});

  $BirthCopyWith<$Res> get birth;
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? name = null,
    Object? nationality = null,
    Object? photo = null,
    Object? age = null,
    Object? height = null,
    Object? weight = null,
    Object? birth = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as Birth,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BirthCopyWith<$Res> get birth {
    return $BirthCopyWith<$Res>(_value.birth, (value) {
      return _then(_value.copyWith(birth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerImplCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$PlayerImplCopyWith(
          _$PlayerImpl value, $Res Function(_$PlayerImpl) then) =
      __$$PlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String firstname,
      String lastname,
      String name,
      String nationality,
      String photo,
      int age,
      String height,
      String weight,
      Birth birth});

  @override
  $BirthCopyWith<$Res> get birth;
}

/// @nodoc
class __$$PlayerImplCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$PlayerImpl>
    implements _$$PlayerImplCopyWith<$Res> {
  __$$PlayerImplCopyWithImpl(
      _$PlayerImpl _value, $Res Function(_$PlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? name = null,
    Object? nationality = null,
    Object? photo = null,
    Object? age = null,
    Object? height = null,
    Object? weight = null,
    Object? birth = null,
  }) {
    return _then(_$PlayerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: null == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as Birth,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerImpl implements _Player {
  _$PlayerImpl(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.name,
      required this.nationality,
      required this.photo,
      required this.age,
      required this.height,
      required this.weight,
      required this.birth});

  factory _$PlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerImplFromJson(json);

  @override
  final int id;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String name;
  @override
  final String nationality;
  @override
  final String photo;
  @override
  final int age;
  @override
  final String height;
  @override
  final String weight;
  @override
  final Birth birth;

  @override
  String toString() {
    return 'Player(id: $id, firstname: $firstname, lastname: $lastname, name: $name, nationality: $nationality, photo: $photo, age: $age, height: $height, weight: $weight, birth: $birth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.birth, birth) || other.birth == birth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstname, lastname, name,
      nationality, photo, age, height, weight, birth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      __$$PlayerImplCopyWithImpl<_$PlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerImplToJson(
      this,
    );
  }
}

abstract class _Player implements Player {
  factory _Player(
      {required final int id,
      required final String firstname,
      required final String lastname,
      required final String name,
      required final String nationality,
      required final String photo,
      required final int age,
      required final String height,
      required final String weight,
      required final Birth birth}) = _$PlayerImpl;

  factory _Player.fromJson(Map<String, dynamic> json) = _$PlayerImpl.fromJson;

  @override
  int get id;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get name;
  @override
  String get nationality;
  @override
  String get photo;
  @override
  int get age;
  @override
  String get height;
  @override
  String get weight;
  @override
  Birth get birth;
  @override
  @JsonKey(ignore: true)
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Birth _$BirthFromJson(Map<String, dynamic> json) {
  return _Birth.fromJson(json);
}

/// @nodoc
mixin _$Birth {
  String get country => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirthCopyWith<Birth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthCopyWith<$Res> {
  factory $BirthCopyWith(Birth value, $Res Function(Birth) then) =
      _$BirthCopyWithImpl<$Res, Birth>;
  @useResult
  $Res call({String country, String date, String place});
}

/// @nodoc
class _$BirthCopyWithImpl<$Res, $Val extends Birth>
    implements $BirthCopyWith<$Res> {
  _$BirthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? date = null,
    Object? place = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BirthImplCopyWith<$Res> implements $BirthCopyWith<$Res> {
  factory _$$BirthImplCopyWith(
          _$BirthImpl value, $Res Function(_$BirthImpl) then) =
      __$$BirthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String country, String date, String place});
}

/// @nodoc
class __$$BirthImplCopyWithImpl<$Res>
    extends _$BirthCopyWithImpl<$Res, _$BirthImpl>
    implements _$$BirthImplCopyWith<$Res> {
  __$$BirthImplCopyWithImpl(
      _$BirthImpl _value, $Res Function(_$BirthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? date = null,
    Object? place = null,
  }) {
    return _then(_$BirthImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirthImpl implements _Birth {
  _$BirthImpl({required this.country, required this.date, required this.place});

  factory _$BirthImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirthImplFromJson(json);

  @override
  final String country;
  @override
  final String date;
  @override
  final String place;

  @override
  String toString() {
    return 'Birth(country: $country, date: $date, place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirthImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.place, place) || other.place == place));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, country, date, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirthImplCopyWith<_$BirthImpl> get copyWith =>
      __$$BirthImplCopyWithImpl<_$BirthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirthImplToJson(
      this,
    );
  }
}

abstract class _Birth implements Birth {
  factory _Birth(
      {required final String country,
      required final String date,
      required final String place}) = _$BirthImpl;

  factory _Birth.fromJson(Map<String, dynamic> json) = _$BirthImpl.fromJson;

  @override
  String get country;
  @override
  String get date;
  @override
  String get place;
  @override
  @JsonKey(ignore: true)
  _$$BirthImplCopyWith<_$BirthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
