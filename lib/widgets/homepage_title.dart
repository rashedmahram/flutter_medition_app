import 'package:flutter/material.dart';

class HomePageTitle extends StatelessWidget {
  const HomePageTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text('Good Morning Rasheed', style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w900)),
      ),
    );
  }
}
