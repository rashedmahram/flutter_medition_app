import 'package:flutter/material.dart';

import 'card.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          CategoryCard(
            title: "Diet Recomandation",
            image: "assets/icons/Hamburger.svg",
            press: () {},
          ),
          CategoryCard(
            title: "Yoga",
            image: "assets/icons/yoga.svg",
            press: () {},
          ),
          CategoryCard(
            title: "Meditation",
            image: "assets/icons/Meditation.svg",
            press: () {},
          ),
          CategoryCard(
            title: "Kagel Excrecis",
            image: "assets/icons/Excrecises.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
