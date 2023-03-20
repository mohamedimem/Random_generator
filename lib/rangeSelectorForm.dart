import 'package:flutter/material.dart';
import 'package:flutter101/RandomizerChangeNotifier.dart';
import 'package:flutter101/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef IntVAlueSetter = void Function(int value);

class RangeSelectorForm extends ConsumerWidget {
  const RangeSelectorForm({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RangeSelectorTextFormField(
                labelText: "Minmum",
                intValueSetter: (value) =>
                    ref.read(randomizerProvider.notifier).setMin(value),
              ),
              const SizedBox(
                height: 12,
              ),
              RangeSelectorTextFormField(
                labelText: "Maximum",
                intValueSetter: (value) =>
                    ref.read(randomizerProvider.notifier).setMax(value),
              ),
            ],
          ),
        ));
  }
}

class RangeSelectorTextFormField extends StatelessWidget {
  RangeSelectorTextFormField(
      {super.key, required this.labelText, required this.intValueSetter});

  final String labelText;
  final void Function(int value) intValueSetter;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return 'Must be integer';
        } else {
          return null;
        }
      },
      onSaved: (newValue) => {
        intValueSetter(int.parse(newValue ?? '')),
      },
    );
  }
}
