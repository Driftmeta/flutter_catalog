import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/border_radius_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/icon_data_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/property_fields/text_direction_field.dart';

import '../../main.dart';

typedef TextFieldProperties = ({
// Icon
  Color? iconColor,
  IconData? icon,

// Label
  IconData? label,
  String? labelText,
  TextStyle? labelStyle,
  TextStyle? floatingLabelStyle,

// Helper Text
  String? helperText,
  TextStyle? helperStyle,
  int? helperMaxLines,

// Hint Text
  String? hintText,
  TextStyle? hintStyle,
  TextDirection? hintTextDirection,
  int? hintMaxLines,

// Error
  IconData? error,
  String? errorText,
  TextStyle? errorStyle,
  int? errorMaxLines,

// Floating Label Alignment
  FloatingLabelAlignment? floatingLabelAlignment,

// Others
  bool? isCollapsed,
  bool? isDense,
  EdgeInsets? contentPadding,
  IconData? prefixIcon,
  double? prefixMaxHeight,
  double? prefixMinHeight,
  double? prefixMaxWidth,
  double? prefixMinWidth,
  IconData? prefix,
  String? prefixText,
  TextStyle? prefixStyle,
  Color? prefixIconColor,
  IconData? suffixIcon,
  double? suffixMaxHeight,
  double? suffixMinHeight,
  double? suffixMaxWidth,
  double? suffixMinWidth,
  String? suffixText,
  TextStyle? suffixStyle,
  Color? suffixIconColor,
  IconData? counter,
  String? counterText,
  TextStyle? counterStyle,
  bool? filled,
  Color? fillColor,
  Color? focusColor,
  Color? hoverColor,

// Error Border
  Color? errorBorderColor,
  double? errorBorderWidth,
  BorderRadius? errorBorderRadius,
  BorderStyle? errorBorderStyle,
  double? errorStrokeAlign,
  double? errorGapPadding,

// Focus Border
  Color? focusBorderColor,
  double? focusBorderWidth,
  BorderRadius? focusBorderRadius,
  BorderStyle? focusBorderStyle,
  double? focusStrokeAlign,
  double? focusGapPadding,

// Focus Error Border
  Color? focusErrorBorderColor,
  double? focusErrorBorderWidth,
  BorderRadius? focusErrorBorderRadius,
  BorderStyle? focusErrorBorderStyle,
  double? focusErrorStrokeAlign,
  double? focusErrorGapPadding,

// Disabled Border
  Color? disabledBorderColor,
  double? disabledBorderWidth,
  BorderRadius? disabledBorderRadius,
  BorderStyle? disabledBorderStyle,
  double? disabledStrokeAlign,
  double? disabledGapPadding,

// Enabled Border
  Color? enabledBorderColor,
  double? enabledBorderWidth,
  BorderRadius? enabledBorderRadius,
  BorderStyle? enabledBorderStyle,
  double? enabledStrokeAlign,
  double? enabledGapPadding,

// General Border
  Color? borderColor,
  double? borderWidth,
  BorderRadius? borderRadius,
  BorderStyle? borderStyle,
  double? strokeAlign,
  double? gapPadding,

// Other properties
  bool? enabled,
  String? semanticCounterText,
  bool? alignLabelWithHint,
  double? maxHeight,
  double? minHeight,
  double? maxWidth,
  double? minWidth,
  TextInputType? keyboardType,
  TextInputAction? textInputAction,
  TextCapitalization? textCapitalization,
  TextStyle? style,
  TextAlign? textAlign,
  TextAlignVertical? textAlignVertical,
  TextDirection? textDirection,
  bool? readOnly,
  bool? showCursor,
  bool? autofocus,
  String? obscuringCharacter,
  bool? obscureText,
  bool? autocorrect,
  SmartDashesType? smartDashesType,
  SmartQuotesType? smartQuotesType,
  bool? enableSuggestions,
  int? maxLines,
  int? minLines,
  bool? expands,
  int? maxLength,
  MaxLengthEnforcement? maxLengthEnforcement,
  bool? enabledText,
  double? cursorWidth,
  double? cursorHeight,
  double? cursorRadius,
  bool? cursorOpacityAnimates,
  Color? cursorColor,
  BoxHeightStyle? selectionHeightStyle,
  BoxWidthStyle? selectionWidthStyle,
  Brightness? keyboardAppearance,
  EdgeInsets? scrollPadding,
  DragStartBehavior? dragStartBehavior,
  bool? enableInteractiveSelection,
  MouseCursor? mouseCursor,
  Clip? clipBehavior,
  String? restorationId,
  bool? scribbleEnabled,
  bool? enableIMEPersonalizedLearning,
  bool? canRequestFocus,
});

class TextFieldPropertiesNotifier
    extends PropertiesNotifier<TextFieldProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    // TODO: implement buildPreview
    return TextField(
      focusNode: FocusNode(),
      decoration: InputDecoration(
        icon: Icon(fieldValues.icon),
        iconColor: fieldValues.iconColor,
        label: Icon(fieldValues.label),
        labelText: fieldValues.labelText,
        labelStyle: fieldValues.labelStyle,
        floatingLabelStyle: fieldValues.floatingLabelStyle,
        helperText: fieldValues.helperText,
        helperStyle: fieldValues.helperStyle,
        helperMaxLines: fieldValues.helperMaxLines,
        hintText: fieldValues.hintText,
        hintStyle: fieldValues.hintStyle,
        hintTextDirection: fieldValues.hintTextDirection,
        hintMaxLines: fieldValues.hintMaxLines,
        error: Icon(fieldValues.error),
        errorText: fieldValues.errorText,
        errorStyle: fieldValues.errorStyle,
        errorMaxLines: fieldValues.errorMaxLines,
        floatingLabelAlignment: fieldValues.floatingLabelAlignment,
        isCollapsed: fieldValues.isCollapsed ?? false,
        isDense: fieldValues.isDense,
        contentPadding: fieldValues.contentPadding,
        prefixIcon: Icon(fieldValues.prefixIcon),
        prefixIconConstraints: BoxConstraints(
          maxHeight: fieldValues.prefixMaxHeight ?? double.infinity,
          minHeight: fieldValues.prefixMinHeight ?? 0.0,
          maxWidth: fieldValues.prefixMaxWidth ?? double.infinity,
          minWidth: fieldValues.prefixMinWidth ?? 0.0,
        ),
        prefix: Icon(fieldValues.prefix),
        prefixText: fieldValues.prefixText,
        prefixStyle: fieldValues.prefixStyle,
        prefixIconColor: fieldValues.prefixIconColor,
        suffixIcon: Icon(fieldValues.suffixIcon),
        suffixIconConstraints: BoxConstraints(
          maxHeight: fieldValues.suffixMaxHeight ?? double.infinity,
          minHeight: fieldValues.suffixMinHeight ?? 0.0,
          maxWidth: fieldValues.suffixMaxWidth ?? double.infinity,
          minWidth: fieldValues.suffixMinWidth ?? 0.0,
        ),
        suffixText: fieldValues.suffixText,
        suffixStyle: fieldValues.suffixStyle,
        suffixIconColor: fieldValues.suffixIconColor,
        counter: Icon(fieldValues.counter),
        counterText: fieldValues.counterText,
        counterStyle: fieldValues.counterStyle,
        filled: fieldValues.filled,
        fillColor: fieldValues.fillColor,
        focusColor: fieldValues.focusColor,
        hoverColor: fieldValues.hoverColor,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: fieldValues.errorBorderColor ?? Colors.transparent,
            width: fieldValues.errorBorderWidth ?? 1.0,
            style: fieldValues.errorBorderStyle ?? BorderStyle.solid,
            strokeAlign: fieldValues.errorStrokeAlign ?? 1.0,
          ),
          borderRadius: fieldValues.errorBorderRadius ?? BorderRadius.zero,
          gapPadding: fieldValues.errorGapPadding ?? 4.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: fieldValues.focusBorderColor ?? Colors.transparent,
            width: fieldValues.focusBorderWidth ?? 1.0,
            style: fieldValues.focusBorderStyle ?? BorderStyle.solid,
            strokeAlign: fieldValues.focusStrokeAlign ?? 1.0,
          ),
          borderRadius: fieldValues.focusBorderRadius ?? BorderRadius.zero,
          gapPadding: fieldValues.focusGapPadding ?? 4.0,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: fieldValues.focusErrorBorderColor ?? Colors.transparent,
            width: fieldValues.focusErrorBorderWidth ?? 1.0,
            style: fieldValues.focusErrorBorderStyle ?? BorderStyle.solid,
            strokeAlign: fieldValues.focusErrorStrokeAlign ?? 1.0,
          ),
          borderRadius: fieldValues.focusErrorBorderRadius ?? BorderRadius.zero,
          gapPadding: fieldValues.focusErrorGapPadding ?? 4.0,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: fieldValues.disabledBorderColor ?? Colors.transparent,
            width: fieldValues.disabledBorderWidth ?? 1.0,
            style: fieldValues.disabledBorderStyle ?? BorderStyle.solid,
            strokeAlign: fieldValues.disabledStrokeAlign ?? 1.0,
          ),
          borderRadius: fieldValues.disabledBorderRadius ?? BorderRadius.zero,
          gapPadding: fieldValues.disabledGapPadding ?? 4.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: fieldValues.enabledBorderColor ?? Colors.transparent,
            width: fieldValues.enabledBorderWidth ?? 1.0,
            style: fieldValues.enabledBorderStyle ?? BorderStyle.solid,
            strokeAlign: fieldValues.enabledStrokeAlign ?? 1.0,
          ),
          borderRadius: fieldValues.enabledBorderRadius ?? BorderRadius.zero,
          gapPadding: fieldValues.enabledGapPadding ?? 4.0,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: fieldValues.borderColor ?? Colors.transparent,
            width: fieldValues.borderWidth ?? 1.0,
            style: fieldValues.borderStyle ?? BorderStyle.solid,
            strokeAlign: fieldValues.strokeAlign ?? 1.0,
          ),
          borderRadius: fieldValues.borderRadius ?? BorderRadius.zero,
          gapPadding: fieldValues.gapPadding ?? 4.0,
        ),
        enabled: fieldValues.enabled ?? true,
        semanticCounterText: fieldValues.semanticCounterText,
        alignLabelWithHint: fieldValues.alignLabelWithHint,
        constraints: BoxConstraints(
          maxHeight: fieldValues.maxHeight ?? double.infinity,
          minHeight: fieldValues.minHeight ?? 0.0,
          maxWidth: fieldValues.maxWidth ?? double.infinity,
          minWidth: fieldValues.minWidth ?? 0.0,
        ),
      ),
      keyboardType: fieldValues.keyboardType,
      textInputAction: fieldValues.textInputAction,
      textCapitalization:
          fieldValues.textCapitalization ?? TextCapitalization.none,
      style: fieldValues.style,
      textAlign: fieldValues.textAlign ?? TextAlign.start,
      textAlignVertical: fieldValues.textAlignVertical,
      textDirection: fieldValues.textDirection,
      readOnly: fieldValues.readOnly ?? false,
      showCursor: fieldValues.showCursor,
      autofocus: fieldValues.autofocus ?? false,
      obscuringCharacter: fieldValues.obscuringCharacter ?? "*",
      obscureText: fieldValues.obscureText ?? false,
      autocorrect: fieldValues.autocorrect ?? true,
      smartDashesType: fieldValues.smartDashesType,
      smartQuotesType: fieldValues.smartQuotesType,
      enableSuggestions: fieldValues.enableSuggestions ?? true,
      maxLines: fieldValues.maxLines ?? 1,
      minLines: fieldValues.minLines,
      expands: fieldValues.expands ?? false,
      maxLength: fieldValues.maxLength,
      maxLengthEnforcement: fieldValues.maxLengthEnforcement,
      inputFormatters: const [],
      enabled: fieldValues.enabledText,
      cursorWidth: fieldValues.cursorWidth ?? 2.0,
      cursorHeight: fieldValues.cursorHeight,
      cursorRadius: Radius.circular(fieldValues.cursorRadius ?? 0.0),
      cursorOpacityAnimates: fieldValues.cursorOpacityAnimates,
      cursorColor: fieldValues.cursorColor,
      selectionHeightStyle:
          fieldValues.selectionHeightStyle ?? BoxHeightStyle.tight,
      selectionWidthStyle:
          fieldValues.selectionWidthStyle ?? BoxWidthStyle.tight,
      keyboardAppearance: fieldValues.keyboardAppearance,
      scrollPadding: fieldValues.scrollPadding ?? const EdgeInsets.all(2.0),
      dragStartBehavior:
          fieldValues.dragStartBehavior ?? DragStartBehavior.start,
      enableInteractiveSelection: fieldValues.enableInteractiveSelection,
      mouseCursor: fieldValues.mouseCursor,
      clipBehavior: fieldValues.clipBehavior ?? Clip.none,
      restorationId: fieldValues.restorationId,
      scribbleEnabled: fieldValues.scribbleEnabled ?? true,
      enableIMEPersonalizedLearning:
          fieldValues.enableIMEPersonalizedLearning ?? true,
      canRequestFocus: fieldValues.canRequestFocus ?? true,
      magnifierConfiguration: TextMagnifierConfiguration.disabled,
    );
  }

  @override
  // TODO: implement code
  String get code => '''
   TextField(
      focusNode: FocusNode(),
      decoration: InputDecoration(
        icon: Icon(${fieldValues.icon}),
        iconColor: ${fieldValues.iconColor},
        label: Icon(${fieldValues.label}),
        labelText: ${fieldValues.labelText},
        labelStyle: ${fieldValues.labelStyle},
        floatingLabelStyle: ${fieldValues.floatingLabelStyle},
        helperText: ${fieldValues.helperText},
        helperStyle: ${fieldValues.helperStyle},
        helperMaxLines: ${fieldValues.helperMaxLines},
        hintText: ${fieldValues.hintText},
        hintStyle: ${fieldValues.hintStyle},
        hintTextDirection: ${fieldValues.hintTextDirection},
        hintMaxLines: ${fieldValues.hintMaxLines},
        error: Icon(${fieldValues.error}),
        errorText: ${fieldValues.errorText},
        errorStyle: ${fieldValues.errorStyle},
        errorMaxLines: ${fieldValues.errorMaxLines},
        floatingLabelAlignment: ${fieldValues.floatingLabelAlignment},
        isCollapsed: ${fieldValues.isCollapsed} ?? false,
        isDense: ${fieldValues.isDense},
        contentPadding: ${fieldValues.contentPadding},
        prefixIcon: Icon(${fieldValues.prefixIcon}),
        prefixIconConstraints: BoxConstraints(
          maxHeight: ${fieldValues.prefixMaxHeight} ?? double.infinity,
          minHeight: ${fieldValues.prefixMinHeight} ?? 0.0,
          maxWidth: ${fieldValues.prefixMaxWidth} ?? double.infinity,
          minWidth: ${fieldValues.prefixMinWidth} ?? 0.0,
        ),
        prefix: Icon(${fieldValues.prefix}),
        prefixText: ${fieldValues.prefixText},
        prefixStyle: ${fieldValues.prefixStyle},
        prefixIconColor: ${fieldValues.prefixIconColor},
        suffixIcon: Icon(${fieldValues.suffixIcon}),
        suffixIconConstraints: BoxConstraints(
          maxHeight: ${fieldValues.suffixMaxHeight} ?? double.infinity,
          minHeight: ${fieldValues.suffixMinHeight} ?? 0.0,
          maxWidth: ${fieldValues.suffixMaxWidth} ?? double.infinity,
          minWidth: ${fieldValues.suffixMinWidth} ?? 0.0,
        ),
        suffixText: ${fieldValues.suffixText},
        suffixStyle: ${fieldValues.suffixStyle},
        suffixIconColor: ${fieldValues.suffixIconColor},
        counter: Icon(${fieldValues.counter}),
        counterText: ${fieldValues.counterText},
        counterStyle: ${fieldValues.counterStyle},
        filled: ${fieldValues.filled},
        fillColor: ${fieldValues.fillColor},
        focusColor: ${fieldValues.focusColor},
        hoverColor: ${fieldValues.hoverColor},
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ${fieldValues.errorBorderColor} ?? Colors.transparent,
            width: ${fieldValues.errorBorderWidth} ?? 1.0,
            style: ${fieldValues.errorBorderStyle} ?? BorderStyle.solid,
            strokeAlign: ${fieldValues.errorStrokeAlign} ?? 1.0,
          ),
          borderRadius: ${fieldValues.errorBorderRadius} ?? BorderRadius.zero,
          gapPadding: ${fieldValues.errorGapPadding} ?? 4.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ${fieldValues.focusBorderColor} ?? Colors.transparent,
            width: ${fieldValues.focusBorderWidth} ?? 1.0,
            style: ${fieldValues.focusBorderStyle} ?? BorderStyle.solid,
            strokeAlign: ${fieldValues.focusStrokeAlign} ?? 1.0,
          ),
          borderRadius: ${fieldValues.focusBorderRadius} ?? BorderRadius.zero,
          gapPadding: ${fieldValues.focusGapPadding} ?? 4.0,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ${fieldValues.focusErrorBorderColor} ?? Colors.transparent,
            width: ${fieldValues.focusErrorBorderWidth} ?? 1.0,
            style: ${fieldValues.focusErrorBorderStyle} ?? BorderStyle.solid,
            strokeAlign: ${fieldValues.focusErrorStrokeAlign} ?? 1.0,
          ),
          borderRadius: ${fieldValues.focusErrorBorderRadius} ?? BorderRadius.zero,
          gapPadding: ${fieldValues.focusErrorGapPadding} ?? 4.0,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ${fieldValues.disabledBorderColor} ?? Colors.transparent,
            width: ${fieldValues.disabledBorderWidth} ?? 1.0,
            style: ${fieldValues.disabledBorderStyle} ?? BorderStyle.solid,
            strokeAlign: ${fieldValues.disabledStrokeAlign} ?? 1.0,
          ),
          borderRadius: ${fieldValues.disabledBorderRadius} ?? BorderRadius.zero,
          gapPadding: ${fieldValues.disabledGapPadding} ?? 4.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ${fieldValues.enabledBorderColor} ?? Colors.transparent,
            width: ${fieldValues.enabledBorderWidth} ?? 1.0,
            style: ${fieldValues.enabledBorderStyle} ?? BorderStyle.solid,
            strokeAlign: ${fieldValues.enabledStrokeAlign} ?? 1.0,
          ),
          borderRadius: ${fieldValues.enabledBorderRadius} ?? BorderRadius.zero,
          gapPadding: ${fieldValues.enabledGapPadding} ?? 4.0,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ${fieldValues.borderColor} ?? Colors.transparent,
            width: ${fieldValues.borderWidth} ?? 1.0,
            style: ${fieldValues.borderStyle} ?? BorderStyle.solid,
            strokeAlign: ${fieldValues.strokeAlign} ?? 1.0,
          ),
          borderRadius: ${fieldValues.borderRadius} ?? BorderRadius.zero,
          gapPadding: ${fieldValues.gapPadding} ?? 4.0,
        ),
        enabled: ${fieldValues.enabled} ?? true,
        semanticCounterText: ${fieldValues.semanticCounterText},
        alignLabelWithHint: ${fieldValues.alignLabelWithHint},
        constraints: BoxConstraints(
          maxHeight: ${fieldValues.maxHeight} ?? double.infinity,
          minHeight: ${fieldValues.minHeight} ?? 0.0,
          maxWidth: ${fieldValues.maxWidth} ?? double.infinity,
          minWidth: ${fieldValues.minWidth} ?? 0.0,
        ),
      ),
      keyboardType: ${fieldValues.keyboardType},
      textInputAction: ${fieldValues.textInputAction},
      textCapitalization:
          ${fieldValues.textCapitalization} ?? TextCapitalization.none,
      style: ${fieldValues.style},
      textAlign: ${fieldValues.textAlign} ?? TextAlign.start,
      textAlignVertical: ${fieldValues.textAlignVertical},
      textDirection: ${fieldValues.textDirection},
      readOnly: ${fieldValues.readOnly} ?? false,
      showCursor: ${fieldValues.showCursor},
      autofocus: ${fieldValues.autofocus} ?? false,
      obscuringCharacter: ${fieldValues.obscuringCharacter} ?? "*",
      obscureText: ${fieldValues.obscureText} ?? false,
      autocorrect: ${fieldValues.autocorrect} ?? true,
      smartDashesType: ${fieldValues.smartDashesType},
      smartQuotesType: ${fieldValues.smartQuotesType},
      enableSuggestions: ${fieldValues.enableSuggestions} ?? true,
      maxLines: ${fieldValues.maxLines} ?? 1,
      minLines: ${fieldValues.minLines},
      expands: ${fieldValues.expands} ?? false,
      maxLength: ${fieldValues.maxLength},
      maxLengthEnforcement: ${fieldValues.maxLengthEnforcement},
      inputFormatters: const [],
      enabled: ${fieldValues.enabledText},
      cursorWidth: ${fieldValues.cursorWidth} ?? 2.0,
      cursorHeight: ${fieldValues.cursorHeight},
      cursorRadius: Radius.circular(${fieldValues.cursorRadius} ?? 0.0),
      cursorOpacityAnimates: ${fieldValues.cursorOpacityAnimates},
      cursorColor: ${fieldValues.cursorColor},
      selectionHeightStyle:
          ${fieldValues.selectionHeightStyle} ?? BoxHeightStyle.tight,
      selectionWidthStyle:
          ${fieldValues.selectionWidthStyle} ?? BoxWidthStyle.tight,
      keyboardAppearance: ${fieldValues.keyboardAppearance},
      scrollPadding: ${fieldValues.scrollPadding} ?? const EdgeInsets.all(2.0),
      dragStartBehavior:
          ${fieldValues.dragStartBehavior} ?? DragStartBehavior.start,
      enableInteractiveSelection: ${fieldValues.enableInteractiveSelection},
      mouseCursor: ${fieldValues.mouseCursor},
      clipBehavior: ${fieldValues.clipBehavior} ?? Clip.none,
      restorationId: ${fieldValues.restorationId},
      scribbleEnabled: ${fieldValues.scribbleEnabled} ?? true,
      enableIMEPersonalizedLearning:
          ${fieldValues.enableIMEPersonalizedLearning} ?? true,
      canRequestFocus: ${fieldValues.canRequestFocus} ?? true,
      magnifierConfiguration: TextMagnifierConfiguration.disabled,
    );
  ''';

  @override
  TextFieldProperties get fieldValues => (
        // Icon
        iconColor: getValueOf('iconColor'),
        icon: getValueOf('icon'),

        // Label
        label: getValueOf('label'),
        labelText: getValueOf('labelText'),
        labelStyle: getValueOf('labelStyle'),
        floatingLabelStyle: getValueOf('floatingLabelStyle'),

        // Helper Text
        helperText: getValueOf('helperText'),
        helperStyle: getValueOf('helperStyle'),
        helperMaxLines: getValueOf('helperMaxLines'),

        // Hint Text
        hintText: getValueOf('hintText'),
        hintStyle: getValueOf('hintStyle'),
        hintTextDirection: getValueOf('hintTextDirection'),
        hintMaxLines: getValueOf('hintMaxLines'),

        // Error
        error: getValueOf('error'),
        errorText: getValueOf('errorText'),
        errorStyle: getValueOf('errorStyle'),
        errorMaxLines: getValueOf('errorMaxLines'),

        // Floating Label Alignment
        floatingLabelAlignment: getValueOf('floatingLabelAlignment'),

        // Others
        isCollapsed: getValueOf('isCollapsed'),
        isDense: getValueOf('isDense'),
        contentPadding: getValueOf('contentPadding'),
        prefixIcon: getValueOf('prefixIcon'),
        prefixMaxHeight: getValueOf('prefixMaxHeight'),
        prefixMinHeight: getValueOf('prefixMinHeight'),
        prefixMaxWidth: getValueOf('prefixMaxWidth'),
        prefixMinWidth: getValueOf('prefixMinWidth'),
        prefix: getValueOf('prefix'),
        prefixText: getValueOf('prefixText'),
        prefixStyle: getValueOf('prefixStyle'),
        prefixIconColor: getValueOf('prefixIconColor'),
        suffixIcon: getValueOf('suffixIcon'),
        suffixMaxHeight: getValueOf('suffixMaxHeight'),
        suffixMinHeight: getValueOf('suffixMinHeight'),
        suffixMaxWidth: getValueOf('suffixMaxWidth'),
        suffixMinWidth: getValueOf('suffixMinWidth'),
        suffixText: getValueOf('suffixText'),
        suffixStyle: getValueOf('suffixStyle'),
        suffixIconColor: getValueOf('suffixIconColor'),
        counter: getValueOf('counter'),
        counterText: getValueOf('counterText'),
        counterStyle: getValueOf('counterStyle'),
        filled: getValueOf('filled'),
        fillColor: getValueOf('fillColor'),
        focusColor: getValueOf('focusColor'),
        hoverColor: getValueOf('hoverColor'),

        // Error Border
        errorBorderColor: getValueOf('errorBorderColor'),
        errorBorderWidth: getValueOf('errorBorderWidth'),
        errorBorderRadius: getValueOf('errorBorderRadius'),
        errorBorderStyle: getValueOf('errorBorderStyle'),
        errorStrokeAlign: getValueOf('errorStrokeAlign'),
        errorGapPadding: getValueOf('errorGapPadding'),

        // Focus Border
        focusBorderColor: getValueOf('focusBorderColor'),
        focusBorderWidth: getValueOf('focusBorderWidth'),
        focusBorderRadius: getValueOf('focusBorderRadius'),
        focusBorderStyle: getValueOf('focusBorderStyle'),
        focusStrokeAlign: getValueOf('focusStrokeAlign'),
        focusGapPadding: getValueOf('focusGapPadding'),

        // Focus Error Border
        focusErrorBorderColor: getValueOf('focusErrorBorderColor'),
        focusErrorBorderWidth: getValueOf('focusErrorBorderWidth'),
        focusErrorBorderRadius: getValueOf('focusErrorBorderRadius'),
        focusErrorBorderStyle: getValueOf('focusErrorBorderStyle'),
        focusErrorStrokeAlign: getValueOf('focusErrorStrokeAlign'),
        focusErrorGapPadding: getValueOf('focusErrorGapPadding'),

        // Disabled Border
        disabledBorderColor: getValueOf('disabledBorderColor'),
        disabledBorderWidth: getValueOf('disabledBorderWidth'),
        disabledBorderRadius: getValueOf('disabledBorderRadius'),
        disabledBorderStyle: getValueOf('disabledBorderStyle'),
        disabledStrokeAlign: getValueOf('disabledStrokeAlign'),
        disabledGapPadding: getValueOf('disabledGapPadding'),

        // Enabled Border
        enabledBorderColor: getValueOf('enabledBorderColor'),
        enabledBorderWidth: getValueOf('enabledBorderWidth'),
        enabledBorderRadius: getValueOf('enabledBorderRadius'),
        enabledBorderStyle: getValueOf('enabledBorderStyle'),
        enabledStrokeAlign: getValueOf('enabledStrokeAlign'),
        enabledGapPadding: getValueOf('enabledGapPadding'),

        // General Border
        borderColor: getValueOf('borderColor'),
        borderWidth: getValueOf('borderWidth'),
        borderRadius: getValueOf('borderRadius'),
        borderStyle: getValueOf('borderStyle'),
        strokeAlign: getValueOf('strokeAlign'),
        gapPadding: getValueOf('gapPadding'),

        // Other properties
        enabled: getValueOf('enabled'),
        semanticCounterText: getValueOf('semanticCounterText'),
        alignLabelWithHint: getValueOf('alignLabelWithHint'),
        maxHeight: getValueOf('maxHeight'),
        minHeight: getValueOf('minHeight'),
        maxWidth: getValueOf('maxWidth'),
        minWidth: getValueOf('minWidth'),
        keyboardType: getValueOf('keyboardType'),
        textInputAction: getValueOf('textInputAction'),
        textCapitalization: getValueOf('textCapitalization'),
        style: getValueOf('style'),
        textAlign: getValueOf('textAlign'),
        textAlignVertical: getValueOf('textAlignVertical'),
        textDirection: getValueOf('textDirection'),
        readOnly: getValueOf('readOnly'),
        showCursor: getValueOf('showCursor'),
        autofocus: getValueOf('autofocus'),
        obscuringCharacter: getValueOf('obscuringCharacter'),
        obscureText: getValueOf('obscureText'),
        autocorrect: getValueOf('autocorrect'),
        smartDashesType: getValueOf('smartDashesType'),
        smartQuotesType: getValueOf('smartQuotesType'),
        enableSuggestions: getValueOf('enableSuggestions'),
        maxLines: getValueOf('maxLines'),
        minLines: getValueOf('minLines'),
        expands: getValueOf('expands'),
        maxLength: getValueOf('maxLength'),
        maxLengthEnforcement: getValueOf('maxLengthEnforcement'),
        enabledText: getValueOf('enabledText'),
        cursorWidth: getValueOf('cursorWidth'),
        cursorHeight: getValueOf('cursorHeight'),
        cursorRadius: getValueOf('cursorRadius'),
        cursorOpacityAnimates: getValueOf('cursorOpacityAnimates'),
        cursorColor: getValueOf('cursorColor'),
        selectionHeightStyle: getValueOf('selectionHeightStyle'),
        selectionWidthStyle: getValueOf('selectionWidthStyle'),
        keyboardAppearance: getValueOf('keyboardAppearance'),
        scrollPadding: getValueOf('scrollPadding'),
        dragStartBehavior: getValueOf('dragStartBehavior'),
        enableInteractiveSelection: getValueOf('enableInteractiveSelection'),
        mouseCursor: getValueOf('mouseCursor'),
        clipBehavior: getValueOf('clipBehavior'),
        restorationId: getValueOf('restorationId'),
        scribbleEnabled: getValueOf('scribbleEnabled'),
        enableIMEPersonalizedLearning:
            getValueOf('enableIMEPersonalizedLearning'),
        canRequestFocus: getValueOf('canRequestFocus'),
      );

  @override
  void registerFields() {
    // Icon
    colorField(id: "iconColor", title: "Icon Color");
    iconDataField(id: "icon", title: "Icon");

    // Label
    iconDataField(id: "label", title: "Label",initialValue: null);
    stringField(id: "labelText", title: "Label Text",);
    iconDataField(id: "labelStyle", title: "Label Style");
    iconDataField(id: "floatingLabelStyle", title: "Floating Label Style");

    // Helper Text
    stringField(id: "helperText", title: "Helper Text", initialValue: "Helper Text");
    iconDataField(id: "helperStyle", title: "Helper Style");
    intField(id: "helperMaxLines", title: "Helper MaxLines");

    // Hint Text
    stringField(id: "hintText", title: "Hint Text",initialValue: "Hint Text");
    iconDataField(id: "hintStyle", title: "Hint Style");
    textDirectionField(id: "hintTextDirection", title: "Hint Text Direction");
    intField(id: "hintMaxLines", title: "Hint Max Lines");

    // Error
    iconDataField(id: "error", title: "Error");
    stringField(id: "errorText", title: "Error Text");
    iconDataField(id: "errorStyle", title: "Error Style");
    intField(id: "errorMaxLines", title: "Error Max Lines");

    // Floating Label Alignment
    listField(
      id: "floatingLabelAlignment",
      title: "Floating Label Alignment",
      values: [FloatingLabelAlignment.start, FloatingLabelAlignment.center],
    );

    // Others
    booleanField(id: "isCollapsed", title: "IsCollapsed");
    booleanField(id: "isDense", title: "IsDense");
    edgeInsetsField(id: "contentPadding", title: "Content Padding");
    iconDataField(id: "prefixIcon", title: "Prefix Icon", initialValue: Icons.email);

    doubleField(id: "prefixMaxHeight", title: "Prefix Icon Maximum Height");
    doubleField(id: "prefixMinHeight", title: "Prefix Icon Minimum Height");
    doubleField(id: "prefixMaxWidth", title: "PrefixIcon Maximum Width");
    doubleField(id: "prefixMinWidth", title: "PrefixIcon Minimum Width");

    iconDataField(id: "prefix", title: "Prefix",);
    stringField(id: "prefixText", title: "Prefix Text");
    iconDataField(id: "prefixStyle", title: "Prefix Style");
    colorField(id: "prefixIconColor", title: "Prefix Icon Color", initialValue: themeColorNotifier.value);

    iconDataField(id: "suffixIcon", title: "Suffix Icon", initialValue: Icons.arrow_forward);

    doubleField(id: "suffixMaxHeight", title: "Suffix Icon Maximum Height");
    doubleField(id: "suffixMinHeight", title: "Suffix Icon Minimum Height");
    doubleField(id: "suffixMaxWidth", title: "Suffix Icon Maximum Width");
    doubleField(id: "suffixMinWidth", title: "Suffix Icon Minimum Width");

    stringField(id: "suffixText", title: "Suffix Text");
    iconDataField(id: "suffixStyle", title: "Suffix Style");
    colorField(id: "suffixIconColor", title: "Suffix Icon Color", initialValue: themeColorNotifier.value);

    iconDataField(id: "counter", title: "Counter");
    stringField(id: "counterText", title: "Counter Text");
    iconDataField(id: "counterStyle", title: "Counter Style");
    booleanField(id: "filled", title: "Filled", initialValue: true);
    colorField(id: "fillColor", title: "Fill Color",initialValue: Colors.grey[200]);
    colorField(id: "focusColor", title: "Focus Color",initialValue: themeColorNotifier.value.withOpacity(0.5));
    colorField(id: "hoverColor", title: "Hover Color", initialValue: Colors.grey[100]);

    // Error Border
    colorField(id: "errorBorderColor", title: "Error Border Color",initialValue: Colors.grey);
    doubleField(id: "errorBorderWidth", title: "Error Border Width");
    borderRadiusField(id: "errorBorderRadius", title: "Error Border Radius", initialValue: BorderRadius.circular(8.0));
    listField(
      id: "errorBorderStyle",
      title: "Error Border Style",
      values: BorderStyle.values,
    );
    doubleField(id: "errorStrokeAlign", title: "Error Stroke Align");
    doubleField(id: "errorGapPadding", title: "Error Gap Padding");

    // Focus Border
    colorField(id: "focusBorderColor", title: "Focus Border Color");
    doubleField(id: "focusBorderWidth", title: "Focus Border Width");
    borderRadiusField(id: "focusBorderRadius", title: "Focus Border Radius", initialValue: BorderRadius.circular(8.0));
    listField(
      id: "focusBorderStyle",
      title: "Focus Border Style",
      values: BorderStyle.values,
    );
    doubleField(id: "focusStrokeAlign", title: "Focus Stroke Align");
    doubleField(id: "focusGapPadding", title: "Focus Gap Padding");

    // Focus Error Border
    colorField(id: "focusErrorBorderColor", title: "Focus Error Border Color");
    doubleField(id: "focusErrorBorderWidth", title: "Focus Error Border Width");
    borderRadiusField(
      id: "focusErrorBorderRadius",
      title: "Focus Error Border Radius",
    );
    listField(
      id: "focusErrorBorderStyle",
      title: "Focus Error Border Style",
      values: BorderStyle.values,
    );
    doubleField(
      id: "focusErrorStrokeAlign",
      title: "Focus Error Stroke Align",
    );
    doubleField(id: "focusErrorGapPadding", title: "Focus Error Gap Padding");

    // Disabled Border
    colorField(id: "disabledBorderColor", title: "Disabled Border Color");
    doubleField(id: "disabledBorderWidth", title: "Disabled Border Width");
    borderRadiusField(
      id: "disabledBorderRadius",
      title: "Disabled Border Radius",
    );
    listField(
      id: "disabledBorderStyle",
      title: "Disabled Border Style",
      values: BorderStyle.values,
    );
    doubleField(id: "disabledStrokeAlign", title: "Disabled Stroke Align");
    doubleField(id: "disabledGapPadding", title: "Disabled Gap Padding");

    // Enabled Border
    colorField(id: "enabledBorderColor", title: "Enabled Border Color");
    doubleField(id: "enabledBorderWidth", title: "Enabled Border Width");
    borderRadiusField(
      id: "enabledBorderRadius",
      title: "Enabled Border Radius",
    );
    listField(
      id: "enabledBorderStyle",
      title: "Enabled Border Style",
      values: BorderStyle.values,
    );
    doubleField(id: "enabledStrokeAlign", title: "Enabled Stroke Align");
    doubleField(id: "enabledGapPadding", title: "Enabled Gap Padding");

    // General Border
    colorField(id: "borderColor", title: "Border Color");
    doubleField(id: "borderWidth", title: "Border Width");
    borderRadiusField(id: "borderRadius", title: "Border Radius");
    listField(
      id: "borderStyle",
      title: "Border Style",
      values: BorderStyle.values,
    );
    doubleField(id: "strokeAlign", title: "Stroke Align");
    doubleField(id: "gapPadding", title: "Gap Padding");

    booleanField(id: "enabled", title: "Enabled");
    stringField(id: "semanticCounterText", title: "Semantic Counter Text");
    booleanField(id: "alignLabelWithHint", title: "Align Label With Hint");
    doubleField(id: "maxHeight", title: "Max Height");
    doubleField(id: "minHeight", title: "Min Height");
    doubleField(id: "maxWidth", title: "Max Width");
    doubleField(id: "minWidth", title: "Min Width");
    listField(
        id: "keyboardType",
        title: "Keyboard Type",
        values: TextInputType.values);
    listField(
        id: "textInputAction",
        title: "Text Input Action",
        values: TextInputAction.values);
    listField(
      id: "textCapitalization",
      title: "Text Capitalization",
      values: TextCapitalization.values,
    );
    iconDataField(id: "style", title: "Style");
    listField(id: "textAlign", title: "Text Align", values: TextAlign.values);
    listField(
      id: "textAlignVertical",
      title: "Text Align Vertical",
      values: [
        TextAlignVertical.bottom,
        TextAlignVertical.top,
        TextAlignVertical.center
      ],
    );
    textDirectionField(id: "textDirection", title: "Text Direction");
    booleanField(id: "readOnly", title: "Read Only");
    booleanField(id: "showCursor", title: "Show Cursor");
    booleanField(id: "autofocus", title: "Autofocus");
    stringField(id: "obscuringCharacter", title: "Obscuring Character");
    booleanField(id: "obscureText", title: "Obscure Text");
    booleanField(id: "autocorrect", title: "Autocorrect");
    listField(
        id: "smartDashesType",
        title: "Smart Dashes Type",
        values: SmartDashesType.values);
    listField(
        id: "smartQuotesType",
        title: "Smart Quotes Type",
        values: SmartQuotesType.values);
    booleanField(id: "enableSuggestions", title: "Enable Suggestions");
    intField(id: "maxLines", title: "Max Lines");
    intField(id: "minLines", title: "Min Lines");
    booleanField(id: "expands", title: "Expands");
    intField(id: "maxLength", title: "Max Length");
    listField(
        id: "maxLengthEnforcement",
        title: "Max Length Enforcement",
        values: MaxLengthEnforcement.values);
    booleanField(id: "enabledText", title: "Enabled Text");
    doubleField(id: "cursorWidth", title: "Cursor Width");
    doubleField(id: "cursorHeight", title: "Cursor Height");
    doubleField(id: "cursorRadius", title: "Cursor Radius");
    booleanField(id: "cursorOpacityAnimates", title: "Cursor Opacity Animates");
    colorField(id: "cursorColor", title: "Cursor Color", initialValue: themeColorNotifier.value);
    listField(
        id: "selectionHeightStyle",
        title: "Selection Height Style",
        values: BoxHeightStyle.values);
    listField(
        id: "selectionWidthStyle",
        title: "Selection Width Style",
        values: BoxWidthStyle.values);
    listField(
      id: "keyboardAppearance",
      title: "Keyboard Appearance",
      values: Brightness.values,
    );
    edgeInsetsField(id: "scrollPadding", title: "Scroll Padding");
    listField(
        id: "dragStartBehavior",
        title: "Drag Start Behavior",
        values: Brightness.values);
    booleanField(
      id: "enableInteractiveSelection",
      title: "Enable Interactive Selection",
    );
    listField(
      id: "mouseCursor",
      title: "Mouse Cursor",
      values: [
        MouseCursor.defer,
        MouseCursor.uncontrolled,
      ],
    );
    clipField(id: "clipBehavior", title: "Clip Behavior");
    stringField(id: "restorationId", title: "Restoration Id");
    booleanField(id: "scribbleEnabled", title: "Scribble Enabled");
    booleanField(
      id: "enableIMEPersonalizedLearning",
      title: "Enable IME Personalized Learning",
    );
    booleanField(id: "canRequestFocus", title: "Can Request Focus");
  }
}
