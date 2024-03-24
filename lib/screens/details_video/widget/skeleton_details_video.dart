import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:streaming_amazing_flutter/widgets/back_button/back_button.dart';

class SkeletonDetailsVideo extends StatelessWidget {
  const SkeletonDetailsVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          forceMaterialTransparency: true,
          elevation: 0,
          toolbarHeight: 35,
          backgroundColor: Colors.transparent,
          leading: CustomBackButton(
            actionTapButton: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(parent: ClampingScrollPhysics()),
          padding: const EdgeInsets.only(bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: double.infinity,
                  height: 190,
                  child: Image.network(
                    "https://github.com/kenjimaeda54.png",
                    width: double.infinity,
                    height: 160,
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "fosnfosnfosnfosnfosnfonsfonsofn",
                      maxLines: 2,
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        spacing: 30,
                        children: [
                          Text(
                            "fsfsfs",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "fsfsfsfsfsfsfsfsf",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "fsfsfsfsfsf",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      spacing: 20,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                              "https://github.com/kenjimaeda54.png",
                              width: 60,
                              height: 60,
                              filterQuality: FilterQuality.high,
                            )),
                        const Text(
                          "fnosfnosnfosn",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          "fsfsf",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "onfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfosonfsonfsofnosnfosnfosnfos",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        height: 1.7,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
