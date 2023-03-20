import 'package:flutter/material.dart';
import 'package:flutter101/RandomizePage.dart';
import 'package:flutter101/rangeSelectorForm.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({super.key});

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Range'),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: Text('Next'),
          onPressed: () {
            if (formKey.currentState?.validate() == true) {
              formKey.currentState?.save();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => RandomizePage()));
            }
          }),
    );
  }
}
