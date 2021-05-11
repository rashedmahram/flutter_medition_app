import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maditation_app/widgets/bottom_navbar.dart';
import 'package:maditation_app/widgets/search_input.dart';

import '../../constants.dart';
import 'components/session_card.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: kBlueColor.withOpacity(0.7),
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          // context all
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Medition",
                      style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '3-10 min Course',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: size.width * 0.6,
                      child: Text('Live heppier and healthier by learning the fundmentals of meditition and mindefullness.'),
                    ),
                    SizedBox(
                      width: size.width * 0.6,
                      child: SearchInput(),
                    ),
                    Wrap(
                      runSpacing: 10,
                      spacing: 10,
                      children: [
                        SeassionCard(
                          pres: () {},
                          isDone: true,
                          number: 1,
                        ),
                        SeassionCard(
                          pres: () {},
                          isDone: false,
                          number: 2,
                        ),
                        SeassionCard(
                          pres: () {},
                          isDone: false,
                          number: 3,
                        ),
                        SeassionCard(
                          pres: () {},
                          isDone: false,
                          number: 4,
                        ),
                        SeassionCard(
                          pres: () {},
                          isDone: false,
                          number: 5,
                        ),
                        SeassionCard(
                          pres: () {},
                          isDone: false,
                          number: 6,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Meditation",
                      style: Theme.of(context).textTheme.headline6.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: size.width,
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 3),
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/icons/Meditation_women_small.svg"),
                          SizedBox(width: 5),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Basic 1', style: Theme.of(context).textTheme.subtitle2),
                                Text('Start your deepen you practice'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
