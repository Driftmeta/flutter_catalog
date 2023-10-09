import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/widgets/fields/number_field.dart';

class NumberPropertyParams extends PropertyParams<num> {
  NumberPropertyParams({
    required super.id,
    super.initialValue,
    required super.title,
    required super.defaultValue,
    super.isOptional,
  });
}

class NumberPropertyField extends PropertyField<NumberPropertyParams, num> {
  NumberPropertyField(super.provider, super.params);

  @override
  Widget build(
    NumberPropertyParams params,
    Function(num) onChanged,
    num value,
  ) {
    return NumberField(
      onChanged: onChanged,
      value: value,
    );
  }
}

extension NumberFieldPropertyProvider on PropertyProvider {
  num? numberField({
    required String id,
    required String title,
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    final params = NumberPropertyParams(
      id: id,
      title: title,
      isOptional: isOptional,
      defaultValue: defaultValue,
      initialValue: initialValue,
    );
    return NumberPropertyField(
      this,
      params,
    )();
  }

  double? heightField({
    String id = "height",
    String title = "Height",
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    return numberField(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    )?.toDouble();
  }

  double? widthField({
    String id = "width",
    String title = "Width",
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    return numberField(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    )?.toDouble();
  }

  double? elevationField({
    String id = "elevation",
    String title = "Elevation",
    num? initialValue,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    return numberField(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    )?.toDouble();
  }

  double? borderRadiusField({
    String id = "borderRadius",
    String title = "BorderRadius",
    num initialValue=0,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    return numberField(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    )?.toDouble();
  }

  double? radiusField({
    String id = "radius",
    String title = "Radius",
    num initialValue=0,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    return numberField(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    )?.toDouble();
  }

  double? sizeField({
    String id = "size",
    String title = "Size",
    num initialValue=0,
    bool isOptional = true,
    num defaultValue = 0,
  }) {
    return numberField(
      id: id,
      title: title,
      isOptional: isOptional,
      initialValue: initialValue,
      defaultValue: defaultValue,
    )?.toDouble();
  }


}
