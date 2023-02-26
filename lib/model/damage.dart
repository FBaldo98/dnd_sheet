import 'package:dnd_sheet/model/damage_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'damage.g.dart';

@JsonSerializable()
class Damage {
  @JsonKey(name: "damage_dice")
  final String damageDice;

  @JsonKey(name: "damage_type")
  final DamageType damageType;

  Damage({required this.damageDice, required this.damageType});

  factory Damage.fromJson(Map<String, dynamic> json) => _$DamageFromJson(json);
}
