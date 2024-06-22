import 'package:flutter/material.dart';
import 'package:plant_diseases_detection_flutter/constants/constants.dart';

class TitleSection extends SliverFixedExtentList {
  TitleSection(String title, double height, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Padding(
                padding: EdgeInsets.fromLTRB((0.32*height), 0, 0, 0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: (0.6*height), fontFamily: 'SFBold', color: kMain),
                ),
              ),
                ],
              );
            },
            childCount: 1,
          ),
          itemExtent: height,
        );
}
