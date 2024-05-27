import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const BottomButton({@required this.onTap, @required this.buttonText});

  final VoidCallback? onTap;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: KbottomColor,
      padding: const EdgeInsets.all(8.0),
      //margin: const EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: KbottomHeight,
      child: TextButton(
        onPressed: onTap,
        child:  Text(
          buttonText!,
          style: KButtonStyle
        ),
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RoundButton({this.icon, this.onRoundButton});

  final IconData? icon;
  final VoidCallback? onRoundButton;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onRoundButton,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 43.0,
        height: 53.0,
      ),
      child: Icon(icon),
    );
  }
}
