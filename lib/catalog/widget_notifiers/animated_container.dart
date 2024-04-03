import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/main.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/border_radius_field.dart';
import 'package:flutter_quest/property_fields/box_border_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/curve_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/matrix4_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';

typedef AnimatedContainerProperties = ({
  Alignment? alignment,
  EdgeInsets? padding,
  Color? color,
  BoxBorder? border,
  BorderRadiusGeometry? borderRadius,
  Color? shadowColor,
  double? scaleX,
  double? scaleY,
  double? shadowSpreadRadius,
  BlurStyle? blurStyle,
  BlendMode? backgroundBlendMode,
  BoxShape? shape,
  Color? fgShadowColor,
  double? fgScaleX,
  double? fgScaleY,
  double? shadowBlurRadius,
  double? fgShadowBlurRadius,
  double? fgShadowSpreadRadius,
  BlurStyle? fgBlurStyle,
  BlurStyle? gBlurStyle,
  BlendMode? fgBackgroundBlendMode,
  BoxShape? fgShape,
  double? width,
  double? height,
  double? minWidth,
  double? maxWidth,
  double? minHeight,
  double? maxHeight,
  EdgeInsets? margin,
  Matrix4? transform,
  Alignment? transformAlignment,
  Clip? clipBehavior,
  Curve? curve,
});

class AnimatedContainerPropertiesNotifier
    extends PropertiesNotifier<AnimatedContainerProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return AnimatedContainer(
      alignment: fieldValues.alignment,
      padding: fieldValues.padding,
      color: fieldValues.color,
      decoration: BoxDecoration(
        border: fieldValues.border,
        borderRadius: fieldValues.borderRadius,
        boxShadow: [
          BoxShadow(
            color: fieldValues.shadowColor ?? const Color(0xFF000000),
            offset:
                Offset(fieldValues.scaleX ?? 0.0, fieldValues.scaleY ?? 0.0),
            blurRadius: fieldValues.shadowBlurRadius ?? 0.0,
            spreadRadius: fieldValues.shadowSpreadRadius ?? 0.0,
            blurStyle: fieldValues.blurStyle ?? BlurStyle.normal,
          )
        ],
        backgroundBlendMode: fieldValues.backgroundBlendMode,
        shape: fieldValues.shape ?? BoxShape.rectangle,
      ),
      foregroundDecoration: BoxDecoration(
        border: fieldValues.border,
        borderRadius: fieldValues.borderRadius,
        boxShadow: [
          BoxShadow(
            color: fieldValues.fgShadowColor ?? const Color(0xFF000000),
            offset: Offset(
                fieldValues.fgScaleX ?? 0.0, fieldValues.fgScaleY ?? 0.0),
            blurRadius: fieldValues.fgShadowBlurRadius ?? 0.0,
            spreadRadius: fieldValues.fgShadowSpreadRadius ?? 0.0,
            blurStyle: fieldValues.fgBlurStyle ?? BlurStyle.normal,
          )
        ],
        backgroundBlendMode: fieldValues.fgBackgroundBlendMode,
        shape: fieldValues.fgShape ?? BoxShape.rectangle,
      ),
      width: fieldValues.width,
      height: fieldValues.height,
      constraints: BoxConstraints(
        minWidth: fieldValues.minWidth ?? 0.0,
        maxWidth: fieldValues.maxWidth ?? 0.0,
        minHeight: fieldValues.minHeight ?? 0.0,
        maxHeight: fieldValues.maxHeight ?? 0.0,
      ),
      margin: fieldValues.margin,
      transform: fieldValues.transform,
      transformAlignment: fieldValues.transformAlignment,
      clipBehavior: fieldValues.clipBehavior ?? Clip.none,
      curve: fieldValues.curve ?? Curves.linear,
      duration: const Duration(seconds: 1),
      onEnd: () {},
      child: const Center(
        child: Text(
          'Animated Container',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  String get code => '''
   AnimatedContainer(
      alignment: ${fieldValues.alignment},
      padding: ${fieldValues.padding},
      color: ${fieldValues.color},
      decoration: BoxDecoration(
        border: ${fieldValues.border},
        borderRadius: ${fieldValues.borderRadius},
        boxShadow: [
          BoxShadow(
            color: ${fieldValues.shadowColor} ?? const Color(0xFF000000),
            offset:
                Offset(${fieldValues.scaleX} ?? 0.0, ${fieldValues.scaleY} ?? 0.0),
            blurRadius: ${fieldValues.shadowBlurRadius} ?? 0.0,
            spreadRadius: ${fieldValues.shadowSpreadRadius} ?? 0.0,
            blurStyle: ${fieldValues.blurStyle} ?? BlurStyle.normal,
          )
        ],
        backgroundBlendMode: ${fieldValues.backgroundBlendMode},
        shape: ${fieldValues.shape} ?? BoxShape.rectangle,
      ),
      foregroundDecoration: BoxDecoration(
        border: ${fieldValues.border},
        borderRadius: ${fieldValues.borderRadius},
        boxShadow: [
          BoxShadow(
            color: ${fieldValues.fgShadowColor} ?? const Color(0xFF000000),
            offset: Offset(
                ${fieldValues.fgScaleX} ?? 0.0, ${fieldValues.fgScaleY} ?? 0.0),
            blurRadius: ${fieldValues.fgShadowBlurRadius} ?? 0.0,
            spreadRadius: ${fieldValues.fgShadowSpreadRadius} ?? 0.0,
            blurStyle: ${fieldValues.fgBlurStyle} ?? BlurStyle.normal,
          )
        ],
        backgroundBlendMode: ${fieldValues.fgBackgroundBlendMode},
        shape: ${fieldValues.fgShape} ?? BoxShape.rectangle,
      ),
      width: ${fieldValues.width},
      height: ${fieldValues.height},
      constraints: BoxConstraints(
        minWidth: ${fieldValues.minWidth} ?? 0.0,
        maxWidth: ${fieldValues.maxWidth} ?? 0.0,
        minHeight: ${fieldValues.minHeight} ?? 0.0,
        maxHeight: ${fieldValues.maxHeight} ?? 0.0,
      ),
      margin: ${fieldValues.margin},
      transform: ${fieldValues.transform},
      transformAlignment: ${fieldValues.transformAlignment},
      clipBehavior: ${fieldValues.clipBehavior} ?? Clip.none,
      curve: ${fieldValues.curve} ?? Curves.linear,
      duration: const Duration(seconds: 1),
      onEnd: () {},
      child: const Center(
        child: Text(
          'Animated Container',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  ''';

  @override
  AnimatedContainerProperties get fieldValues => (
        alignment: getValueOf('alignment'),
        padding: getValueOf('padding'),
        color: getValueOf('color'),
        border: getValueOf('border'),
        borderRadius: getValueOf('borderRadius'),
        shadowColor: getValueOf('shadowColor'),
        scaleX: getValueOf('scaleX'),
        scaleY: getValueOf('scaleY'),
        shadowBlurRadius: getValueOf('shadowBlurRadius'),
        shadowSpreadRadius: getValueOf('shadowSpreadRadius'),
        blurStyle: getValueOf('blurStyle'),
        shape: getValueOf('shape'),
        backgroundBlendMode: getValueOf('backgroundBlendMode'),
        fgShadowColor: getValueOf('fgShadowColor'),
        fgScaleX: getValueOf('fgScaleX'),
        fgScaleY: getValueOf('fgScaleY'),
        fgShadowBlurRadius: getValueOf('fgShadowBlurRadius'),
        fgShadowSpreadRadius: getValueOf('fgShadowSpreadRadius'),
        fgBlurStyle: getValueOf('fgBlurStyle'),
        gBlurStyle: getValueOf('gBlurStyle'),
        fgBackgroundBlendMode: getValueOf('fgBackgroundBlendMode'),
        fgShape: getValueOf('fgShape'),
        width: getValueOf('width'),
        height: getValueOf('height'),
        minWidth: getValueOf('minWidth'),
        maxWidth: getValueOf('maxWidth'),
        minHeight: getValueOf('minHeight'),
        maxHeight: getValueOf('maxHeight'),
        margin: getValueOf('margin'),
        transform: getValueOf('transform'),
        transformAlignment: getValueOf('transformAlignment'),
        clipBehavior: getValueOf('clipBehavior'),
        curve: getValueOf('curve'),
      );

  @override
  void registerFields() {
    alignmentField(id: "alignment", title: "Alignment");
    edgeInsetsField(id: "padding", title: "Padding");
    colorField(id: "color", title: "Color", initialValue: themeColorNotifier.value);
    borderField(id: "border", title: "Border");
    borderRadiusField(id: "borderRadius", title: "Border Radius", initialValue: BorderRadius.circular(8.0));
    colorField(id: "shadowColor", title: "Shadow Color");
    doubleField(id: "scaleX", title: "ScaleX");
    doubleField(id: "scaleY", title: "ScaleY");
    doubleField(id: "shadowBlurRadius", title: "Shadow Blur Radius");
    doubleField(id: "shadowSpreadRadius", title: "Shadow Spread Radius");
    listField(id: "blurStyle", title: "Blur Style", values: BlurStyle.values);
    listField<BlendMode>(
        id: "backgroundBlendMode",
        title: "Background Blend Mode",
        values: BlendMode.values);
    listField<BoxShape>(id: "shape", title: "Shape", values: BoxShape.values);
    colorField(id: "shadowColor", title: "Foreground Shadow Color");
    doubleField(id: "scaleX", title: "Foreground ScaleX");
    doubleField(id: "scaleY", title: "Foreground ScaleY");
    doubleField(id: "shadowBlurRadius", title: "Foreground Shadow Blur Radius");
    doubleField(
        id: "shadowSpreadRadius", title: "Foreground Shadow Spread Radius");
    listField(
        id: "blurStyle",
        title: "Foreground Blur Style",
        values: BlurStyle.values);
    listField<BlendMode>(
        id: "backgroundBlendMode",
        title: "Foreground Background BlendMode",
        values: BlendMode.values);
    listField<BoxShape>(
        id: "shape", title: "Foreground Shape", values: BoxShape.values);
    widthField(initialValue: 150.0);
    heightField(initialValue: 150.0);
    doubleField(id: "minWidth", title: "Minimum Width");
    doubleField(id: "maxWidth", title: "Maximum Width");
    doubleField(id: "minHeight", title: "Minimum Height");

    doubleField(id: "maxHeight", title: "Maximum Height");

    edgeInsetsField(id: "margin", title: "Margin");

    matrix4Field(id: "transform", title: "Transform");
    alignmentField(id: "transformAlignment", title: "Transform Alignment");

    clipField(id: "clipBehavior", title: "Clip Behavior");

    curveField(id: "curve", title: "Curve");
  }
}
