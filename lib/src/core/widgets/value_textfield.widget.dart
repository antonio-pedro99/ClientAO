import 'package:client_ao/src/core/models/key_value_row.model.dart';
import 'package:client_ao/src/modules/home/states/collections.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ValueTextField extends HookConsumerWidget {
  const ValueTextField({
    super.key,
    required this.index,
    this.valueFieldHintText,
    this.onValueFieldChanged,
    this.rows,
    required this.row,
  });

  final int index;
  final String? valueFieldHintText;
  final Function(List<KeyValueRow>?)? onValueFieldChanged;
  final List<KeyValueRow>? rows;
  final KeyValueRow row;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final headerController = useTextEditingController(text: row.value);

    return TextField(
      controller: headerController,
      decoration: InputDecoration(hintText: valueFieldHintText ?? 'value'),
      onChanged: (key) {
        rows?[index] = row.copyWith(value: key);

        if (onValueFieldChanged != null) {
          onValueFieldChanged?.call(rows);
          return;
        }

        ref.read(collectionsNotifierProvider.notifier).updateRequest(headers: rows);
      },
    );
  }
}
