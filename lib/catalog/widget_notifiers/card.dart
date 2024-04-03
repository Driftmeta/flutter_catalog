import 'package:flutter/material.dart';
import 'package:flutter_quest/core/property_provider.dart';
import 'package:flutter_quest/main.dart';
import 'package:flutter_quest/property_fields/boolean_field.dart';
import 'package:flutter_quest/property_fields/clip_field.dart';
import 'package:flutter_quest/property_fields/color_field.dart';
import 'package:flutter_quest/property_fields/edge_insets_field.dart';
import 'package:flutter_quest/property_fields/number_field.dart';
import 'package:flutter_quest/property_fields/shape_border_field.dart';

typedef CardProperties = ({
  double? elevation,
  Color? color,
  Color? shadowColor,
  Color? surfaceTintColor,
  ShapeBorder? shape,
  bool? borderForeground,
  EdgeInsets? margin,
  Clip? clipBehavior,
  bool? semanticContainer,
});

class CardPropertiesNotifier extends PropertiesNotifier<CardProperties> {
  @override
  Widget buildPreview(BuildContext context) {
    // TODO: User fieldValues instead
    return Card(
      color: getValueOf('color'),
      shadowColor: getValueOf('shadowColor'),
      surfaceTintColor: getValueOf('surfaceTintColor'),
      elevation: getValueOf('elevation'),
      shape: getValueOf('shape'),
      borderOnForeground: getValueOf('borderForeground') ?? true,
      margin: getValueOf('margin'),
      clipBehavior: getValueOf('clipBehavior'),
      semanticContainer: getValueOf('semanticContainer') ?? true,
      child: const Center(child: Text("Card")),
    );
  }

  @override
  String get code => '''
    Card(
      color: ${getValueOf('color')},
      shadowColor: ${getValueOf('shadowColor')},
      surfaceTintColor: ${getValueOf('surfaceTintColor')},
      elevation: ${getValueOf('elevation')},
      shape: ${getValueOf('shape')},
      borderOnForeground: ${getValueOf('borderForeground') ?? true},
      margin: ${getValueOf('margin')},
      clipBehavior: ${getValueOf('clipBehavior')},
      semanticContainer: ${getValueOf('semanticContainer') ?? true},
      child: const Center(child: Text("Card")),
    );
  ''';

  @override
  CardProperties get fieldValues => (
        elevation: getValueOf('elevation'),
        color: getValueOf('color'),
        shadowColor: getValueOf('shadowColor'),
        surfaceTintColor: getValueOf('surfaceTintColor'),
        shape: getValueOf('shape'),
        borderForeground: getValueOf('borderForeground'),
        margin: getValueOf('margin'),
        clipBehavior: getValueOf('clipBehavior'),
        semanticContainer: getValueOf('semanticContainer'),
      );

  @override
  void registerFields() {
    doubleField(id: "elevation", title: "Elevation", initialValue: 20.0);
    colorField(id: "color", title: "Color" , initialValue: themeColorNotifier.value);
    colorField(id: "shadowColor", title: "Shadow Color", initialValue: Colors.black);
    colorField(id: "surfaceTintColor", title: "Surface Tint Color");
    shapeBorderField(id: "shape", title: "Shape", initialValue: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)));
    booleanField(id: "borderForeground", title: "Border on Foreground");
    edgeInsetsField(id: "margin", title: "Margin", initialValue: EdgeInsets.all(20.0));
    clipField(id: "clipBehavior", title: "Clip Behavior", initialValue: Clip.none);
    booleanField(id: "semanticContainer", title: "Semantic Container");
  }
}
