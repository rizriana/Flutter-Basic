import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:last_sub/const.dart';
import 'package:last_sub/screens/home/component/body.dart';

class MoviesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text('Popular Movies',
          style: TextStyle(color: kTextColor, fontSize: 24)),
      actions: <Widget>[
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: kTextColor,
              ),
              onPressed: () {
                final snackBar = SnackBar(content: Text('In Development'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            );
          },
        ),
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
