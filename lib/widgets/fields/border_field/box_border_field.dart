import 'package:flutter/material.dart';
import 'package:flutter_quest/widgets/core/property.dart';
import 'package:flutter_quest/widgets/core/property_previewer.dart';
import 'package:flutter_quest/widgets/drop_down_button.dart';
import 'package:flutter_quest/widgets/radio_button.dart';
import 'package:flutter_quest/widgets/text_field.dart';

enum BoxBorderType {
  only,
  all,
  symmetric,
  side,
}

enum StrokeAlign {
  center,
  inside,
  outside,
}

enum StyleBorder {
  solid,
  none,
}

class BoxBorderField extends PropertyWidget<BoxBorder> {
  const BoxBorderField({
    super.key,
    required super.onChanged,
    required super.value,
  });

  @override
  Widget build(BuildContext context) {
    return _BoxBorderField(
      onChanged: onChanged,
      value: value,
    );
  }
}

class _BoxBorderField extends StatefulWidget {
  final void Function(BoxBorder) onChanged;
  final BoxBorder value;

  const _BoxBorderField({
    required this.onChanged,
    required this.value,
  });

  @override
  State<_BoxBorderField> createState() => _BoxBorderFieldState();
}

class _BoxBorderFieldState extends State<_BoxBorderField> {
  BoxBorderType selectedOption = BoxBorderType.all;
  Color color = Colors.black;
  double alignBorder = BorderSide.strokeAlignCenter;
  double borderWidth = 0.0;
  BorderStyle borderStyle = BorderStyle.solid;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          AppDropDownButton(
            selectedOption: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value!;
              });
            },
            items: [
              DropdownMenuItem<BoxBorderType>(
                onTap: () {
                  setState(() {
                    widget.onChanged(
                      Border.all(
                        color: color,
                        style: borderStyle,
                        strokeAlign: alignBorder,
                        width: borderWidth,
                      ),
                    );
                  });
                },
                value: BoxBorderType.all,
                child: label("All"),
              ),
              DropdownMenuItem<BoxBorderType>(
                onTap: () => {
                  setState(() {
                    widget.onChanged(
                      Border.symmetric(
                        horizontal: BorderSide(
                          color: color,
                          style: borderStyle,
                          strokeAlign: alignBorder,
                          width: borderWidth,
                        ),
                        vertical: BorderSide(
                          color: color,
                          style: borderStyle,
                          strokeAlign: alignBorder,
                          width: borderWidth,
                        ),
                      ),
                    );
                  })
                },
                value: BoxBorderType.symmetric,
                child: label("Symmetric"),
              ),
              DropdownMenuItem<BoxBorderType>(
                onTap: () {
                  setState(() {
                    widget.onChanged(
                      Border.all(
                        color: color,
                        style: borderStyle,
                        strokeAlign: alignBorder,
                        width: borderWidth,
                      ),
                    );
                  });
                },
                value: BoxBorderType.only,
                child: label("Only"),
              ),
              DropdownMenuItem<BoxBorderType>(
                onTap: () => {
                  setState(() {
                    widget.onChanged(
                      Border.all(
                        color: color,
                        style: borderStyle,
                        strokeAlign: alignBorder,
                        width: borderWidth,
                      ),
                    );
                  })
                },
                value: BoxBorderType.side,
                child: label("Side"),
              ),
            ],
          ),
          AppRadioButton(isSelected: false, iconPath: "assets/topBorder.svg", onSelected: (){}, onHover: (v){}),
          AppRadioButton(isSelected: false, iconPath: "assets/leftBorder.svg", onSelected: (){}, onHover: (v){}),
          AppRadioButton(isSelected: false, iconPath: "assets/rightBorder.svg", onSelected: (){}, onHover: (v){}),
          AppRadioButton(isSelected: false, iconPath: "assets/bottomBorder.svg", onSelected: (){}, onHover: (v){}),

        ],
      ),
      _BorderProperties(
        onChanged: (value) {
          borderWidth = value.borderWidth;
          color = value.color;
          alignBorder = value.alignBorder;
          borderStyle = value.borderStyle;
        },
      ),
    ]);
  }
}

class _UpdateBorderProperties {
  final double borderWidth;
  final Color color;
  final double alignBorder;
  final BorderStyle borderStyle;

  _UpdateBorderProperties({
    required this.borderWidth,
    required this.color,
    required this.alignBorder,
    required this.borderStyle,
  });
}

class _BorderProperties extends StatefulWidget {
  final void Function(_UpdateBorderProperties) onChanged;

  const _BorderProperties({
    required this.onChanged,
  });

  @override
  State<_BorderProperties> createState() => _BorderPropertiesState();
}

class _BorderPropertiesState extends State<_BorderProperties> {
  double borderWidth = 0.0;
  Color borderColor = Colors.black;
  StrokeAlign selectedAlign = StrokeAlign.center;
  double alignBorder = BorderSide.strokeAlignCenter;
  StyleBorder selectedStyle = StyleBorder.solid;
  BorderStyle borderStyle = BorderStyle.solid;

  @override
  Widget build(BuildContext context) {
    void updateChanges() {
      widget.onChanged(
        _UpdateBorderProperties(
          borderWidth: borderWidth,
          color: borderColor,
          alignBorder: alignBorder,
          borderStyle: borderStyle,
        ),
      );
    }

    return Wrap(
      spacing: 8,
      runSpacing: 16,
      children: [
        BorderWidth(
            onChanged: (value) {
              borderWidth = value;
              updateChanges();
            }),
        BorderColor(colorChanged: (value) {
          borderColor = value;
          updateChanges();
        }),
        AlignBorder(alignChanged: (value) {
          alignBorder = value;
        }),
        BoxBorderStyle(styleChanged: (value) {
          borderStyle = value;
        })
      ],
    );
  }
}

class BorderWidth extends StatelessWidget {
  final Function(double) onChanged;

  BorderWidth({
    super.key,
    required this.onChanged,
  });

  String myValue = "0.0";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 155,
      child: Center(
        child: AppTextField(
          onChanged: (value) {
            onChanged(double.parse(value));
            myValue = value;
          },
          controller: TextEditingController(text: myValue),
          prefix: const Padding(
            padding: EdgeInsets.only(right: 4.0, bottom: 13.0),
            child: Text("W"),
          ),
          contentPadding: const EdgeInsets.only(left: 10, right: 4, bottom: 9),
        ),
      ),
    );
  }
}

class BorderColor extends StatefulWidget {
  final void Function(Color) colorChanged;

  const BorderColor({super.key, required this.colorChanged});

  @override
  State<BorderColor> createState() => _BorderColorState();
}

class _BorderColorState extends State<BorderColor> {
  Color borderColor = Colors.black;
  String myValue = "0.0";

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 30,
        width: 155,
        child: Center(
          child: AppTextField(
            onChanged: (v) {
              setState(() {
                myValue = v;
                borderColor = Color(int.parse("0xFF$v"));
              });
              widget.colorChanged(borderColor);
            },
            controller: TextEditingController(text: myValue),
            contentPadding:
                const EdgeInsets.only(left: 30, right: 4, bottom: 9),
          ),
        ),
      ),
      Positioned(
        top: 5,
        left: 7,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: borderColor,
            borderRadius: BorderRadius.circular(3),
            border: Border.all(
              width: 1,
              color: const Color(0xFFFFFFFF).withOpacity(0.3),
            ),
          ),
        ),
      ),
    ]);
  }
}

class BoxBorderStyle extends StatelessWidget {
  final void Function(BorderStyle) styleChanged;

  BoxBorderStyle({super.key, required this.styleChanged});

  StyleBorder selectedStyle = StyleBorder.solid;
  BorderStyle borderStyle = BorderStyle.solid;

  @override
  Widget build(BuildContext context) {
    return AppDropDownButton(
      selectedOption: selectedStyle,
      onChanged: (value) {
        selectedStyle = value;
      },
      items: [
        DropdownMenuItem<StyleBorder>(
          onTap: () {
            borderStyle = BorderStyle.solid;
            styleChanged(BorderStyle.solid);
          },
          value: StyleBorder.solid,
          child: label("Solid"),
        ),
        DropdownMenuItem<StyleBorder>(
          onTap: () {
            borderStyle = BorderStyle.none;
            styleChanged(BorderStyle.none);
          },
          value: StyleBorder.none,
          child: label("None"),
        ),
      ],
    );
  }
}

class AlignBorder extends StatelessWidget {
  final void Function(double) alignChanged;

  AlignBorder({super.key, required this.alignChanged});

  StrokeAlign selectedAlign = StrokeAlign.center;
  double alignBorder = BorderSide.strokeAlignCenter;

  @override
  Widget build(BuildContext context) {
    return AppDropDownButton(
      selectedOption: selectedAlign,
      onChanged: (value) {
        selectedAlign = value;
      },
      items: [
        DropdownMenuItem<StrokeAlign>(
          onTap: () {
            alignBorder = BorderSide.strokeAlignCenter;
            alignChanged(BorderSide.strokeAlignCenter);
          },
          value: StrokeAlign.center,
          child: label("Center"),
        ),
        DropdownMenuItem<StrokeAlign>(
          onTap: () {
            alignBorder = BorderSide.strokeAlignInside;
            alignChanged(BorderSide.strokeAlignInside);
          },
          value: StrokeAlign.inside,
          child: label("Inside"),
        ),
        DropdownMenuItem<StrokeAlign>(
          onTap: () {
            alignBorder = BorderSide.strokeAlignOutside;
            alignChanged(BorderSide.strokeAlignOutside);
          },
          value: StrokeAlign.outside,
          child: label("Outside"),
        ),
      ],
    );
  }
}

Widget label(String name) {
  return Padding(
    padding: const EdgeInsets.only(left: 8, bottom: 3),
    child: Text(name),
  );
}

class BoxBorderPreviewer extends StatelessWidget {
  const BoxBorderPreviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return PropertyPreviewer<BoxBorder>(
      values: [
        Border.all(color: Colors.black, width: 2.0),
        const Border(
          top: BorderSide.none,
          right: BorderSide.none,
          bottom: BorderSide.none,
          left: BorderSide.none,
        ),
      ],
      propertyBuilder: (onChanged, value) {
        return BoxBorderField(
          onChanged: onChanged,
          value: value,
        );
      },
    );
  }
}
