import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last_sub/model/movies.dart';
import 'package:last_sub/screens/detail/component/body.dart';

class DetailScreen extends StatelessWidget {
  final Movies movies;

  const DetailScreen({Key key, this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Body(movies: movies),
    );
  }
}