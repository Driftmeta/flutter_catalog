import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/shape_border_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

typedef FloatingActionButtonProperties = ({
  String? tooltip,
  Color? foregroundColor,
  Color? backgroundColor,
  Color? focusColor,
  Color? hoverColor,
  Color? splashColor,
  double? elevation,
  double? focusElevation,
  double? hoverElevation,
  double? highlightElevation,
  double? disabledElevation,
  MouseCursor? mouseCursor,
  bool? mini,
  ShapeBorder? shape,
  Clip? clipBehavior,
  bool? autofocus,
  MaterialTapTargetSize? materialTapTargetSize,
  bool? isExtended,
  bool? enableFeedback,
  String? childText,
});

class FloatingActionButtonPropertiesNotifier
    extends PropertiesNotifier<FloatingActionButtonProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return FloatingActionButton(
      tooltip: fieldValues.tooltip,
      foregroundColor: fieldValues.foregroundColor,
      backgroundColor: fieldValues.backgroundColor,
      focusColor: fieldValues.focusColor,
      hoverColor: fieldValues.hoverColor,
      splashColor: fieldValues.splashColor,
      heroTag: () {},
      elevation: fieldValues.elevation,
      focusElevation: fieldValues.focusElevation,
      hoverElevation: fieldValues.hoverElevation,
      highlightElevation: fieldValues.highlightElevation,
      disabledElevation: fieldValues.disabledElevation,
      onPressed: () {},
      mouseCursor: fieldValues.mouseCursor,
      mini: fieldValues.mini ?? false,
      shape: fieldValues.shape,
      clipBehavior: fieldValues.clipBehavior ?? Clip.none,
      focusNode: FocusNode(),
      autofocus: fieldValues.autofocus ?? false,
      materialTapTargetSize: fieldValues.materialTapTargetSize,
      isExtended: fieldValues.isExtended ?? false,
      enableFeedback: fieldValues.enableFeedback,
      child: Text(fieldValues.childText ?? ""),
    );
  }

  @override
  String get code => '''
FloatingActionButton(
  tooltip: "${fieldValues.tooltip}",
  foregroundColor: ${fieldValues.foregroundColor},
  backgroundColor: ${fieldValues.backgroundColor},
  focusColor: ${fieldValues.focusColor},
  hoverColor: ${fieldValues.hoverColor},
  splashColor: ${fieldValues.splashColor},
  heroTag: () {},
  elevation: ${fieldValues.elevation},
  focusElevation: ${fieldValues.focusElevation},
  hoverElevation: ${fieldValues.hoverElevation},
  highlightElevation: ${fieldValues.highlightElevation},
  disabledElevation: ${fieldValues.disabledElevation},
  onPressed: () {},
  mouseCursor: ${fieldValues.mouseCursor},
  mini: ${fieldValues.mini} ?? false,
  shape: ${fieldValues.shape},
  clipBehavior: ${fieldValues.clipBehavior} ?? Clip.none,
  focusNode: FocusNode(),
  autofocus: ${fieldValues.autofocus} ?? false,
  materialTapTargetSize: ${fieldValues.materialTapTargetSize},
  isExtended: ${fieldValues.isExtended} ?? false,
  enableFeedback: ${fieldValues.enableFeedback},
  child: Text("${fieldValues.childText}" ?? ""),
)
''';

  @override
  FloatingActionButtonProperties get fieldValues => (
        tooltip: getValueOf('tooltip'),
        foregroundColor: getValueOf('foregroundColor'),
        backgroundColor: getValueOf('backgroundColor'),
        focusColor: getValueOf('focusColor'),
        hoverColor: getValueOf('hoverColor'),
        splashColor: getValueOf('splashColor'),
        elevation: getValueOf('elevation'),
        focusElevation: getValueOf('focusElevation'),
        hoverElevation: getValueOf('hoverElevation'),
        highlightElevation: getValueOf('highlightElevation'),
        disabledElevation: getValueOf('disabledElevation'),
        mouseCursor: getValueOf('mouseCursor'),
        mini: getValueOf('mini'),
        shape: getValueOf('shape'),
        clipBehavior: getValueOf('clipBehavior'),
        autofocus: getValueOf('autofocus'),
        materialTapTargetSize: getValueOf('materialTapTargetSize'),
        isExtended: getValueOf('isExtended'),
        enableFeedback: getValueOf('enableFeedback'),
        childText: getValueOf('childText'),
      );

  @override
  void registerFields() {
    stringField(id: "tooltip", title: "Tooltip", initialValue: 'click here');
    colorField(id: "foregroundColor", title: "Foreground Color");
    colorField(id: "backgroundColor", title: "Background Color");
    colorField(id: "focusColor", title: "Focus Color");
    colorField(id: "hoverColor", title: "Hover Color");
    colorField(id: "splashColor", title: "Splash Color");
    doubleField(id: "elevation", title: "Elevation");
    doubleField(id: "focusElevation", title: "Focus Elevation");
    doubleField(id: "hoverElevation", title: "Hover Elevation", initialValue: 8.0);
    doubleField(id: "highlightElevation", title: "Highlight Elevation");
    doubleField(id: "disabledElevation", title: "Disabled Elevation");
    listField<MouseCursor>(
        id: "mouseCursor",
        title: "MouseCursor",
        values: [MouseCursor.defer, MouseCursor.uncontrolled]);
    booleanField(id: "mini", title: "Mini");
    shapeBorderField(id: "shape", title: "Shape");
    clipField(id: "clipBehavior", title: "Clip Behavior");
    booleanField(id: "autofocus", title: "Auto Focus");
    listField<MaterialTapTargetSize>(
        id: "materialTapTargetSize",
        title: "Material Tap Target Size",
        values: [
          MaterialTapTargetSize.padded,
          MaterialTapTargetSize.shrinkWrap
        ]);
    booleanField(id: "isExtended", title: "Is Extended");
    booleanField(id: "enableFeedback", title: "Enable Feedback");
    stringField(id: "childText", title: "Child Text");
  }
}
