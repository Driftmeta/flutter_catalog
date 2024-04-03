import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';

import '../../main.dart';

typedef SwitchProperties = ({
  bool? value,
  Color? activeColor,
  Color? inactiveThumbColor,
  Color? activeTrackColor,
  String? activeThumbImage,
  String? inactiveThumbImage,
  Color? thumbColor,
  Color? trackColor,
  Color? trackOutlineColor,
  double? trackOutlineWidth,
  IconData? thumbIcon,
  DragStartBehavior? dragStartBehavior,
  MouseCursor? mouseCursor,
  Color? focusColor,
  Color? hoverColor,
  Color? overlayColor,
  double? splashRadius,
  bool? autofocus,
  MaterialTapTargetSize? materialTapTargetSize,
});

class SwitchPropertiesNotifier extends PropertiesNotifier<SwitchProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Switch(
      value: fieldValues.value ?? false,
      onChanged: (val) {},
      activeColor: fieldValues.activeColor,
      activeTrackColor: fieldValues.activeTrackColor,
      inactiveThumbColor: fieldValues.inactiveThumbColor,
      inactiveTrackColor: fieldValues.inactiveThumbColor,
      activeThumbImage: fieldValues.activeThumbImage != null
          ? NetworkImage(fieldValues.activeThumbImage!)
          : null,
      onActiveThumbImageError: (object, stackTrace) {},
      inactiveThumbImage: fieldValues.inactiveThumbImage != null
          ? NetworkImage(fieldValues.inactiveThumbImage!)
          : null,
      onInactiveThumbImageError: (object, stackTrace) {},
      thumbColor: MaterialStatePropertyAll<Color?>(fieldValues.thumbColor),
      trackColor: MaterialStatePropertyAll<Color?>(fieldValues.trackColor),
      trackOutlineColor:
          MaterialStatePropertyAll<Color?>(fieldValues.trackOutlineColor),
      trackOutlineWidth:
          MaterialStatePropertyAll<double?>(fieldValues.trackOutlineWidth),
      thumbIcon: MaterialStatePropertyAll<Icon?>(
        Icon(fieldValues.thumbIcon),
      ),
      dragStartBehavior:
          fieldValues.dragStartBehavior ?? DragStartBehavior.start,
      materialTapTargetSize: fieldValues.materialTapTargetSize,
      mouseCursor: fieldValues.mouseCursor,
      focusColor: fieldValues.focusColor,
      hoverColor: fieldValues.hoverColor,
      overlayColor: MaterialStatePropertyAll<Color?>(fieldValues.overlayColor),
      splashRadius: fieldValues.splashRadius,
      focusNode: FocusNode(),
      onFocusChange: (val) {},
      autofocus: fieldValues.autofocus ?? false,
    );
  }

  @override
  String get code => '''
   Switch(
      value: ${fieldValues.value},
      onChanged: (val) {},
      activeColor: ${fieldValues.activeColor},
      activeTrackColor: ${fieldValues.activeTrackColor},
      inactiveThumbColor: ${fieldValues.inactiveThumbColor},
      inactiveTrackColor: ${fieldValues.inactiveThumbColor},
      activeThumbImage: ${fieldValues.activeThumbImage},
      onActiveThumbImageError: (object, stackTrace) {},
      inactiveThumbImage: ${fieldValues.inactiveThumbImage},
      onInactiveThumbImageError: (object, stackTrace) {},
      thumbColor: ${fieldValues.thumbColor},
      trackColor: ${fieldValues.trackColor},
      trackOutlineColor: ${fieldValues.trackOutlineColor},
      trackOutlineWidth: ${fieldValues.trackOutlineWidth},
      thumbIcon: ${fieldValues.thumbIcon},
      dragStartBehavior: ${fieldValues.dragStartBehavior},
      materialTapTargetSize: ${fieldValues.materialTapTargetSize},
      mouseCursor: ${fieldValues.mouseCursor},
      focusColor: ${fieldValues.focusColor},
      hoverColor: ${fieldValues.hoverColor},
      overlayColor: ${fieldValues.overlayColor},
      splashRadius: ${fieldValues.splashRadius},
      focusNode: FocusNode(),
      onFocusChange: (val) {},
      autofocus: ${fieldValues.autofocus},
    );
  ''';

  @override
  SwitchProperties get fieldValues => (
        value: getValueOf('value'),
        activeColor: getValueOf('activeColor'),
        inactiveThumbColor: getValueOf('inactiveThumbColor'),
        activeTrackColor: getValueOf('activeTrackColor'),
        activeThumbImage: getValueOf('activeThumbImage'),
        inactiveThumbImage: getValueOf('inactiveThumbImage'),
        thumbColor: getValueOf('thumbColor'),
        trackColor: getValueOf('trackColor'),
        trackOutlineColor: getValueOf('trackOutlineColor'),
        trackOutlineWidth: getValueOf('trackOutlineWidth'),
        thumbIcon: getValueOf('thumbIcon'),
        dragStartBehavior: getValueOf('dragStartBehavior'),
        mouseCursor: getValueOf('mouseCursor'),
        focusColor: getValueOf('focusColor'),
        hoverColor: getValueOf('hoverColor'),
        overlayColor: getValueOf('overlayColor'),
        splashRadius: getValueOf('splashRadius'),
        autofocus: getValueOf('autofocus'),
        materialTapTargetSize: getValueOf('materialTapTargetSize'),
      );

  @override
  void registerFields() {
    booleanField(id: "value", title: "Value");
    colorField(id: "activeColor", title: "Active Color", initialValue: themeColorNotifier.value.withOpacity(0.4));
    colorField(id: "inactiveThumbColor", title: "Inactive Thumb Color");
    colorField(id: "activeTrackColor", title: "Active Track Color", initialValue: Colors.blueGrey[300]);
    stringField(id: "activeThumbImage", title: "Active Thumb Image Link",initialValue: "");
    stringField(id: "inactiveThumbImage", title: "InactiveThumb Image Link",initialValue: "");
    colorField(id: "thumbColor", title: "Thumb Color", initialValue: themeColorNotifier.value);
    colorField(id: "trackColor", title: "Track Color");
    colorField(id: "trackOutlineColor", title: "Track Outline Color");
    doubleField(id: "trackOutlineWidth", title: "Track Outline Width");
    iconDataField(id: "thumbIcon", title: "ThumbIcon");
    listField<DragStartBehavior>(
      id: "dragStartBehavior",
      title: "Drag Start Behavior",
      values: DragStartBehavior.values,
    );
    listField<MouseCursor>(
      id: "mouseCursor",
      title: "Mouse Cursor",
      values: [MouseCursor.defer, MouseCursor.uncontrolled],
    );
    colorField(id: "focusColor", title: "Focus Color");
    colorField(id: "hoverColor", title: "Hover Color");
    colorField(id: "overlayColor", title: "Overlay Color", initialValue: Colors.blueGrey[200]);
    doubleField(id: "splashRadius", title: "Splash Radius");
    booleanField(id: "autofocus", title: "autofocus");
    listField<MaterialTapTargetSize>(
      id: "materialTapTargetSize",
      title: "Material Tap Target Size",
      values: MaterialTapTargetSize.values,
    );
  }
}
