import 'package:flutter/material.dart';
import 'package:maditation_app/widgets/bottom_navbar.dart';
import 'package:maditation_app/widgets/homepage_title.dart';
import 'package:maditation_app/widgets/list_view.dart';
import 'package:maditation_app/widgets/menu_wdget.dart';
import 'package:maditation_app/widgets/search_input.dart';
import '../../constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kActiveIconColor.withOpacity(.5),
              image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  MenuWidget(),
                  HomePageTitle(),
                  SearchInput(),
                  ListViewItems(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
