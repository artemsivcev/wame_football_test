// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_statistics_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayerStatisticsResponseModel _$PlayerStatisticsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PlayerStatisticsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerStatisticsResponseModel {
  Player get player => throw _privateConstructorUsedError;
  List<Statistics> get statistics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerStatisticsResponseModelCopyWith<PlayerStatisticsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStatisticsResponseModelCopyWith<$Res> {
  factory $PlayerStatisticsResponseModelCopyWith(
          PlayerStatisticsResponseModel value,
          $Res Function(PlayerStatisticsResponseModel) then) =
      _$PlayerStatisticsResponseModelCopyWithImpl<$Res,
          PlayerStatisticsResponseModel>;
  @useResult
  $Res call({Player player, List<Statistics> statistics});

  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class _$PlayerStatisticsResponseModelCopyWithImpl<$Res,
        $Val extends PlayerStatisticsResponseModel>
    implements $PlayerStatisticsResponseModelCopyWith<$Res> {
  _$PlayerStatisticsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? statistics = null,
  }) {
    return _then(_value.copyWith(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as List<Statistics>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get player {
    return $PlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerStatisticsResponseModelImplCopyWith<$Res>
    implements $PlayerStatisticsResponseModelCopyWith<$Res> {
  factory _$$PlayerStatisticsResponseModelImplCopyWith(
          _$PlayerStatisticsResponseModelImpl value,
          $Res Function(_$PlayerStatisticsResponseModelImpl) then) =
      __$$PlayerStatisticsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Player player, List<Statistics> statistics});

  @override
  $PlayerCopyWith<$Res> get player;
}

/// @nodoc
class __$$PlayerStatisticsResponseModelImplCopyWithImpl<$Res>
    extends _$PlayerStatisticsResponseModelCopyWithImpl<$Res,
        _$PlayerStatisticsResponseModelImpl>
    implements _$$PlayerStatisticsResponseModelImplCopyWith<$Res> {
  __$$PlayerStatisticsResponseModelImplCopyWithImpl(
      _$PlayerStatisticsResponseModelImpl _value,
      $Res Function(_$PlayerStatisticsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = null,
    Object? statistics = null,
  }) {
    return _then(_$PlayerStatisticsResponseModelImpl(
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      statistics: null == statistics
          ? _value._statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as List<Statistics>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerStatisticsResponseModelImpl
    implements _PlayerStatisticsResponseModel {
  _$PlayerStatisticsResponseModelImpl(
      {required this.player, required final List<Statistics> statistics})
      : _statistics = statistics;

  factory _$PlayerStatisticsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PlayerStatisticsResponseModelImplFromJson(json);

  @override
  final Player player;
  final List<Statistics> _statistics;
  @override
  List<Statistics> get statistics {
    if (_statistics is EqualUnmodifiableListView) return _statistics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statistics);
  }

  @override
  String toString() {
    return 'PlayerStatisticsResponseModel(player: $player, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStatisticsResponseModelImpl &&
            (identical(other.player, player) || other.player == player) &&
            const DeepCollectionEquality()
                .equals(other._statistics, _statistics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, player, const DeepCollectionEquality().hash(_statistics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStatisticsResponseModelImplCopyWith<
          _$PlayerStatisticsResponseModelImpl>
      get copyWith => __$$PlayerStatisticsResponseModelImplCopyWithImpl<
          _$PlayerStatisticsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerStatisticsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PlayerStatisticsResponseModel
    implements PlayerStatisticsResponseModel {
  factory _PlayerStatisticsResponseModel(
          {required final Player player,
          required final List<Statistics> statistics}) =
      _$PlayerStatisticsResponseModelImpl;

  factory _PlayerStatisticsResponseModel.fromJson(Map<String, dynamic> json) =
      _$PlayerStatisticsResponseModelImpl.fromJson;

  @override
  Player get player;
  @override
  List<Statistics> get statistics;
  @override
  @JsonKey(ignore: true)
  _$$PlayerStatisticsResponseModelImplCopyWith<
          _$PlayerStatisticsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
