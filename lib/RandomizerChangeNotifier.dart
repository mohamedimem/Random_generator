import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'RandomizerChangeNotifier.freezed.dart';

@freezed
class RandomierState with _$RandomierState {
  const RandomierState._();
  const factory RandomierState(
      {@Default(0) min,
      @Default(0) max,
      int? generatedNumber}) = _RandomierState;
}

class RandomizerStateNotifier extends StateNotifier<RandomierState> {
  RandomizerStateNotifier() : super( RandomierState());
  final randomGenerator = Random();
  void generateRandomNumber() {
    state = state.copyWith(
        generatedNumber:
            state.min + randomGenerator.nextInt(state.max - state.min + 1));
  }

  void setMin(int value) {
    state = state.copyWith(min: value);
  }

  void setMax(int value) {
    state = state.copyWith(max: value);
  }
}
