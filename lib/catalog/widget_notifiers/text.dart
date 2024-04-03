import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/main.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/string_field.dart';
import 'package:flutter_quest/property_fields/text_direction_field.dart';
import 'package:flutter_quest/property_fields/text_style_field.dart';

typedef TextProperties = ({
  String? data,
  TextStyle? style,
  String? fontFamily,
  double? height,
  TextLeadingDistribution? leadingDistribution,
  double? leading,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  bool? forceStrutHeight,
  String? debugLabel,
  String? package,
  TextAlign? textAlign,
  TextDirection? textDirection,
  String? locale,
  bool? softWrap,
  TextOverflow? overflow,
  int? maxLines,
  String? semanticsLabel,
  TextWidthBasis? textWidthBasis,
  TextHeightBehavior? textHeightBehavior,
  Color? selectionColor,
});

class TextPropertiesNotifier extends PropertiesNotifier<TextProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Text(
      fieldValues.data ?? "",
      style: fieldValues.style,
      strutStyle: StrutStyle(
        fontFamily: fieldValues.fontFamily,
        height: fieldValues.height,
        leadingDistribution: fieldValues.leadingDistribution,
        leading: fieldValues.leading,
        fontWeight: fieldValues.fontWeight,
        fontStyle: fieldValues.fontStyle,
        forceStrutHeight: fieldValues.forceStrutHeight,
        debugLabel: fieldValues.debugLabel,
        package: fieldValues.package,
      ),
      textAlign: fieldValues.textAlign ?? TextAlign.start,
      textDirection: fieldValues.textDirection,
      locale: Locale(fieldValues.locale ?? " "),
      softWrap: fieldValues.softWrap ?? true,
      overflow: fieldValues.overflow ?? TextOverflow.clip,
      maxLines: fieldValues.maxLines,
      semanticsLabel: fieldValues.semanticsLabel,
      textWidthBasis: fieldValues.textWidthBasis ?? TextWidthBasis.parent,
      textHeightBehavior:
          fieldValues.textHeightBehavior ?? const TextHeightBehavior(),
      selectionColor: fieldValues.selectionColor,
    );
  }

  @override
  String get code => '''
   Text(
      '${fieldValues.data ?? ""}',
      style: ${fieldValues.style},
      strutStyle: StrutStyle(
        fontFamily: ${fieldValues.fontFamily},
        height: ${fieldValues.height},
        leadingDistribution: ${fieldValues.leadingDistribution},
        leading: ${fieldValues.leading},
        fontWeight: ${fieldValues.fontWeight},
        fontStyle: ${fieldValues.fontStyle},
        forceStrutHeight: ${fieldValues.forceStrutHeight},
        debugLabel: ${fieldValues.debugLabel},
        package: ${fieldValues.package},
      ),
      textAlign: ${fieldValues.textAlign ?? TextAlign.start},
      textDirection: ${fieldValues.textDirection},
      locale: Locale('${fieldValues.locale ?? " "}'),
      softWrap: ${fieldValues.softWrap ?? true},
      overflow: ${fieldValues.overflow ?? TextOverflow.clip},
      maxLines: ${fieldValues.maxLines},
      semanticsLabel: ${fieldValues.semanticsLabel},
      textWidthBasis: ${fieldValues.textWidthBasis ?? TextWidthBasis.parent},
      textHeightBehavior: ${fieldValues.textHeightBehavior ?? const TextHeightBehavior()},
      selectionColor: ${fieldValues.selectionColor},
    );
  ''';

  @override
  TextProperties get fieldValues => (
        data: getValueOf('data'),
        style: getValueOf('style'),
        fontFamily: getValueOf('fontFamily'),
        height: getValueOf('height'),
        leadingDistribution: getValueOf('leadingDistribution'),
        leading: getValueOf('leading'),
        fontWeight: getValueOf('fontWeight'),
        fontStyle: getValueOf('fontStyle'),
        forceStrutHeight: getValueOf('forceStrutHeight'),
        debugLabel: getValueOf('debugLabel'),
        package: getValueOf('package'),
        textAlign: getValueOf('textAlign'),
        textDirection: getValueOf('textDirection'),
        locale: getValueOf('locale'),
        softWrap: getValueOf('softWrap'),
        overflow: getValueOf('overflow'),
        maxLines: getValueOf('maxLines'),
        semanticsLabel: getValueOf('semanticsLabel'),
        textWidthBasis: getValueOf('textWidthBasis'),
        textHeightBehavior: getValueOf('textHeightBehavior'),
        selectionColor: getValueOf('selectionColor'),
      );

  @override
  void registerFields() {
    stringField(id: "data", title: "Write Text", initialValue: "Hello World");
    textStyleField(id: "style", title: "Text Style");
    stringField(id: "fontFamily", title: "fontFamily");
    doubleField(id: "height", title: "height");
    listField(
      id: "leadingDistribution",
      title: "leadingDistribution",
      values: TextLeadingDistribution.values,
    );
    doubleField(id: "leading", title: "leading");
    listField(id: "fontWeight", title: "fontWeight", values: FontWeight.values);
    listField(id: "fontStyle", title: "fontStyle", values: FontStyle.values);
    booleanField(id: "forceStrutHeight", title: "forceStrutHeight");
    stringField(id: "debugLabel", title: "debugLabel");
    stringField(id: "package", title: "Package");
    listField(id: "textAlign", title: "textAlign", values: TextAlign.values);
    textDirectionField(id: "textDirection", title: "Text Direction");
    stringField(id: "locale", title: "Locale String");
    booleanField(id: "softWrap", title: "softWrap");
    listField(id: "overflow", title: "overflow", values: TextOverflow.values);
    intField(id: "maxLines", title: "maxLines");
    stringField(id: "semanticsLabel", title: "semanticsLabel");
    listField(
      id: "textWidthBasis",
      title: "textWidthBasis",
      values: TextWidthBasis.values,
    );
    colorField(id: "selectionColor", title: "selectionColor",initialValue: themeColorNotifier.value);
  }
}
