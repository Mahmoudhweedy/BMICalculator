import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final Icon genderIcon;
  final String genderType;
  IconContent({this.genderIcon, this.genderType});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        genderIcon,
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderType,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
