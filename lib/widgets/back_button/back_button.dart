import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final Function() actionTapButton;
  const CustomBackButton({super.key, required this.actionTapButton});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: actionTapButton,
      child: Stack(
        alignment: Alignment.center,
        children: [
          BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .surfaceTint
                        .withOpacity(0.9),
                    shape: BoxShape.circle),
                height: 30,
                width: 30,
              )),
          Image.asset(
            "assets/icons/back.png",
            fit: BoxFit.cover,
            width: 25,
            height: 25,
            cacheHeight: 25,
            cacheWidth: 25,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
