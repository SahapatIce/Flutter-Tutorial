import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonCommon extends StatelessWidget {
  Function onPress;
  Widget? wChild;
  ButtonStyle? wBtnStyle;
  Color? wBackgroundColor;
  ButtonCommon(
      {super.key,
      required this.onPress,
      this.wChild,
      this.wBtnStyle,
      this.wBackgroundColor});

  @override
  Widget build(BuildContext context) {
    ButtonStyle defaults = ElevatedButton.styleFrom(
        elevation: 10,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))));
    return ElevatedButton(
      style: wBtnStyle != null
          ? wBtnStyle!.merge(defaults)
          : defaults.merge(ElevatedButton.styleFrom(
              backgroundColor: wBackgroundColor,
            )),
      onPressed: () {
        FocusManager.instance.primaryFocus?.unfocus();
        onPress();
      },
      child: wChild,
    );
  }
}
