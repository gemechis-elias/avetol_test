import 'package:flutter/material.dart';

class Advertisement extends StatelessWidget {
  final String ad_banner;
  const Advertisement({Key? key, required this.ad_banner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return container
    return // List of Movies
        Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(seconds: 1),
                  content: Text(
                    "Ads Clicked",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.black,
                ),
              );
            },
            child: Image.asset(
              ad_banner,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
            ),
          )
        ],
      ),
    );
  }
}
