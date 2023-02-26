import 'dart:convert';

import 'package:dnd_sheet/model/equipment.dart';
import 'package:dnd_sheet/model/search_result.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'equipment_provider.g.dart';

@riverpod
Future<List<SearchResult>> searchEquipment(SearchEquipmentRef ref,
    {required String search}) async {
  final response = await http
      .get(Uri.parse('http://www.dnd5eapi.co/api/equipment/?name=$search'));

  final List<dynamic> json = jsonDecode(response.body)["results"];
  List<SearchResult> res = json
      .map(
        (e) => SearchResult.fromJson(e),
      )
      .toList();

  return res;
}
