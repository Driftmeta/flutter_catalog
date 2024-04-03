import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/alignment_field.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';

import '../../main.dart';

typedef IconButtonProperties = ({
  double? iconSize,
  VisualDensity? visualDensity,
  IconData? icon,
  EdgeInsets? padding,
  Alignment? alignment,
  double? splashRadius,
  Color? color,
  Color? focusColor,
  Color? hoverColor,
  Color? highlightColor,
  Color? splashColor,
  Color? disabledColor,
  MouseCursor? mouseCursor,
  String? tooltip,
  bool? enableFeedback,
  double? minWidth,
  double? maxWidth,
  double? minHeight,
  double? maxHeight,
  Color? backgroundColor,
  Color? foregroundColor,
  Color? overlayColor,
  Color? shadowColor,
  Color? surfaceTintColor,
  double? elevation,
  EdgeInsets? stylePadding,
  double? styleMinHeight,
  double? styleMinWidth,
  double? styleMaxHeight,
  double? styleMaxWidth,
  double? styleFixedHeight,
  double? styleFixedWidth,
  Color? iconColor,
  double? styleIconSize,
  Color? borderColor,
  double? borderWidth,
  BorderStyle? borderStyle,
  double? strokeAlign,
  MouseCursor? styleMouseCursor,
  VisualDensity? styleVisualDensity,
  MaterialTapTargetSize? tapTargetSize,
  int? animationSeconds,
  int? animationMinutes,
  bool? styleEnableFeedback,
  Alignment? styleAlignment,
  TextStyle? textStyle,
  bool? isSelected,
  IconData? selectedIcon,
});

class IconButtonPropertiesNotifier
    extends PropertiesNotifier<IconButtonProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return IconButton(
      iconSize: fieldValues.iconSize,
      visualDensity: fieldValues.visualDensity,
      padding: fieldValues.padding,
      alignment: fieldValues.alignment,
      splashRadius: fieldValues.splashRadius,
      color: fieldValues.color,
      focusColor: fieldValues.focusColor,
      hoverColor: fieldValues.hoverColor,
      highlightColor: fieldValues.highlightColor,
      splashColor: fieldValues.splashColor,
      disabledColor: fieldValues.disabledColor,
      onPressed: () {},
      mouseCursor: fieldValues.mouseCursor,
      focusNode: FocusNode(),
      tooltip: fieldValues.tooltip,
      enableFeedback: fieldValues.enableFeedback,
      constraints: BoxConstraints(
        minWidth: fieldValues.minWidth ?? 0.0,
        maxWidth: fieldValues.maxWidth ?? double.infinity,
        minHeight: fieldValues.minHeight ?? 0.0,
        maxHeight: fieldValues.maxHeight ?? double.infinity,
      ),
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
        surfaceTintColor:
            MaterialStatePropertyAll<Color?>(fieldValues.surfaceTintColor),
        elevation: MaterialStatePropertyAll<double?>(
          fieldValues.elevation,
        ),
        padding: MaterialStatePropertyAll<EdgeInsets?>(
          fieldValues.stylePadding,
        ),
        minimumSize: MaterialStatePropertyAll<Size>(
          Size(fieldValues.styleMinWidth ?? 0.0,
              fieldValues.styleMinHeight ?? 0.0),
        ),
        fixedSize: MaterialStatePropertyAll<Size>(
          Size(fieldValues.styleFixedWidth ?? double.infinity,
              fieldValues.styleFixedHeight ?? double.infinity),
        ),
        maximumSize: MaterialStatePropertyAll<Size>(
          Size(fieldValues.styleMaxWidth ?? double.infinity,
              fieldValues.styleMaxHeight ?? double.infinity),
        ),
        iconColor: MaterialStatePropertyAll<Color?>(
          fieldValues.iconColor,
        ),
        iconSize: MaterialStatePropertyAll<double?>(
          fieldValues.styleIconSize,
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
          fieldValues.styleMouseCursor,
        ),
        visualDensity: fieldValues.styleVisualDensity,
        tapTargetSize: fieldValues.tapTargetSize,
        animationDuration: Duration(
          seconds: fieldValues.animationSeconds ?? 0,
          minutes: fieldValues.animationMinutes ?? 0,
        ),
        enableFeedback: fieldValues.styleEnableFeedback,
        alignment: fieldValues.styleAlignment,
        splashFactory: NoSplash.splashFactory,
        textStyle: MaterialStatePropertyAll<TextStyle?>(
          fieldValues.textStyle,
        ),
      ),
      isSelected: fieldValues.isSelected,
      selectedIcon: Icon(fieldValues.selectedIcon),
      icon: Icon(fieldValues.icon),
    );
  }

  @override
  String get code => '''
IconButton(
  iconSize: ${fieldValues.iconSize},
  visualDensity: ${fieldValues.visualDensity},
  padding: ${fieldValues.padding},
  alignment: ${fieldValues.alignment},
  splashRadius: ${fieldValues.splashRadius},
  color: ${fieldValues.color},
  focusColor: ${fieldValues.focusColor},
  hoverColor: ${fieldValues.hoverColor},
  highlightColor: ${fieldValues.highlightColor},
  splashColor: ${fieldValues.splashColor},
  disabledColor: ${fieldValues.disabledColor},
  onPressed: () {},
  mouseCursor: ${fieldValues.mouseCursor},
  focusNode: FocusNode(),
  tooltip: ${fieldValues.tooltip},
  enableFeedback: ${fieldValues.enableFeedback},
  constraints: BoxConstraints(
    minWidth: ${fieldValues.minWidth} ?? 0.0,
    maxWidth: ${fieldValues.maxWidth} ?? double.infinity,
    minHeight: ${fieldValues.minHeight} ?? 0.0,
    maxHeight: ${fieldValues.maxHeight} ?? double.infinity,
  ),
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
    surfaceTintColor: MaterialStatePropertyAll<Color?>(${fieldValues.surfaceTintColor}),
    elevation: MaterialStatePropertyAll<double?>(
      ${fieldValues.elevation},
    ),
    padding: MaterialStatePropertyAll<EdgeInsets?>(
      ${fieldValues.stylePadding},
    ),
    minimumSize: MaterialStatePropertyAll<Size>(
      Size(${fieldValues.styleMinWidth} ?? 0.0, ${fieldValues.styleMinHeight} ?? 0.0),
    ),
    fixedSize: MaterialStatePropertyAll<Size>(
      Size(${fieldValues.styleFixedWidth} ?? double.infinity, ${fieldValues.styleFixedHeight} ?? double.infinity),
    ),
    maximumSize: MaterialStatePropertyAll<Size>(
      Size(${fieldValues.styleMaxWidth} ?? double.infinity, ${fieldValues.styleMaxHeight} ?? double.infinity),
    ),
    iconColor: MaterialStatePropertyAll<Color?>(
      ${fieldValues.iconColor},
    ),
    iconSize: MaterialStatePropertyAll<double?>(
      ${fieldValues.styleIconSize},
    ),
    side: MaterialStatePropertyAll<BorderSide?>(
      BorderSide(
        color: ${fieldValues.borderColor} ?? Colors.black,
        width: ${fieldValues.borderWidth} ?? 1.0,
        style: ${fieldValues.borderStyle} ?? BorderStyle.solid,
        strokeAlign: ${fieldValues.strokeAlign} ?? BorderSide.strokeAlignCenter,
      ),
    ),
    shape: const MaterialStatePropertyAll(
      RoundedRectangleBorder(
        side: BorderSide.none,
      ),
    ),
    mouseCursor: MaterialStatePropertyAll<MouseCursor?>(
      ${fieldValues.styleMouseCursor},
    ),
    visualDensity: ${fieldValues.styleVisualDensity},
    tapTargetSize: ${fieldValues.tapTargetSize},
    animationDuration: Duration(
      seconds: ${fieldValues.animationSeconds} ?? 0,
      minutes: ${fieldValues.animationMinutes} ?? 0,
    ),
    enableFeedback: ${fieldValues.styleEnableFeedback},
    alignment: ${fieldValues.styleAlignment},
    splashFactory: NoSplash.splashFactory,
    textStyle: MaterialStatePropertyAll<TextStyle?>(
      ${fieldValues.textStyle},
    ),
  ),
  isSelected: ${fieldValues.isSelected},
  selectedIcon: Icon(${fieldValues.selectedIcon}),
  icon: Icon(${fieldValues.icon}),
)
''';

  @override
  IconButtonProperties get fieldValues => (
        iconSize: getValueOf('iconSize'),
        visualDensity: getValueOf('visualDensity'),
        icon: getValueOf('icon'),
        padding: getValueOf('padding'),
        alignment: getValueOf('alignment'),
        splashRadius: getValueOf('splashRadius'),
        color: getValueOf('color'),
        focusColor: getValueOf('focusColor'),
        hoverColor: getValueOf('hoverColor'),
        highlightColor: getValueOf('highlightColor'),
        splashColor: getValueOf('splashColor'),
        disabledColor: getValueOf('disabledColor'),
        mouseCursor: getValueOf('mouseCursor'),
        tooltip: getValueOf('tooltip'),
        enableFeedback: getValueOf('enableFeedback'),
        minWidth: getValueOf('minWidth'),
        maxWidth: getValueOf('maxWidth'),
        minHeight: getValueOf('minHeight'),
        maxHeight: getValueOf('maxHeight'),
        backgroundColor: getValueOf('backgroundColor'),
        foregroundColor: getValueOf('foregroundColor'),
        overlayColor: getValueOf('overlayColor'),
        shadowColor: getValueOf('shadowColor'),
        surfaceTintColor: getValueOf('surfaceTintColor'),
        elevation: getValueOf('elevation'),
        stylePadding: getValueOf('stylePadding'),
        styleMinHeight: getValueOf('styleMinHeight'),
        styleMinWidth: getValueOf('styleMinWidth'),
        styleMaxHeight: getValueOf('styleMaxHeight'),
        styleMaxWidth: getValueOf('styleMaxWidth'),
        styleFixedHeight: getValueOf('styleFixedHeight'),
        styleFixedWidth: getValueOf('styleFixedWidth'),
        iconColor: getValueOf('iconColor'),
        styleIconSize: getValueOf('styleIconSize'),
        borderColor: getValueOf('borderColor'),
        borderWidth: getValueOf('borderWidth'),
        borderStyle: getValueOf('borderStyle'),
        strokeAlign: getValueOf('strokeAlign'),
        styleMouseCursor: getValueOf('styleMouseCursor'),
        styleVisualDensity: getValueOf('styleVisualDensity'),
        tapTargetSize: getValueOf('tapTargetSize'),
        animationSeconds: getValueOf('animationSeconds'),
        animationMinutes: getValueOf('animationMinutes'),
        styleEnableFeedback: getValueOf('styleEnableFeedback'),
        styleAlignment: getValueOf('styleAlignment'),
        textStyle: getValueOf('textStyle'),
        isSelected: getValueOf('isSelected'),
        selectedIcon: getValueOf('selectedIcon'),
      );

  @override
  void registerFields() {
    doubleField(id: "iconSize", title: "Icon Size");
    listField<VisualDensity>(
        id: "visualDensity",
        title: "visualDensity",
        values: [
          VisualDensity.comfortable,
          VisualDensity.compact,
          VisualDensity.adaptivePlatformDensity
        ]);
    iconDataField(id: "icon", title: "Icon", initialValue: Icons.add);
    edgeInsetsField(id: "padding", title: "Padding");
    alignmentField(id: "alignment", title: "Alignment");
    doubleField(id: "splashRadius", title: "Splash Radius");
    colorField(id: "color", title: "Color",initialValue: themeColorNotifier.value);
    colorField(id: "focusColor", title: "Focus Color");
    colorField(id: "hoverColor", title: "Hover Color");
    colorField(id: "highlightColor", title: "Highlight Color");
    colorField(id: "splashColor", title: "Splash Color");
    colorField(id: "disabledColor", title: "Disabled Color");
    listField<MouseCursor>(
        id: "mouseCursor",
        title: "MouseCursor",
        values: [MouseCursor.defer, MouseCursor.uncontrolled]);
    stringField(id: "tooltip", title: "Tooltip", initialValue: 'click here');
    booleanField(id: "enableFeedback", title: "Enable Feedback");
    doubleField(id: "minWidth", title: "Minimum Width");
    doubleField(id: "maxWidth", title: "Maximum Width");
    doubleField(id: "minHeight", title: "Minimum Height");
    doubleField(id: "maxHeight", title: "Maximum Height");
    colorField(id: "backgroundColor", title: "Background Color");
    colorField(id: "foregroundColor", title: "Foreground Color");
    colorField(id: "overlayColor", title: "Overlay Color", initialValue: Colors.black12);
    colorField(id: "shadowColor", title: "Shadow Color");
    colorField(id: "surfaceTintColor", title: "Surface Tint Color");
    doubleField(id: "elevation", title: "Elevation");
    edgeInsetsField(id: "padding", title: "Padding");
    doubleField(id: "minHeight", title: "Minimum Height");
    doubleField(id: "minWidth", title: "Minimum Width");
    doubleField(id: "maxHeight", title: "Maximum Height");
    doubleField(id: "maxWidth", title: "Maximum Width");
    doubleField(id: "fixedHeight", title: "Fixed Height");
    doubleField(id: "fixedWidth", title: "Fixed Width");
    colorField(id: "iconColor", title: "Icon Color",initialValue: themeColorNotifier.value);
    doubleField(id: "iconSize", title: "Icon Size");
    colorField(id: "borderColor", title: "Border Color" ,initialValue: themeColorNotifier.value);
    doubleField(id: "borderWidth", title: "Border Width");
    listField(
        id: "borderStyle", title: "Border Style", values: BorderStyle.values);
    listField(id: "strokeAlign", title: "Stroke Align", values: [
      BorderSide.strokeAlignCenter,
      BorderSide.strokeAlignInside,
      BorderSide.strokeAlignOutside,
    ]);
    listField(
        id: "mouseCursor",
        title: "mouseCursor",
        values: [MouseCursor.uncontrolled, MouseCursor.defer]);
    listField<VisualDensity>(
        id: "visualDensity",
        title: "visualDensity",
        values: [
          VisualDensity.adaptivePlatformDensity,
          VisualDensity.compact,
          VisualDensity.comfortable,
        ]);
    listField(
        id: "materialTapTargetSize",
        title: "materialTapTargetSize",
        values: MaterialTapTargetSize.values);
    intField(id: "animationSeconds", title: "Animation Seconds");
    intField(id: "animationMinutes", title: "Animation Minutes");
    booleanField(id: "enableFeedback", title: "enable Feedback");
    alignmentField(id: "alignment", title: "Alignment");
    textStyleField(id: "textStyle", title: "Text Style");
    booleanField(id: "isSelected", title: "Is Selected");
    iconDataField(id: "selectedIcon", title: "Selected Icon");
  }
}
