import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/property_fields/number_field.dart';

typedef SizedBoxProperties = ({
  double? height,
  double? width,
});

class SizedBoxPropertiesNotifier
    extends PropertiesNotifier<SizedBoxProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    return SizedBox(
      height: fieldValues.height,
      width: fieldValues.width,
      child: ColoredBox(
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  @override
  String get code => '''
   SizedBox(
      height: ${fieldValues.height},
      width: ${fieldValues.width},
      child: ColoredBox(
        color: Theme.of(context).primaryColor,
      ),
    );
  ''';

  @override
  SizedBoxProperties get fieldValues => (
        height: getValueOf('height'),
        width: getValueOf('width'),
      );

  @override
  void registerFields() {
    heightField(initialValue: 100);
    widthField(initialValue: 100);
  }
}
