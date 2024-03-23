import 'package:flutter/material.dart';

import '../../data/local_data_sources.dart';
import '../../data/models/movie.dart';
import '../widgets/advertisement.dart';
import '../widgets/avetol_live_channels.dart';
import '../widgets/avetol_originals.dart';
import '../widgets/avetol_shows.dart';
import '../widgets/categories_list.dart';
import '../widgets/continue_watching.dart';
import '../widgets/exclusives_shows.dart';
import '../widgets/featured_movies.dart';
import '../widgets/featured_placeholder.dart';
import '../widgets/placeholder_list.dart';
import '../widgets/trending_movies.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Movie> movies = [];
  bool isLoading = true;

  @override
  void initState() {
    _fetchMovies();
    super.initState();
  }

  Future<void> _fetchMovies() async {
    setState(() {
      movies = LocalDataSources().getMovies();

      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      movies = LocalDataSources().getMovies();
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: RefreshIndicator(
        onRefresh: () => _fetchMovies(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              isLoading
                  ? const FeaturedPlaceHolder()
                  : FeaturedMovies(
                      movies:
                          movies.where((movie) => movie.isFeatured).toList()),

              // Continue Watching
              isLoading
                  ? Container(child: placeholderList(context))
                  : ContinueWatching(
                      movies: movies
                          .where(
                              (movie) => movie.category == 'Continue Watching')
                          .toList()),

              // Trending Movies
              isLoading
                  ? Container(child: placeholderList(context))
                  : TrendingMovies(
                      movies: movies
                          .where((movie) => movie.category == 'Trending')
                          .toList()),

              // Avetol Originals
              isLoading
                  ? Container(child: placeholderList(context))
                  : AvetolOriginals(
                      movies: movies
                          .where(
                              (movie) => movie.category == 'Avetol Originals')
                          .toList()),

              const Advertisement(ad_banner: 'assets/images/ad_banner.jpg'),

              isLoading
                  ? Container(child: placeholderList(context))
                  : AvetolShows(
                      movies: movies
                          .where((movie) => movie.category == 'Avetol Shows')
                          .toList()),

              AvetolLiveChannels(
                  movies: movies
                      .where(
                          (movie) => movie.category == 'Avetol Live Channels')
                      .toList()),

              Exclusives(
                  movies: movies
                      .where((movie) => movie.category == 'Exclusives')
                      .toList()),

              Categories(
                  movies: movies
                      .where((movie) => movie.category == 'Categories')
                      .toList()),
            ],
          ),
        ),
      ),
    );
  }
}
