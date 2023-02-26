import 'package:dnd_sheet/providers/equipment_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EquipmentPage extends ConsumerWidget {
  const EquipmentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pino = ref.watch(searchEquipmentProvider(search: "Ring"));

    return Scaffold(
        appBar: AppBar(
          title: const Text("Equipment"),
        ),
        body: pino.when(
            data: (data) => ListView.builder(
                itemCount: data.length,
                itemBuilder: ((context, index) => ListTile(
                      title: Text(data[index].name),
                    ))),
            error: (error, stacktrace) => Text("$error: $stacktrace"),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                )));
  }
}
