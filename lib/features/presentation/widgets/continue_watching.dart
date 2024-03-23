import 'package:flutter/material.dart';

import '../../data/models/movie.dart';

class ContinueWatching extends StatelessWidget {
  final List<Movie> movies;
  const ContinueWatching({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return container
    return // List of Movies
        Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 38, 44, 42), // Dark Color
            Color.fromARGB(96, 66, 77, 73),
            Colors.transparent,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Text(
                "Continue Watching",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  movies.length,
                  (index) => GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: const Duration(seconds: 1),
                          content: Text(
                            movies[index].title,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Colors.black,
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 165,
                            width: 300, // Width of each movie card
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage(movies[index].banner),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 180,
                                      height: 10,
                                      decoration: const BoxDecoration(
                                        color: Color(
                                            0xFF0B84FF), // Progress indicator color
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(40),
                                            topRight: Radius.circular(16),
                                            bottomRight: Radius.circular(16)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // movie title text bold white
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              movies[index].title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
