// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Equipment _$EquipmentFromJson(Map<String, dynamic> json) => Equipment(
      index: json['index'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      desc: (json['desc'] as List<dynamic>).map((e) => e as String).toList(),
      damage: Damage.fromJson(json['damage'] as Map<String, dynamic>),
      twoHandedDamage:
          Damage.fromJson(json['two_handed_damage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EquipmentToJson(Equipment instance) => <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'url': instance.url,
      'desc': instance.desc,
      'damage': instance.damage,
      'two_handed_damage': instance.twoHandedDamage,
    };
