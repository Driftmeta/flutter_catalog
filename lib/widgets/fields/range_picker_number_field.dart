import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';

class RangePickerNumberField extends PropertyWidget<num> {

  const RangePickerNumberField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      fallbackHeight: 60,
    );
  }
}

class NumberRangePreviewer extends StatelessWidget {
  const NumberRangePreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<num>(
      values: const [45, 79, 65, 1, 63],
      propertyBuilder: (onChanged, value) {
        return RangePickerNumberField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}