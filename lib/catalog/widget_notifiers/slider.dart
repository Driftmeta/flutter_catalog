import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

import '../../main.dart';

typedef SliderProperties = ({
  double? value,
  double? secondaryTrackValue,
  double? min,
  double? max,
  int? divisions,
  String? label,
  Color? activeColor,
  Color? inactiveColor,
  Color? secondaryActiveColor,
  Color? thumbColor,
  Color? overlayColor,
  MouseCursor? mouseCursor,
  bool? autofocus,
  SliderInteraction? allowedInteraction,
});

class SliderPropertiesNotifier extends PropertiesNotifier<SliderProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Slider(
      value: fieldValues.value ?? 0,
      secondaryTrackValue: fieldValues.secondaryTrackValue,
      onChanged: (val) {},
      onChangeStart: (val) {},
      onChangeEnd: (val) {},
      min: fieldValues.min ?? 0.0,
      max: fieldValues.max ?? 1.0,
      divisions: fieldValues.divisions,
      label: fieldValues.label,
      activeColor: fieldValues.activeColor,
      inactiveColor: fieldValues.inactiveColor,
      secondaryActiveColor: fieldValues.secondaryActiveColor,
      thumbColor: fieldValues.thumbColor,
      overlayColor: MaterialStatePropertyAll<Color?>(fieldValues.overlayColor),
      mouseCursor: fieldValues.mouseCursor,
      semanticFormatterCallback: (val) {
        return "String";
      },
      focusNode: FocusNode(),
      autofocus: fieldValues.autofocus ?? false,
      allowedInteraction: fieldValues.allowedInteraction,
    );
  }

  @override
  String get code => '''
   Slider(
      value: ${fieldValues.value},
      secondaryTrackValue: ${fieldValues.secondaryTrackValue},
      onChanged: (val) {},
      onChangeStart: (val) {},
      onChangeEnd: (val) {},
      min: ${fieldValues.min},
      max: ${fieldValues.max},
      divisions: ${fieldValues.divisions},
      label: ${fieldValues.label},
      activeColor: ${fieldValues.activeColor},
      inactiveColor: ${fieldValues.inactiveColor},
      secondaryActiveColor: ${fieldValues.secondaryActiveColor},
      thumbColor: ${fieldValues.thumbColor},
      overlayColor: ${fieldValues.overlayColor},
      mouseCursor: ${fieldValues.mouseCursor},
      semanticFormatterCallback: (val) {
        return "String";
      },
      focusNode: FocusNode(),
      autofocus: ${fieldValues.autofocus},
      allowedInteraction: ${fieldValues.allowedInteraction},
    );
  ''';

  @override
  SliderProperties get fieldValues => (
        value: getValueOf('value'),
        secondaryTrackValue: getValueOf('secondaryTrackValue'),
        min: getValueOf('min'),
        max: getValueOf('max'),
        divisions: getValueOf('divisions'),
        label: getValueOf('label'),
        activeColor: getValueOf('activeColor'),
        inactiveColor: getValueOf('inactiveColor'),
        secondaryActiveColor: getValueOf('secondaryActiveColor'),
        thumbColor: getValueOf('thumbColor'),
        overlayColor: getValueOf('overlayColor'),
        mouseCursor: getValueOf('mouseCursor'),
        autofocus: getValueOf('autofocus'),
        allowedInteraction: getValueOf('allowedInteraction'),
      );

  @override
  void registerFields() {
    doubleField(id: "value", title: "Value", initialValue: 0.3);
    doubleField(id: "secondaryTrackValue", title: "Secondary Track Value");
    doubleField(id: "min", title: "Minimum value");
    doubleField(id: "max", title: "Maximum value");
    intField(id: "divisions", title: "Divisions");
    stringField(id: "label", title: "Label");
    colorField(id: "activeColor", title: "Active Color",  initialValue: themeColorNotifier.value.withOpacity(0.3));
    colorField(id: "inactiveColor", title: "InactiveColor", initialValue: Colors.grey[300]);
    colorField(id: "secondaryActiveColor", title: "Secondary Active Color");
    colorField(id: "thumbColor", title: "Thumb Color", initialValue: themeColorNotifier.value);
    colorField(id: "overlayColor", title: "Overlay Color", initialValue: Colors.black.withOpacity(0.2));
    listField<MouseCursor>(
      id: "mouseCursor",
      title: "Mouse Cursor",
      values: [MouseCursor.defer, MouseCursor.uncontrolled],
    );
    booleanField(id: "autofocus", title: "autofocus");
    listField<SliderInteraction>(
      id: "allowedInteraction",
      title: "allowedInteraction",
      values: SliderInteraction.values,
    );
  }
}
