import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last_sub/model/movies.dart';

import '../../../const.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key key, this.itemIndex, this.movies, this.press})
      : super(key: key);

  final int itemIndex;
  final Movies movies;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [kDefaultShadow],
              ),
              child: Hero(
                tag: "${movies.id}",
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(movies.poster, fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          Container(
            child: Text(
              // products is out demo list
              movies.title,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          Text(
            "${movies.rating}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
