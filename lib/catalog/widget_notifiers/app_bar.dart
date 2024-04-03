import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/main.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/range_picker_number_field.dart';
import 'package:flutter_quest/property_fields/shape_border_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';

typedef AppBarProperties = ({
  IconData? leading,
  bool? automaticallyImplyLeading,
  String? title,
  IconData? action,
  IconData? flexibleSpace,
  double? preferredHeight,
  IconData? preferredChild,
  double? elevation,
  double? scrolledUnderElevation,
  Color? shadowColor,
  Color? surfaceTintColor,
  ShapeBorder? shape,
  Color? backgroundColor,
  Color? foregroundColor,
  double? iconSize,
  double? iconFill,
  double? iconWeight,
  double? iconGrade,
  double? iconOpticalSize,
  Color? iconColor,
  double? iconOpacity,
  double? actionsIconSize,
  double? actionsIconFill,
  double? actionsIconWeight,
  double? actionsIconGrade,
  double? actionsIconOpticalSize,
  Color? actionsIconColor,
  double? actionsIconOpacity,
  bool? primary,
  bool? centerTitle,
  bool? excludeHeaderSemantics,
  double? titleSpacing,
  double? toolbarOpacity,
  double? bottomOpacity,
  double? toolbarHeight,
  double? leadingWidth,
  TextStyle? toolbarTextStyle,
  TextStyle? titleTextStyle,
  Color? systemNavigationBarColor,
  Color? systemNavigationBarDividerColor,
  Brightness? systemNavigationBarIconBrightness,
  bool? systemNavigationBarContrastEnforced,
  Color? statusBarColor,
  Brightness? statusBarBrightness,
  Brightness? statusBarIconBrightness,
  bool? systemStatusBarContrastEnforced,
  bool? forceMaterialTransparency,
  Clip? clipBehavior,
});

class AppBarPropertiesNotifier extends PropertiesNotifier<AppBarProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return AppBar(
      leading: Icon(fieldValues.leading),
      automaticallyImplyLeading: fieldValues.automaticallyImplyLeading ?? true,
      title: Text(fieldValues.title ?? ""),
      actions: [Icon(fieldValues.action)],
      flexibleSpace: Icon(fieldValues.flexibleSpace),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(fieldValues.preferredHeight ?? 0.0),
        child: Icon(fieldValues.preferredChild),
      ),
      elevation: fieldValues.elevation,
      scrolledUnderElevation: fieldValues.scrolledUnderElevation,
      notificationPredicate: (notification) {
        return false;
      },
      shadowColor: fieldValues.shadowColor,
      surfaceTintColor: fieldValues.surfaceTintColor,
      shape: fieldValues.shape,
      backgroundColor: fieldValues.backgroundColor,
      foregroundColor: fieldValues.foregroundColor,
      iconTheme: IconThemeData(
        size: fieldValues.iconSize,
        fill: fieldValues.iconFill,
        weight: fieldValues.iconWeight,
        grade: fieldValues.iconGrade,
        opticalSize: fieldValues.iconOpticalSize,
        color: fieldValues.iconColor,
        opacity: fieldValues.iconOpacity,
      ),
      actionsIconTheme: IconThemeData(
        size: fieldValues.actionsIconSize,
        fill: fieldValues.actionsIconFill,
        weight: fieldValues.actionsIconWeight,
        grade: fieldValues.actionsIconGrade,
        opticalSize: fieldValues.actionsIconOpticalSize,
        color: fieldValues.actionsIconColor,
        opacity: fieldValues.actionsIconOpacity,
      ),
      primary: fieldValues.primary ?? true,
      centerTitle: fieldValues.centerTitle,
      excludeHeaderSemantics: fieldValues.excludeHeaderSemantics ?? false,
      titleSpacing: fieldValues.titleSpacing,
      toolbarOpacity: fieldValues.toolbarOpacity ?? 1,
      bottomOpacity: fieldValues.bottomOpacity ?? 1,
      toolbarHeight: fieldValues.toolbarHeight,
      leadingWidth: fieldValues.leadingWidth,
      toolbarTextStyle: fieldValues.toolbarTextStyle,
      titleTextStyle: fieldValues.titleTextStyle,
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarColor: fieldValues.systemNavigationBarColor,
        systemNavigationBarDividerColor:
            fieldValues.systemNavigationBarDividerColor,
        systemNavigationBarIconBrightness:
            fieldValues.systemNavigationBarIconBrightness,
        systemNavigationBarContrastEnforced:
            fieldValues.systemNavigationBarContrastEnforced,
        statusBarColor: fieldValues.statusBarColor,
        statusBarBrightness: fieldValues.statusBarBrightness,
        statusBarIconBrightness: fieldValues.statusBarIconBrightness,
        systemStatusBarContrastEnforced:
            fieldValues.systemStatusBarContrastEnforced,
      ),
      forceMaterialTransparency: fieldValues.forceMaterialTransparency ?? false,
      clipBehavior: fieldValues.clipBehavior,
    );
  }

  @override
  String get code => '''
AppBar(
  leading: Icon(${fieldValues.leading}),
  automaticallyImplyLeading: ${fieldValues.automaticallyImplyLeading} ?? true,
  title: Text("${fieldValues.title}" ?? ""),
  actions: [
    Icon(${fieldValues.action}),
  ],
  flexibleSpace: Icon(${fieldValues.flexibleSpace}),
  bottom: PreferredSize(
    preferredSize: Size.fromHeight(${fieldValues.preferredHeight} ?? 0.0),
    child: Icon(${fieldValues.preferredChild}),
  ),
  elevation: ${fieldValues.elevation},
  scrolledUnderElevation: ${fieldValues.scrolledUnderElevation},
  notificationPredicate: (notification) {
    return false;
  },
  shadowColor: ${fieldValues.shadowColor},
  surfaceTintColor: ${fieldValues.surfaceTintColor},
  shape: ${fieldValues.shape},
  backgroundColor: ${fieldValues.backgroundColor},
  foregroundColor: ${fieldValues.foregroundColor},
  iconTheme: IconThemeData(
    size: ${fieldValues.iconSize},
    fill: ${fieldValues.iconFill},
    weight: ${fieldValues.iconWeight},
    grade: ${fieldValues.iconGrade},
    opticalSize: ${fieldValues.iconOpticalSize},
    color: ${fieldValues.iconColor},
    opacity: ${fieldValues.iconOpacity},
  ),
  actionsIconTheme: IconThemeData(
    size: ${fieldValues.actionsIconSize},
    fill: ${fieldValues.actionsIconFill},
    weight: ${fieldValues.actionsIconWeight},
    grade: ${fieldValues.actionsIconGrade},
    opticalSize: ${fieldValues.actionsIconOpticalSize},
    color: ${fieldValues.actionsIconColor},
    opacity: ${fieldValues.actionsIconOpacity},
  ),
  primary: ${fieldValues.primary} ?? true,
  centerTitle: ${fieldValues.centerTitle},
  excludeHeaderSemantics: ${fieldValues.excludeHeaderSemantics} ?? false,
  titleSpacing: ${fieldValues.titleSpacing},
  toolbarOpacity: ${fieldValues.toolbarOpacity} ?? 0.0,
  bottomOpacity: ${fieldValues.bottomOpacity} ?? 0.0,
  toolbarHeight: ${fieldValues.toolbarHeight},
  leadingWidth: ${fieldValues.leadingWidth},
  toolbarTextStyle: ${fieldValues.toolbarTextStyle},
  titleTextStyle: ${fieldValues.titleTextStyle},
  systemOverlayStyle: SystemUiOverlayStyle(
    systemNavigationBarColor: ${fieldValues.systemNavigationBarColor},
    systemNavigationBarDividerColor: ${fieldValues.systemNavigationBarDividerColor},
    systemNavigationBarIconBrightness: ${fieldValues.systemNavigationBarIconBrightness},
    systemNavigationBarContrastEnforced: ${fieldValues.systemNavigationBarContrastEnforced},
    statusBarColor: ${fieldValues.statusBarColor},
    statusBarBrightness: ${fieldValues.statusBarBrightness},
    statusBarIconBrightness: ${fieldValues.statusBarIconBrightness},
    systemStatusBarContrastEnforced: ${fieldValues.systemStatusBarContrastEnforced},
  ),
  forceMaterialTransparency: ${fieldValues.forceMaterialTransparency} ?? false,
  clipBehavior: ${fieldValues.clipBehavior},
)
''';

  @override
  AppBarProperties get fieldValues => (
        leading: getValueOf('leading'),
        automaticallyImplyLeading: getValueOf('automaticallyImplyLeading'),
        title: getValueOf('title'),
        action: getValueOf('action'),
        flexibleSpace: getValueOf('flexibleSpace'),
        preferredHeight: getValueOf('preferredHeight'),
        preferredChild: getValueOf('preferredChild'),
        elevation: getValueOf('elevation'),
        scrolledUnderElevation: getValueOf('scrolledUnderElevation'),
        shadowColor: getValueOf('shadowColor'),
        surfaceTintColor: getValueOf('surfaceTintColor'),
        shape: getValueOf('shape'),
        backgroundColor: getValueOf('backgroundColor'),
        foregroundColor: getValueOf('foregroundColor'),
        iconSize: getValueOf('iconSize'),
        iconFill: getValueOf('iconFill'),
        iconWeight: getValueOf('iconWeight'),
        iconGrade: getValueOf('iconGrade'),
        iconOpticalSize: getValueOf('iconOpticalSize'),
        iconColor: getValueOf('iconColor'),
        iconOpacity: getValueOf('iconOpacity'),
        actionsIconSize: getValueOf('actionsIconSize'),
        actionsIconFill: getValueOf('actionsIconFill'),
        actionsIconWeight: getValueOf('actionsIconWeight'),
        actionsIconGrade: getValueOf('actionsIconGrade'),
        actionsIconOpticalSize: getValueOf('actionsIconOpticalSize'),
        actionsIconColor: getValueOf('actionsIconColor'),
        actionsIconOpacity: getValueOf('actionsIconOpacity'),
        primary: getValueOf('primary'),
        centerTitle: getValueOf('centerTitle'),
        excludeHeaderSemantics: getValueOf('excludeHeaderSemantics'),
        titleSpacing: getValueOf('titleSpacing'),
        toolbarOpacity: getValueOf('toolbarOpacity'),
        bottomOpacity: getValueOf('bottomOpacity'),
        toolbarHeight: getValueOf('toolbarHeight'),
        leadingWidth: getValueOf('leadingWidth'),
        toolbarTextStyle: getValueOf('toolbarTextStyle'),
        titleTextStyle: getValueOf('titleTextStyle'),
        systemNavigationBarColor: getValueOf('systemNavigationBarColor'),
        systemNavigationBarDividerColor:
            getValueOf('systemNavigationBarDividerColor'),
        systemNavigationBarIconBrightness:
            getValueOf('systemNavigationBarIconBrightness'),
        systemNavigationBarContrastEnforced:
            getValueOf('systemNavigationBarContrastEnforced'),
        statusBarColor: getValueOf('statusBarColor'),
        statusBarBrightness: getValueOf('statusBarBrightness'),
        statusBarIconBrightness: getValueOf('statusBarIconBrightness'),
        systemStatusBarContrastEnforced:
            getValueOf('systemStatusBarContrastEnforced'),
        forceMaterialTransparency: getValueOf('forceMaterialTransparency'),
        clipBehavior: getValueOf('clipBehavior'),
      );

  @override
  void registerFields() {
    iconDataField(id: "leading", title: "Leading Widget", initialValue: Icons.menu);
    booleanField(
        id: "automaticallyImplyLeading", title: "Automatically Imply Leading");
    stringField(id: "title", title: "Title Widget", initialValue: "My App");
    iconDataField(id: "action", title: "Action Widget", initialValue: Icons.search);
    iconDataField(id: "flexibleSpace", title: "flexibleSpace");
    doubleField(id: "preferredHeight", title: "Bottom Preferred Height");
    iconDataField(id: "preferredChild", title: "Preferred Child");
    doubleField(id: "elevation", title: "Elevation", initialValue: 40.0);
    doubleField(
        id: "scrolledUnderElevation", title: "Scrolled Under Elevation");
    colorField(id: "shadowColor", title: "Shadow Color");
    colorField(id: "surfaceTintColor", title: "Surface Tint Color");
    shapeBorderField(id: "shape", title: "Shape", initialValue: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)));
    colorField(id: "backgroundColor", title: "Background Color", initialValue: themeColorNotifier.value);
    colorField(id: "foregroundColor", title: "Foreground Color", initialValue: Colors.white);
    doubleField(id: "iconSize", title: "IconTheme Size", initialValue: 24.0);
    doubleField(id: "iconFill", title: "IconTheme Fill");
    doubleField(id: "iconWeight", title: "IconTheme Weight", initialValue: null);
    doubleField(id: "iconGrade", title: "IconTheme Grade");
    doubleField(id: "iconOpticalSize", title: "IconTheme Optical Size");
    colorField(id: "iconColor", title: "IconTheme Color", initialValue: Colors.white);
    rangePickerNumberField(id: "iconOpacity", title: "IconTheme Opacity");
    doubleField(id: "actionsIconSize", title: "ActionsIconTheme Size");
    doubleField(id: "actionsIconFill", title: "ActionsIconTheme Fill");
    doubleField(id: "actionsIconWeight", title: "ActionsIconTheme Weight");
    doubleField(id: "actionsIconGrade", title: "ActionsIconTheme Grade");
    doubleField(
        id: "actionsIconOpticalSize", title: "ActionsIconTheme Optical Size");
    colorField(id: "actionsIconColor", title: "ActionsIconTheme Color", initialValue: Colors.white);
    rangePickerNumberField(
        id: "actionsIconOpacity", title: "ActionsIconTheme Opacity");
    booleanField(id: "primary", title: "Primary");
    booleanField(id: "centerTitle", title: "Center Title", initialValue: false);
    booleanField(
        id: "excludeHeaderSemantics", title: "Exclude Header Semantics");
    doubleField(id: "titleSpacing", title: "Title Spacing", initialValue: 16.0);
    rangePickerNumberField(id: "toolbarOpacity", title: "Toolbar Opacity");
    rangePickerNumberField(id: "bottomOpacity", title: "Bottom Opacity");
    doubleField(id: "toolbarHeight", title: "Toolbar Height");
    doubleField(id: "leadingWidth", title: "Leading Width");
    textStyleField(id: "toolbarTextStyle", title: "Toolbar Text Style");
    textStyleField(id: "titleTextStyle", title: "Title Text Style");
    colorField(
        id: "systemNavigationBarColor", title: " System Navigation Bar Color");
    colorField(
        id: "systemNavigationBarDividerColor",
        title: "System Navigation Bar Divider Color");
    listField<Brightness>(
        id: "systemNavigationBarIconBrightness",
        title: "System NavigationBar Icon Brightness",
        values: Brightness.values);
    booleanField(
        id: "systemNavigationBarContrastEnforced",
        title: "System NavigationBar Contrast Enforced");
    colorField(id: "statusBarColor", title: "Status Bar Color");
    listField<Brightness>(
        id: "statusBarBrightness",
        title: "Status Bar Brightness",
        values: Brightness.values);
    listField<Brightness>(
        id: "statusBarIconBrightness",
        title: "Status Bar Icon Brightness",
        values: Brightness.values);
    booleanField(
        id: "systemStatusBarContrastEnforced",
        title: "System Status Bar Contrast Enforced");
    booleanField(
        id: "forceMaterialTransparency", title: "Force Material Transparency");
    clipField(id: "clipBehavior", title: "Clip Behavior");
  }
}
