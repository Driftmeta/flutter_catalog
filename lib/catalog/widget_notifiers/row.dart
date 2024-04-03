import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/cross_axis_alignemnt_field.dart';
import 'package:flutter_quest/property_fields/list_field.dart';
import 'package:flutter_quest/property_fields/main_axis_alignment_field.dart';
import 'package:flutter_quest/property_fields/main_axis_size_field.dart';
import 'package:flutter_quest/property_fields/text_direction_field.dart';
import 'package:flutter_quest/property_fields/vertical_direction_field.dart';

import '../../main.dart';

typedef RowProperties = ({
  MainAxisAlignment? mainAxisAlignment,
  MainAxisSize? mainAxisSize,
  CrossAxisAlignment? crossAxisAlignment,
  TextDirection? textDirection,
  VerticalDirection? verticalDirection,
  TextBaseline? textBaseLine,
});

class RowPropertiesNotifier extends PropertiesNotifier<RowProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return Row(
      mainAxisAlignment:
          fieldValues.mainAxisAlignment ?? MainAxisAlignment.start,
      mainAxisSize: fieldValues.mainAxisSize ?? MainAxisSize.max,
      crossAxisAlignment:
          fieldValues.crossAxisAlignment ?? CrossAxisAlignment.center,
      textDirection: fieldValues.textDirection,
      verticalDirection:
          fieldValues.verticalDirection ?? VerticalDirection.down,
      textBaseline: fieldValues.textBaseLine,
      children:  [
        Container(
          height: 90,
          width: 90,
          color: themeColorNotifier.value,
        ),
        Container(
          height: 90,
          width: 90,
          color: themeColorNotifier.value.withOpacity(0.6),
        ),
        Container(
          height: 90,
          width: 90,
          color: themeColorNotifier.value.withOpacity(0.3),
        ),
      ],
    );
  }

  @override
  String get code => '''
   Row(
      mainAxisAlignment: ${fieldValues.mainAxisAlignment ?? MainAxisAlignment.start},
      mainAxisSize: ${fieldValues.mainAxisSize ?? MainAxisSize.max},
      crossAxisAlignment: ${fieldValues.crossAxisAlignment ?? CrossAxisAlignment.center},
      textDirection: ${fieldValues.textDirection},
      verticalDirection: ${fieldValues.verticalDirection ?? VerticalDirection.down},
      textBaseline: ${fieldValues.textBaseLine},
      children: [],
    );
  ''';

  @override
  RowProperties get fieldValues => (
        mainAxisAlignment: getValueOf('mainAxisAlignment'),
        mainAxisSize: getValueOf('mainAxisSize'),
        crossAxisAlignment: getValueOf('crossAxisAlignment'),
        textDirection: getValueOf('textDirection'),
        verticalDirection: getValueOf('verticalDirection'),
        textBaseLine: getValueOf('textBaseLine'),
      );

  @override
  void registerFields() {
    mainAxisAlignmentField(
      id: "mainAxisAlignment",
      title: "Main Axis Alignment",
    );
    mainAxisSizeField(
      id: "mainAxisSize",
      title: "Main Axis Size",
    );
    crossAxisAlignmentField(
      id: "crossAxisAlignment",
      title: "Cross Axis Alignment",
    );
    textDirectionField(
      id: "textDirection",
      title: "Text Direction",
    );
    verticalDirectionField(
      id: "verticalDirection",
      title: "Vertical Direction",
    );
    listField<TextBaseline>(
      id: "textBaseLine",
      title: "TextBaseLine",
      values: TextBaseline.values,
    );
  }
}
