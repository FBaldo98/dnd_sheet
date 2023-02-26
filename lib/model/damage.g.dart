// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'damage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Damage _$DamageFromJson(Map<String, dynamic> json) => Damage(
      damageDice: json['damage_dice'] as String,
      damageType:
          DamageType.fromJson(json['damage_type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DamageToJson(Damage instance) => <String, dynamic>{
      'damage_dice': instance.damageDice,
      'damage_type': instance.damageType,
    };
