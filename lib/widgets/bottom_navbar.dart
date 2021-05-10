import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtomBarItem(
            pres: () {},
            title: 'Home',
            image: "assets/icons/calendar.svg",
          ),
          ButtomBarItem(
            pres: () {},
            title: 'Home',
            image: "assets/icons/gym.svg",
          ),
          ButtomBarItem(
            pres: () {},
            title: 'Home',
            image: "assets/icons/Settings.svg",
          ),
        ],
      ),
    );
  }
}

class ButtomBarItem extends StatelessWidget {
  const ButtomBarItem({
    Key key,
    this.pres,
    this.image,
    this.title,
    this.isActive = false,
  }) : super(key: key);
  final Function pres;
  final String image, title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pres,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            image,
            color: isActive ? kActiveIconColor : Colors.black,
          ),
          Text(
            title,
            style: TextStyle(
              color: isActive ? kActiveIconColor : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
