import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';

import '../../main.dart';

typedef RadioProperties = ({
  int? value,
  MouseCursor? mouseCursor,
  bool? toggleable,
  Color? activeColor,
  Color? fillColor,
  Color? focusColor,
  Color? hoverColor,
  Color? overlayColor,
  double? splashRadius,
  MaterialTapTargetSize? materialTapTargetSize,
  VisualDensity? visualDensity,
  bool? autofocus,
});

class RadioPropertiesNotifier extends PropertiesNotifier<RadioProperties> {
  int selectedRadio = 0;

  @override
  Widget buildPreview(BuildContext context) {
    return Radio(
      value: fieldValues.value,
      groupValue: selectedRadio,
      onChanged: (v) {
        selectedRadio = v!;
        notifyListeners();
      },
      mouseCursor: fieldValues.mouseCursor,
      toggleable: fieldValues.toggleable ?? false,
      activeColor: fieldValues.activeColor,
      fillColor: MaterialStatePropertyAll<Color?>(
        fieldValues.fillColor,
      ),
      focusColor: fieldValues.focusColor,
      hoverColor: fieldValues.hoverColor,
      overlayColor: MaterialStatePropertyAll<Color?>(
        fieldValues.overlayColor,
      ),
      splashRadius: fieldValues.splashRadius,
      materialTapTargetSize: fieldValues.materialTapTargetSize,
      visualDensity: fieldValues.visualDensity,
      focusNode: FocusNode(),
      autofocus: fieldValues.autofocus ?? false,
    );
  }

  @override
  String get code => '''
   Radio(
      value: ${fieldValues.value},
      groupValue: $selectedRadio,
      onChanged: (v) {
        setState(() {
          selectedRadio = v!;
        });
      },
      mouseCursor: ${fieldValues.mouseCursor},
      toggleable: ${fieldValues.toggleable ?? false},
      activeColor: ${fieldValues.activeColor},
      fillColor: MaterialStatePropertyAll<Color?>(
        ${fieldValues.fillColor},
      ),
      focusColor: ${fieldValues.focusColor},
      hoverColor: ${fieldValues.hoverColor},
      overlayColor: MaterialStatePropertyAll<Color?>(
        ${fieldValues.overlayColor},
      ),
      splashRadius: ${fieldValues.splashRadius},
      materialTapTargetSize: ${fieldValues.materialTapTargetSize},
      visualDensity: ${fieldValues.visualDensity},
      focusNode: FocusNode(),
      autofocus: ${fieldValues.autofocus ?? false},
    );
  ''';

  @override
  RadioProperties get fieldValues => (
        value: getValueOf('value'),
        mouseCursor: getValueOf('mouseCursor'),
        toggleable: getValueOf('toggleable'),
        activeColor: getValueOf('activeColor'),
        fillColor: getValueOf('fillColor'),
        focusColor: getValueOf('focusColor'),
        hoverColor: getValueOf('hoverColor'),
        overlayColor: getValueOf('overlayColor'),
        splashRadius: getValueOf('splashRadius'),
        materialTapTargetSize: getValueOf('materialTapTargetSize'),
        visualDensity: getValueOf('visualDensity'),
        autofocus: getValueOf('autofocus'),
      );

  @override
  void registerFields() {
    intField(id: "value", title: "Value");
    listField(
      id: "mouseCursor",
      title: "Mouse Cursor",
      values: [MouseCursor.defer, MouseCursor.uncontrolled],
    );
    booleanField(id: "toggleable", title: "Toggleable");
    colorField(id: "activeColor", title: "Active Color");
    colorField(id: "fillColor", title: "Fill Color",initialValue: themeColorNotifier.value);
    colorField(id: "focusColor", title: "Focus Color");
    colorField(id: "hoverColor", title: "Hover Color");
    colorField(id: "overlayColor", title: "Overlay Color", initialValue: Colors.grey[400]);
    doubleField(id: "splashRadius", title: "Splash Radius");
    listField(
      id: "materialTapTargetSize",
      title: "materialTapTargetSize",
      values: MaterialTapTargetSize.values,
    );
    listField<VisualDensity>(
      id: "visualDensity",
      title: "visualDensity",
      values: [
        VisualDensity.comfortable,
        VisualDensity.compact,
        VisualDensity.standard,
      ],
    );
    booleanField(id: "autofocus", title: "autofocus");
  }
}
