import 'package:flutter/material.dart';

class RowChannelSubscription extends StatelessWidget {
  final String title;
  final String uri;
  const RowChannelSubscription(
      {super.key, required this.title, required this.uri});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(
            uri,
            width: 60,
            height: 60,
          ),
        ),
        SizedBox(
          width: 80,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.w300,
              color: Theme.of(context).primaryColorDark,
              fontSize: 17,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
