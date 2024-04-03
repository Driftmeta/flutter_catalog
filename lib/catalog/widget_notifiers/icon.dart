import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/property_fields/text_direction_field.dart';

import '../../main.dart';

typedef IconProperties = ({
  IconData? icon,
  double? size,
  double? fill,
  double? weight,
  double? grade,
  double? opticalSize,
  Color? color,
  Color? shadowColor,
  double? scaleX,
  double? scaleY,
  double? shadowBlurRadius,
  double? shadowSpreadRadius,
  BlurStyle? blurStyle,
  String? semanticLabel,
  TextDirection? textDirection,
});

class IconPropertiesNotifier extends PropertiesNotifier<IconProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Icon(
      fieldValues.icon,
      size: fieldValues.size,
      fill: fieldValues.fill,
      weight: fieldValues.weight,
      grade: fieldValues.grade,
      opticalSize: fieldValues.opticalSize,
      color: fieldValues.color,
      shadows: [
        BoxShadow(
          color: fieldValues.shadowColor ?? const Color(0xFF000000),
          offset: Offset(fieldValues.scaleX ?? 0.0, fieldValues.scaleY ?? 0.0),
          blurRadius: fieldValues.shadowBlurRadius ?? 0.0,
          spreadRadius: fieldValues.shadowSpreadRadius ?? 0.0,
          blurStyle: fieldValues.blurStyle ?? BlurStyle.normal,
        )
      ],
      semanticLabel: fieldValues.semanticLabel,
      textDirection: fieldValues.textDirection,
    );
  }

  @override
  IconProperties get fieldValues => (
        icon: getValueOf('icon'),
        size: getValueOf('size'),
        fill: getValueOf('fill'),
        weight: getValueOf('weight'),
        grade: getValueOf('grade'),
        opticalSize: getValueOf('opticalSize'),
        color: getValueOf('color'),
        shadowColor: getValueOf('shadowColor'),
        scaleX: getValueOf('scaleX'),
        scaleY: getValueOf('scaleY'),
        shadowBlurRadius: getValueOf('shadowBlurRadius'),
        shadowSpreadRadius: getValueOf('shadowSpreadRadius'),
        blurStyle: getValueOf('blurStyle'),
        semanticLabel: getValueOf('semanticLabel'),
        textDirection: getValueOf('textDirection'),
      );

  @override
  void registerFields() {
    iconDataField(id: "icon", title: "Icon", initialValue: Icons.star);
    doubleField(id: "size", title: "Size");
    doubleField(id: "fill", title: "Fill");
    doubleField(id: "weight", title: "Weight");
    doubleField(id: "grade", title: "Grade");
    doubleField(id: "opticalSize", title: "Optical Size");
    colorField(id: "color", title: "Color",initialValue: themeColorNotifier.value);
    colorField(id: "shadowColor", title: "Shadow Color");
    doubleField(id: "scaleX", title: "ScaleX");
    doubleField(id: "scaleY", title: "ScaleY");
    doubleField(id: "shadowBlurRadius", title: "Shadow Blur Radius");
    doubleField(id: "shadowSpreadRadius", title: "Shadow Spread Radius");
    listField<BlurStyle>(
      id: "blurStyle",
      title: "Blur Style",
      values: BlurStyle.values,
    );
    stringField(id: "semanticLabel", title: "Semantic Label");
    textDirectionField(id: "textDirection", title: "Text Direction");
  }

  @override
  String get code => '''
Icon(
      ${fieldValues.icon},
      size: ${fieldValues.size},
      fill: ${fieldValues.fill},
      weight: ${fieldValues.weight},
      grade: ${fieldValues.grade},
      opticalSize: ${fieldValues.opticalSize},
      color: ${fieldValues.color},
      shadows: [
        BoxShadow(
          color: ${fieldValues.shadowColor} ?? const Color(0xFF000000),
          offset: Offset(${fieldValues.scaleX} ?? 0.0, ${fieldValues.scaleY} ?? 0.0),
          blurRadius: ${fieldValues.shadowBlurRadius} ?? 0.0,
          spreadRadius: ${fieldValues.shadowSpreadRadius} ?? 0.0,
          blurStyle: ${fieldValues.blurStyle} ?? BlurStyle.normal,
        )
      ],
      semanticLabel: ${fieldValues.semanticLabel},
      textDirection: ${fieldValues.textDirection},
    );
''';
}
