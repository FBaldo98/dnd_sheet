import 'package:json_annotation/json_annotation.dart';

part 'damage_type.g.dart';

@JsonSerializable()
class DamageType {
  final String index;
  final String name;
  final String url;

  DamageType({required this.index, required this.name, required this.url});

  factory DamageType.fromJson(Map<String, dynamic> json) =>
      _$DamageTypeFromJson(json);

  Map<String, dynamic> toJson() => _$DamageTypeToJson(this);
}
