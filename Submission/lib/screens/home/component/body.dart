import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last_sub/const.dart';
import 'package:last_sub/model/movies.dart';
import 'package:last_sub/screens/detail/detail_screen.dart';
import 'package:last_sub/screens/home/component/category_list.dart';
import 'package:last_sub/screens/home/component/product_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CategoryList(),
        Expanded(
          child: GridView.builder(
              itemCount: movies.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ProductCard(
                    movies: movies[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            movies: movies[index],
                          ),
                        )),
                  )),
        ),
      ],
    );
  }
}
