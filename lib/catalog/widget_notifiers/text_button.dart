import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';

typedef TextButtonProperties = ({
  Color? backgroundColor,
  Color? foregroundColor,
  Color? overlayColor,
  Color? shadowColor,
  Color? surfaceTintColor,
  double? elevation,
  EdgeInsets? padding,
  double? minHeight,
  double? minWidth,
  double? maxHeight,
  double? maxWidth,
  double? fixedHeight,
  double? fixedWidth,
  Color? iconColor,
  double? iconSize,
  Color? borderColor,
  double? borderWidth,
  BorderStyle? borderStyle,
  double? strokeAlign,
  MouseCursor? mouseCursor,
  VisualDensity? visualDensity,
  MaterialTapTargetSize? tapTargetSize,
  int? animationSeconds,
  int? animationMinutes,
  bool? enableFeedback,
  Alignment? alignment,
  TextStyle? textStyle,
  bool? autofocus,
  Clip? clipBehavior,
  String? text,
  bool? isSemanticButton,
});

class TextButtonPropertiesNotifier
    extends PropertiesNotifier<TextButtonProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return TextButton(
      onPressed: () {},
      onLongPress: () {},
      onHover: (v) {},
      onFocusChange: (v) {},
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color?>(
          fieldValues.backgroundColor,
        ),
        foregroundColor: MaterialStatePropertyAll<Color?>(
          fieldValues.foregroundColor,
        ),
        overlayColor: MaterialStatePropertyAll<Color?>(
          fieldValues.overlayColor,
        ),
        shadowColor: MaterialStatePropertyAll<Color?>(
          fieldValues.shadowColor,
        ),
        surfaceTintColor: MaterialStatePropertyAll<Color?>(
          fieldValues.surfaceTintColor,
        ),
        elevation: MaterialStatePropertyAll<double?>(
          fieldValues.elevation,
        ),
        padding: MaterialStatePropertyAll<EdgeInsets?>(
          fieldValues.padding,
        ),
        minimumSize: MaterialStatePropertyAll<Size>(
          Size(fieldValues.minWidth ?? 0.0, fieldValues.minHeight ?? 0.0),
        ),
        fixedSize: MaterialStatePropertyAll<Size>(
          Size(
            fieldValues.fixedWidth ?? double.infinity,
            fieldValues.fixedHeight ?? double.infinity,
          ),
        ),
        maximumSize: MaterialStatePropertyAll<Size>(
          Size(
            fieldValues.maxWidth ?? double.infinity,
            fieldValues.maxHeight ?? double.infinity,
          ),
        ),
        iconColor: MaterialStatePropertyAll<Color?>(
          fieldValues.iconColor,
        ),
        iconSize: MaterialStatePropertyAll<double?>(
          fieldValues.iconSize,
        ),
        side: MaterialStatePropertyAll<BorderSide?>(
          BorderSide(
            color: fieldValues.borderColor ?? Colors.black,
            width: fieldValues.borderWidth ?? 1.0,
            style: fieldValues.borderStyle ?? BorderStyle.solid,
            strokeAlign:
                fieldValues.strokeAlign ?? BorderSide.strokeAlignCenter,
          ),
        ),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide.none,
          ),
        ),
        mouseCursor: MaterialStatePropertyAll<MouseCursor?>(
          fieldValues.mouseCursor,
        ),
        visualDensity: fieldValues.visualDensity,
        tapTargetSize: fieldValues.tapTargetSize,
        animationDuration: Duration(
          seconds: fieldValues.animationSeconds ?? 0,
          minutes: fieldValues.animationMinutes ?? 0,
        ),
        enableFeedback: fieldValues.enableFeedback,
        alignment: fieldValues.alignment,
        splashFactory: NoSplash.splashFactory,
        textStyle: MaterialStatePropertyAll<TextStyle?>(
          fieldValues.textStyle,
        ),
      ),
      focusNode: FocusNode(),
      autofocus: fieldValues.autofocus ?? false,
      clipBehavior: fieldValues.clipBehavior ?? Clip.none,
      isSemanticButton: fieldValues.isSemanticButton ?? true,
      child: Text(
        fieldValues.text ?? '',
      ),
    );
  }

  @override
  String get code => '''
   TextButton(
      onPressed: () {},
      onLongPress: () {},
      onHover: (v) {},
      onFocusChange: (v) {},
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll<Color?>(
          ${fieldValues.backgroundColor},
        ),
        foregroundColor: MaterialStatePropertyAll<Color?>(
          ${fieldValues.foregroundColor},
        ),
        overlayColor: MaterialStatePropertyAll<Color?>(
          ${fieldValues.overlayColor},
        ),
        shadowColor: MaterialStatePropertyAll<Color?>(
          ${fieldValues.shadowColor},
        ),
        surfaceTintColor: MaterialStatePropertyAll<Color?>(
          ${fieldValues.surfaceTintColor},
        ),
        elevation: MaterialStatePropertyAll<double?>(
          ${fieldValues.elevation},
        ),
        padding: MaterialStatePropertyAll<EdgeInsets?>(
          ${fieldValues.padding},
        ),
        minimumSize: MaterialStatePropertyAll<Size>(
          Size(${fieldValues.minWidth ?? 0.0}, ${fieldValues.minHeight ?? 0.0}),
        ),
        fixedSize: MaterialStatePropertyAll<Size>(
          Size(
            ${fieldValues.fixedWidth ?? double.infinity},
            ${fieldValues.fixedHeight ?? double.infinity},
          ),
        ),
        maximumSize: MaterialStatePropertyAll<Size>(
          Size(
            ${fieldValues.maxWidth ?? double.infinity},
            ${fieldValues.maxHeight ?? double.infinity},
          ),
        ),
        iconColor: MaterialStatePropertyAll<Color?>(
          ${fieldValues.iconColor},
        ),
        iconSize: MaterialStatePropertyAll<double?>(
          ${fieldValues.iconSize},
        ),
        side: MaterialStatePropertyAll<BorderSide?>(
          BorderSide(
            color: ${fieldValues.borderColor ?? Colors.black},
            width: ${fieldValues.borderWidth ?? 1.0},
            style: ${fieldValues.borderStyle ?? BorderStyle.solid},
            strokeAlign: ${fieldValues.strokeAlign ?? BorderSide.strokeAlignCenter},
          ),
        ),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide.none,
          ),
        ),
        mouseCursor: MaterialStatePropertyAll<MouseCursor?>(
          ${fieldValues.mouseCursor},
        ),
        visualDensity: ${fieldValues.visualDensity},
        tapTargetSize: ${fieldValues.tapTargetSize},
        animationDuration: Duration(
          seconds: ${fieldValues.animationSeconds ?? 0},
          minutes: ${fieldValues.animationMinutes ?? 0},
        ),
        enableFeedback: ${fieldValues.enableFeedback},
        alignment: ${fieldValues.alignment},
        splashFactory: NoSplash.splashFactory,
        textStyle: MaterialStatePropertyAll<TextStyle?>(
          ${fieldValues.textStyle},
        ),
      ),
      focusNode: FocusNode(),
      autofocus: ${fieldValues.autofocus ?? false},
      clipBehavior: ${fieldValues.clipBehavior ?? Clip.none},
      isSemanticButton: ${fieldValues.isSemanticButton ?? true},
      child: Text(
        ${fieldValues.text ?? ''},
      ),
    );
  ''';

  @override
  TextButtonProperties get fieldValues => (
        backgroundColor: getValueOf('backgroundColor'),
        foregroundColor: getValueOf('foregroundColor'),
        overlayColor: getValueOf('overlayColor'),
        shadowColor: getValueOf('shadowColor'),
        surfaceTintColor: getValueOf('surfaceTintColor'),
        elevation: getValueOf('elevation'),
        padding: getValueOf('padding'),
        minHeight: getValueOf('minHeight'),
        minWidth: getValueOf('minWidth'),
        maxHeight: getValueOf('maxHeight'),
        maxWidth: getValueOf('maxWidth'),
        fixedHeight: getValueOf('fixedHeight'),
        fixedWidth: getValueOf('fixedWidth'),
        iconColor: getValueOf('iconColor'),
        iconSize: getValueOf('iconSize'),
        borderColor: getValueOf('borderColor'),
        borderWidth: getValueOf('borderWidth'),
        borderStyle: getValueOf('borderStyle'),
        strokeAlign: getValueOf('strokeAlign'),
        mouseCursor: getValueOf('mouseCursor'),
        visualDensity: getValueOf('visualDensity'),
        tapTargetSize: getValueOf('tapTargetSize'),
        animationSeconds: getValueOf('animationSeconds'),
        animationMinutes: getValueOf('animationMinutes'),
        enableFeedback: getValueOf('enableFeedback'),
        alignment: getValueOf('alignment'),
        textStyle: getValueOf('textStyle'),
        autofocus: getValueOf('autofocus'),
        clipBehavior: getValueOf('clipBehavior'),
        text: getValueOf('text'),
        isSemanticButton: getValueOf('isSemanticButton'),
      );

  @override
  void registerFields() {
    colorField(id: "backgroundColor", title: "Background Color");
    colorField(id: "foregroundColor", title: "Foreground Color");
    colorField(id: "overlayColor", title: "Overlay Color");
    colorField(id: "shadowColor", title: "Shadow Color");
    colorField(id: "surfaceTintColor", title: "Surface Tint Color");
    doubleField(id: "elevation", title: "Elevation");
    edgeInsetsField(id: "padding", title: "Padding");
    doubleField(id: "minHeight", title: "Minimum Height");
    doubleField(id: "minWidth", title: "Minimum Width");
    doubleField(id: "maxHeight", title: "Maximum Height");
    doubleField(id: "maxWidth", title: "Maximum Width");
    doubleField(id: "fixedHeight", title: "Fixed Height" , initialValue: 50);
    doubleField(id: "fixedWidth", title: "Fixed Width");
    colorField(id: "iconColor", title: "Icon Color");
    doubleField(id: "iconSize", title: "Icon Size");
    colorField(id: "borderColor", title: "Border Color");
    doubleField(id: "borderWidth", title: "Border Width");
    listField(
      id: "borderStyle",
      title: "Border Style",
      values: BorderStyle.values,
      initialValue: BorderStyle.none,
    );
    listField(
      id: "strokeAlign",
      title: "Stroke Align",
      values: [
        BorderSide.strokeAlignCenter,
        BorderSide.strokeAlignInside,
        BorderSide.strokeAlignOutside,
      ],
    );
    listField(
      id: "mouseCursor",
      title: "Mouse Cursor",
      values: [MouseCursor.uncontrolled, MouseCursor.defer],
    );
    listField<VisualDensity>(
      id: "visualDensity",
      title: "VisualDensity",
      values: [
        VisualDensity.adaptivePlatformDensity,
        VisualDensity.compact,
        VisualDensity.comfortable,
      ],
    );
    listField(
      id: "materialTapTargetSize",
      title: "Material Tap TargetSize",
      values: MaterialTapTargetSize.values,
    );
    intField(id: "animationSeconds", title: "Animation Seconds");
    intField(id: "animationMinutes", title: "Animation Minutes");
    booleanField(id: "enableFeedback", title: "Enable Feedback");
    alignmentField(id: "alignment", title: "Alignment");
    textStyleField(id: "textStyle", title: "Text Style");
    booleanField(id: "autofocus", title: "Autofocus");
    clipField(id: "clipBehavior", title: "Clip Behavior");
    stringField(id: "text", title: "Text of Child", initialValue: "Click here");
    booleanField(id: "isSemanticButton", title: "isSemantic Button");
  }
}
