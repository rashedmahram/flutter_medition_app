import 'package:flutter/material.dart';

import '../../../constants.dart';

class SeassionCard extends StatelessWidget {
  const SeassionCard({
    Key key,
    this.pres,
    this.isDone = false,
    this.number = 1,
  }) : super(key: key);
  final Function pres;
  final bool isDone;
  final int number;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: constraint.maxWidth / 2 - 10,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 3),
                  color: kShadowColor,
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: pres,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isDone ? kBlueColor : Colors.white,
                          border: Border.all(
                            color: kBlueColor,
                          ),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isDone ? Colors.white : kBlueColor,
                        ),
                      ),
                      Text(
                        'Session ${number}',
                        style: Theme.of(context).textTheme.subtitle1.copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
