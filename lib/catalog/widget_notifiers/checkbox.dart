import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/main.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef CheckboxProperties = ({
  bool? value,
  bool? triState,
  MouseCursor? mouseCursor,
  Color? activeColor,
  Color? fillColor,
  Color? checkColor,
  Color? focusColor,
  Color? hoverColor,
  Color? overLayColor,
  double? splashRadius,
  MaterialTapTargetSize? materialTapTargetSize,
  double? visualDensityVertical,
  double? visualDensityHorizontal,
  bool? autoFocus,
  double? eccentricity,
  Color? borderColor,
  double? borderWidth,
  BorderStyle? borderStyle,
  double? strokeAlign,
  bool? isError,
  String? semanticLabel,
});

class CheckboxPropertiesNotifier
    extends PropertiesNotifier<CheckboxProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Checkbox(
      value: fieldValues.value,
      tristate: fieldValues.triState ?? true,
      mouseCursor: fieldValues.mouseCursor,
      activeColor: fieldValues.activeColor,
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return fieldValues.fillColor ?? Colors.transparent; // Default color
        },
      ),
      checkColor: fieldValues.checkColor,
      focusColor: fieldValues.focusColor,
      hoverColor: fieldValues.hoverColor,
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return fieldValues.overLayColor ??
              Colors.transparent; // Default color
        },
      ),
      splashRadius: fieldValues.splashRadius,
      materialTapTargetSize: fieldValues.materialTapTargetSize,
      visualDensity: VisualDensity(
        vertical: fieldValues.visualDensityVertical ?? 0.0,
        horizontal: fieldValues.visualDensityHorizontal ?? 0.0,
      ),
      focusNode: FocusNode(),
      autofocus: fieldValues.autoFocus ?? false,
      shape: CircleBorder(
        side: const BorderSide(),
        eccentricity: fieldValues.eccentricity ?? 0.0,
      ),
      side: BorderSide(
        color: fieldValues.borderColor ?? const Color(0xFF000000),
        width: fieldValues.borderWidth ?? 1.0,
        style: fieldValues.borderStyle ?? BorderStyle.solid,
        strokeAlign: fieldValues.strokeAlign ?? 0.0,
      ),
      isError: fieldValues.isError ?? false,
      semanticLabel: fieldValues.semanticLabel,
      onChanged: (val) {},
    );
  }

  @override
  String get code {
    return """
        Checkbox(
      value: ${fieldValues.value},
      tristate: ${fieldValues.triState} ?? true,
      mouseCursor: ${fieldValues.mouseCursor},
      activeColor: ${fieldValues.activeColor},
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return fieldValues.fillColor ?? Colors.transparent; // Default color
        },
      ),
      checkColor: ${fieldValues.checkColor},
      focusColor: ${fieldValues.focusColor},
      hoverColor: ${fieldValues.hoverColor},
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          return ${fieldValues.overLayColor} ??
              Colors.transparent; // Default color
        },
      ),
      splashRadius: ${fieldValues.splashRadius},
      materialTapTargetSize: ${fieldValues.materialTapTargetSize},
      visualDensity: VisualDensity(
        vertical: ${fieldValues.visualDensityVertical} ?? 0.0,
        horizontal: ${fieldValues.visualDensityHorizontal} ?? 0.0,
      ),
      focusNode: FocusNode(),
      autofocus: ${fieldValues.autoFocus} ?? false,
      shape: CircleBorder(
        side: const BorderSide(),
        eccentricity: ${fieldValues.eccentricity} ?? 0.0,
      ),
      side: BorderSide(
        color: ${fieldValues.borderColor} ?? const Color(0xFF000000),
        width: ${fieldValues.borderWidth} ?? 1.0,
        style: ${fieldValues.borderStyle} ?? BorderStyle.solid,
        strokeAlign: ${fieldValues.strokeAlign} ?? 0.0,
      ),
      isError: ${fieldValues.isError} ?? false,
      semanticLabel: ${fieldValues.semanticLabel},
      onChanged: (val) {},
    );

    """;
  }

  @override
  CheckboxProperties get fieldValues => (
        value: getValueOf("value"),
        triState: getValueOf("triState"),
        mouseCursor: getValueOf("mouseCursor"),
        activeColor: getValueOf("activeColor"),
        fillColor: getValueOf("fillColor"),
        checkColor: getValueOf("checkColor"),
        focusColor: getValueOf("focusColor"),
        hoverColor: getValueOf("hoverColor"),
        overLayColor: getValueOf("overLayColor"),
        splashRadius: getValueOf("splashRadius"),
        materialTapTargetSize: getValueOf("materialTapTargetSize"),
        visualDensityVertical: getValueOf("visualDensityVertical"),
        visualDensityHorizontal: getValueOf("visualDensityHorizontal"),
        autoFocus: getValueOf("autoFocus"),
        eccentricity: getValueOf("eccentricity"),
        borderColor: getValueOf("borderColor"),
        borderWidth: getValueOf("borderWidth"),
        borderStyle: getValueOf("borderStyle"),
        strokeAlign: getValueOf("strokeAlign"),
        isError: getValueOf("isError"),
        semanticLabel: getValueOf("semanticLabel"),
      );

  @override
  void registerFields() {
    booleanField(
      id: "value",
      title: "Value",
      initialValue: false,
    );
    booleanField(
      id: "triState",
      title: "TriState",
    );
    listField<MouseCursor>(
      id: "mouseCursor",
      title: "MouseCursor",
      values: [MouseCursor.defer, MouseCursor.uncontrolled],
    );
    colorField(id: 'fillColor', title: 'Fill Color',initialValue: Colors.grey[300]);
    colorField(id: 'checkColor', title: 'Check Color',initialValue: themeColorNotifier.value);
    colorField(id: 'focusColor', title: 'Color Field');
    colorField(id: 'hoverColor', title: 'Hover Color');
    colorField(id: 'overLayColor', title: 'Overlay Color',initialValue: themeColorNotifier.value.withOpacity(0.3));
    doubleField(id: 'splashRadius', title: 'Splash Radius');
    listField<MaterialTapTargetSize>(
      id: "materialTapTargetSize",
      title: "Material Tap Target Size",
      values: MaterialTapTargetSize.values,
    );
    doubleField(id: 'visualDensityVertical');
    doubleField(id: 'visualDensityHorizontal');
    booleanField(id: 'autoFocus', title: 'Auto Focus');
    doubleField(id: 'eccentricity');
    colorField(id: 'borderColor', title: 'Border Color');
    doubleField(id: 'borderWidth');
    listField<BorderStyle>(
        id: "borderStyle", title: "Border Style", values: BorderStyle.values);
    doubleField(id: 'strokeAlign');
    booleanField(id: 'isError', title: 'Is Error');
    stringField(id: 'semanticLabel', title: 'Semantic Label', initialValue: "Checkbox");
  }
}
