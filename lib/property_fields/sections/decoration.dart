import 'package:flutter/cupertino.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/sections/decoration.dart';

class DecorationPropertyParams extends PropertyParams<BoxDecoration> {
  DecorationPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class DecorationPropertySection
    extends PropertyField<DecorationPropertyParams, BoxDecoration> {
  DecorationPropertySection(super.provider, super.params);

  @override
  Widget build(
    DecorationPropertyParams params,
    Function(BoxDecoration) onChanged,
    BoxDecoration value,
  ) {
    return DecorationSection(onChanged: onChanged, value: value);
  }
}

extension DecorationPropertyProvider on PropertyProvider {
  BoxDecoration? decorationSection({
    required String id,
    required String title,
    BoxDecoration? initialValue,
    bool isOptional = true,
    BoxDecoration? defaultValue,
  }) {
    final params = DecorationPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue ?? const BoxDecoration(),
      initialValue: initialValue ?? const BoxDecoration(),
    );
    return DecorationPropertySection(
      this,
      params,
    )();
  }
}
