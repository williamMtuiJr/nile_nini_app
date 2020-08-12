import 'package:flutter/material.dart';
import './../constants.dart';

class StretchedToggleButton extends StatelessWidget {
  const StretchedToggleButton({
    Key key,
    @required this.isSelected,
    this.toggleIndex,
    this.label,
  }) : super(key: key);

  final List<bool> isSelected;
  final int toggleIndex;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: isSelected[toggleIndex] ? kButtonColor : kColor13,
          ),
        ),
      ),
    );
  }
}
