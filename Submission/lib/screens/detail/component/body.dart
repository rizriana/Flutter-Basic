import 'package:flutter/material.dart';
import 'package:last_sub/model/movies.dart';
import 'package:last_sub/screens/detail/component/backdrop.dart';
import 'package:last_sub/screens/detail/component/genre.dart';
import 'package:last_sub/screens/detail/component/title_header.dart';

import '../../../const.dart';

class Body extends StatelessWidget {
  final Movies movies;

  const Body({Key key, this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Backdrop(size: size, movies: movies,),
          SizedBox(height: kDefaultPadding / 2),
          TitleHeader(movies : movies),
          Genres(movies: movies),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Overview",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movies.overview,
              style: TextStyle(
                color: Color(0xFF737599),
                height: 1.5
              ),
            ),
          ),
        ],
      ),
    );
  }
}
