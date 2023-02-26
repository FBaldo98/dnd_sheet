import 'package:dnd_sheet/model/damage.dart';
import 'package:json_annotation/json_annotation.dart';

part 'equipment.g.dart';

@JsonSerializable()
class Equipment {
  final String index;
  final String name;
  final String url;
  final List<String> desc;
  final Damage damage;

  @JsonKey(name: "two_handed_damage")
  final Damage twoHandedDamage;

  Equipment(
      {required this.index,
      required this.name,
      required this.url,
      required this.desc,
      required this.damage,
      required this.twoHandedDamage});

  factory Equipment.fromJson(Map<String, dynamic> json) =>
      _$EquipmentFromJson(json);
}
