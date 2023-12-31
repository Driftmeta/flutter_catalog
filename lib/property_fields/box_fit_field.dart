import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/box_fit_field.dart';

class BoxFitPropertyParams extends PropertyParams<BoxFit> {
  BoxFitPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class BoxFitPropertyField
    extends PropertyField<BoxFitPropertyParams, BoxFit> {
  BoxFitPropertyField(super.provider, super.params);

  @override
  Widget build(
    BoxFitPropertyParams params,
    Function(BoxFit) onChanged,
    BoxFit value,
  ) {
    return BoxFitField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension BoxFitFieldPropertyProvider on PropertyProvider {
  BoxFit? boxFitField({
    required String id,
    required String title,
    BoxFit? initialValue,
    bool isOptional = true,
    BoxFit defaultValue = BoxFit.fill,
  }) {
    final params = BoxFitPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return BoxFitPropertyField(
      this,
      params,
    )();
  }
}
