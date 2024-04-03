import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/main.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/border_radius_field.dart';
import 'package:flutter_quest/property_fields/box_border_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/matrix4_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';

typedef ContainerProperties = ({
  double? height,
  double? width,
  Alignment? alignment,
  EdgeInsets? margin,
  EdgeInsets? padding,
  Color? color,
  BorderRadius? borderRadius,
  BoxBorder? border,
  Color? foregroundColor,
  Matrix4? transform,
  Clip? clipBehavior,
  double? minHeight,
  double? maxHeight,
  double? minWidth,
  double? maxWidth,
  Alignment? transformAlignment,
});

class ContainerPropertiesNotifier
    extends PropertiesNotifier<ContainerProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    // TODO: Use field values instead
    return Container(
      height: getValueOf('height'),
      width: getValueOf('width'),
      alignment: getValueOf('alignment'),
      margin: getValueOf('margin'),
      padding: getValueOf('padding'),
      transform: getValueOf('transform'),
      decoration: BoxDecoration(
        color: getValueOf('color'),
        borderRadius: getValueOf('borderRadius'),
        border: getValueOf('border'),
      ),
      foregroundDecoration: BoxDecoration(
        color: getValueOf('foregroundColor'),
      ),
      clipBehavior: getValueOf('clipBehavior') ?? Clip.none,
      constraints: BoxConstraints(
        minWidth: getValueOf('minWidth') ?? 0.0,
        maxWidth: getValueOf('maxWidth') ?? double.infinity,
        minHeight: getValueOf('minHeight') ?? 0.0,
        maxHeight: getValueOf('maxHeight') ?? double.infinity,
      ),
      transformAlignment: getValueOf('transformAlignment'),
      child: Container(),
    );
  }

  // TODO: Use field values instead
  @override
  String get code => '''
    Container(
      height: ${getValueOf('height')},
      width: ${getValueOf('width')},
      alignment: ${getValueOf('alignment')},
      margin: ${getValueOf('margin')},
      padding: ${getValueOf('padding')},
      transform: ${getValueOf('transform')},
      decoration: BoxDecoration(
        color: ${getValueOf('color')},
        borderRadius: ${getValueOf('borderRadius')},
        border: ${getValueOf('border')},
      ),
      foregroundDecoration: BoxDecoration(
        color: ${getValueOf('foregroundColor')},
      ),
      clipBehavior: ${getValueOf('clipBehavior') ?? Clip.none},
      constraints: BoxConstraints(
        minWidth: ${getValueOf('minWidth') ?? 0.0},
        maxWidth: ${getValueOf('maxWidth') ?? double.infinity},
        minHeight: ${getValueOf('minHeight') ?? 0.0},
        maxHeight: ${getValueOf('maxHeight') ?? double.infinity},
      ),
      transformAlignment: ${getValueOf('transformAlignment')},
      child: Container(),
    );
  ''';

  @override
  ContainerProperties get fieldValues => (
        height: getValueOf('height'),
        width: getValueOf('width'),
        alignment: getValueOf('alignment'),
        margin: getValueOf('margin'),
        padding: getValueOf('padding'),
        color: getValueOf('color'),
        borderRadius: getValueOf('borderRadius'),
        border: getValueOf('border'),
        foregroundColor: getValueOf('foregroundColor'),
        transform: getValueOf('transform'),
        clipBehavior: getValueOf('clipBehavior'),
        minHeight: getValueOf('minHeight'),
        maxHeight: getValueOf('maxHeight'),
        minWidth: getValueOf('minWidth'),
        maxWidth: getValueOf('maxWidth'),
        transformAlignment: getValueOf('transformAlignment'),
      );

  @override
  void registerFields() {
    heightField(initialValue: 150.0);
    widthField(initialValue: 150.0);
    alignmentField(id: "alignment", title: "Alignment", initialValue: Alignment.center);
    edgeInsetsField(id: "margin", title: "Margin", initialValue: EdgeInsets.all(16.0));
    edgeInsetsField(id: "padding", title: "Padding", initialValue: EdgeInsets.all(20.0));
    colorField(id: "color", title: "Color", initialValue: themeColorNotifier.value);
    borderRadiusField(id: "BorderRadius", title: "BorderRadius", initialValue: BorderRadius.circular(8.0));
    borderField(id: "border", title: "Border", initialValue: Border.all(color: Colors.black, width: 1.0));
    colorField(id: "foregroundColor", title: "Foreground Color");
    matrix4Field(id: "transform", title: "Transform");
    clipField(id: "clipBehavior", title: "Clip Behavior");
    heightField(id: "minHeight", title: "Minimum Height");
    heightField(id: "maxHeight", title: "Maximum Height");
    widthField(id: "minWidth", title: "Minimum Width");
    widthField(id: "maxWidth", title: "Maximum Width");
    alignmentField(id: "transformAlignment", title: "Transform Alignment", initialValue: Alignment.center);
  }
}
