// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
      id: json['id'] as int,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      name: json['name'] as String,
      nationality: json['nationality'] as String,
      photo: json['photo'] as String,
      age: json['age'] as int,
      height: json['height'] as String,
      weight: json['weight'] as String,
      birth: Birth.fromJson(json['birth'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'name': instance.name,
      'nationality': instance.nationality,
      'photo': instance.photo,
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
      'birth': instance.birth,
    };

_$BirthImpl _$$BirthImplFromJson(Map<String, dynamic> json) => _$BirthImpl(
      country: json['country'] as String,
      date: json['date'] as String,
      place: json['place'] as String,
    );

Map<String, dynamic> _$$BirthImplToJson(_$BirthImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'date': instance.date,
      'place': instance.place,
    };
