import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

Widget placeholderList(BuildContext context) {
  return // List of Movies
      Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: SkeletonParagraph(
              style: SkeletonParagraphStyle(
                  lines: 1,
                  spacing: 6,
                  lineStyle: SkeletonLineStyle(
                    randomLength: true,
                    height: 20,
                    borderRadius: BorderRadius.circular(8),
                    minLength: MediaQuery.of(context).size.width / 6,
                    maxLength: MediaQuery.of(context).size.width / 3,
                  )),
            )),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkeletonLine(
                      style: SkeletonLineStyle(
                          height: 165,
                          width: 300,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SkeletonParagraph(
                                  style: SkeletonParagraphStyle(
                                      lines: 1,
                                      spacing: 6,
                                      lineStyle: SkeletonLineStyle(
                                        randomLength: true,
                                        height: 15,
                                        borderRadius: BorderRadius.circular(8),
                                        minLength:
                                            MediaQuery.of(context).size.width /
                                                6,
                                        maxLength:
                                            MediaQuery.of(context).size.width /
                                                3,
                                      ))),
                            ])),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
      ],
    ),
  );
}
