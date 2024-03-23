import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class FeaturedPlaceHolder extends StatefulWidget {
  const FeaturedPlaceHolder({
    super.key,
  });

  @override
  _FeaturedPlaceHolderState createState() => _FeaturedPlaceHolderState();
}

class _FeaturedPlaceHolderState extends State<FeaturedPlaceHolder> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Stack(
        children: [
          // CarouselSlider
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Stack(
                children: [
                  SkeletonLine(
                    style: SkeletonLineStyle(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width,
                        borderRadius: BorderRadius.circular(8)),
                  ),

                  // Gradient Shadow
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0xFF414C48), // Dark Color
                          Color.fromARGB(162, 65, 76, 72),
                          Color.fromARGB(20, 65, 76, 72),

                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                  // Centered Movie Details
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.35,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SkeletonLine(
                                style: SkeletonLineStyle(
                                    height: 16,
                                    width: 64,
                                    borderRadius: BorderRadius.circular(8)),
                              )
                            ]),
                        const SizedBox(height: 1),
                        Center(
                          child: SkeletonParagraph(
                            style: SkeletonParagraphStyle(
                                lines: 1,
                                spacing: 6,
                                lineStyle: SkeletonLineStyle(
                                  randomLength: false,
                                  width: 230,
                                  height: 60,
                                  alignment: AlignmentDirectional.center,
                                  borderRadius: BorderRadius.circular(8),
                                  minLength:
                                      MediaQuery.of(context).size.width / 2,
                                )),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkeletonParagraph(
                              style: SkeletonParagraphStyle(
                                  lines: 1,
                                  spacing: 6,
                                  lineStyle: SkeletonLineStyle(
                                    randomLength: false,
                                    width: 160,
                                    height: 20,
                                    alignment: AlignmentDirectional.center,
                                    borderRadius: BorderRadius.circular(8),
                                    minLength:
                                        MediaQuery.of(context).size.width / 2,
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkeletonLine(
                              style: SkeletonLineStyle(
                                  height: 46,
                                  width: 144,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SkeletonLine(
                              style: SkeletonLineStyle(
                                  height: 46,
                                  width: 46,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              );
            },
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.7,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 25),
              autoPlayAnimationDuration: const Duration(milliseconds: 1800),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentStep = index;
                });
              },
            ),
          ),
          // Logo
          Positioned(
            top: 50,
            left: 10,
            child: Image.asset(
              'assets/images/avetol_logo.png',
              fit: BoxFit.cover,
              height: 40,
            ),
          ),
          // TV Shows and Movies
          Positioned(
            top: 70,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "TV Shows",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Movies",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Page Indicator Dots
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentStep == index ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
