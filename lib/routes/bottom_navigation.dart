import 'package:flutter/material.dart';
import 'package:streaming_amazing_flutter/utils/screens_bottom_bar.dart';

class BottomNavigation extends StatelessWidget {
  final int indexBottomSelected;
  final Function(int index) action;
  const BottomNavigation(
      {super.key, required this.indexBottomSelected, required this.action});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      left: 55,
      right: 55,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Theme.of(context).primaryColor,
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).primaryColorDark,
                    offset: const Offset(0.0, 3),
                    blurRadius: 4.65)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //caso queira usar index
              ...screenBottomNavigation
                  .asMap()
                  .entries
                  .map(
                    (it) => InkWell(
                      onTap: () {
                        action(it.key);
                      },
                      child: indexBottomSelected == it.key
                          ? Container(
                              width: 48,
                              height: 48,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColorDark,
                                  borderRadius: BorderRadius.circular(24)),
                              child: Image.asset(
                                screenBottomNavigation[it.key]['icon']
                                    as String,
                                width: 30,
                                height: 30,
                              ),
                            )
                          : InkWell(
                              onTap: () {
                                action(it.key);
                              },
                              child: Image.asset(
                                screenBottomNavigation[it.key]['icon']
                                    as String,
                                width: 30,
                                height: 30,
                                color: Theme.of(context).primaryColorDark,
                              ),
                            ),
                    ),
                  )
                  .toList()
            ],
          )),
    );
  }
}
