import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disabled }

enum IconPosition { left, right }

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType type;


const CustomButton ({
  super key,
  required this.label,
  required this.icon,
  this.iconPosition = IconPosition.left,
  this.type = ButtonType.primary
});

Color get ColorButtom{

  switch(type){
    case ButtonType.primary:
      return Colors.blue;
    
    case ButtonType.secondary:
      return Colors.green;

    case ButtonType.disabled:
      return Colors.grey;

  }
}

@override
Widget build(buildContext context){
  return ElevatedButton(
    onPressed: type == ButtonType.disabled ? null : () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: buttonColor,
      shape: const StadiumBorder(),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if(iconPosition == IconPosition.left)
        Icon(icon),
        const SizedBox(width: 8),

        Text(label),
        const SizedBox(width: 8)
      ],
      ),
  )
}


}


