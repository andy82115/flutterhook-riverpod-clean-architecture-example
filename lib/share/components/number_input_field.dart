import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///Why not [HookConsumerWidget]?
///This is a share widget and it should be stateless so just simply use [StatelessWidget]
///なぜ[HookConsumerWidget]ではない？
///共有ウィジェットであり、ステートレスであるべきなので、単純に[StatelessWidget]を使ってください。
class NumberInputField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final Function(int) onInputChange;

  const NumberInputField({
    required this.labelText,
    required this.onInputChange,
    required this.controller,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: false),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      onChanged: (inputValue) {
        onInputChange(int.parse(inputValue));
      },
      maxLines: 1,
      minLines: 1,
    );
  }
}