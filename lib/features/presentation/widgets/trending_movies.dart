import 'package:flutter/material.dart';

import '../../data/models/movie.dart';

class TrendingMovies extends StatelessWidget {
  final List<Movie> movies;
  const TrendingMovies({Key? key, required this.movies}) : super(key: key);

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
          const Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Text(
              "Trending",
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
                // movie where category is Continue Watching
                movies.length,
                (index) => Padding(
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
                            Container(),
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
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
