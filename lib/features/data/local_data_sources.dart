import 'models/movie.dart';

class LocalDataSources {
  List<Movie> getMovies() {
    return [
      Movie(
        title: 'THE LAST OF US',
        banner: 'assets/images/movie_banner_1.jpg',
        genreType: 'Action',
        year: 2024,
        tag: 'Featured',
        category: 'Popular',
        isFeatured: true,
      ),
      Movie(
        title: 'NO WHERE ALONE',
        banner: 'assets/images/movie_banner_2.jpg',
        genreType: 'Action',
        year: 2023,
        tag: 'New',
        category: 'Popular',
        isFeatured: true,
      ),
      Movie(
        title: 'DANGEROUS WATERS',
        banner: 'assets/images/movie_banner_3.jpg',
        genreType: 'Drama',
        year: 2019,
        tag: 'Top Rated',
        category: 'Popular',
        isFeatured: true,
      ),
      Movie(
        title: 'DAMSEL',
        banner: 'assets/images/movie_banner_4.jpg',
        genreType: 'Drama',
        year: 2019,
        tag: 'Top Rated',
        category: 'Popular',
        isFeatured: true,
      ),
      // Continue Watching
      Movie(
        title: 'ማን! አድስ ፊልም',
        banner: 'assets/images/movie_landscape_1.jpg',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Continue Watching',
        isFeatured: false,
      ),
      Movie(
        title: 'የባከነ ፍርድ',
        banner: 'assets/images/movie_landscape_2.jpg',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Continue Watching',
        isFeatured: false,
      ),
      Movie(
        title: 'ካላየሽ',
        banner: 'assets/images/movie_landscape_3.jpg',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Continue Watching',
        isFeatured: false,
      ),

      // Trending Movies
      Movie(
        title: 'Sweetness in the belly',
        banner: 'assets/images/movie_landscape_4.png',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Trending',
        isFeatured: false,
      ),

      Movie(
        title: 'ጥቁር ሳቅ',
        banner: 'assets/images/movie_landscape_5.png',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Trending',
        isFeatured: false,
      ),

      Movie(
        title: 'Temeles',
        banner: 'assets/images/movie_landscape_6.png',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Trending',
        isFeatured: false,
      ),

      // Avetol Originals
      Movie(
        title: 'JOHN 3 WICK',
        banner: 'assets/images/movie_banner_6.jpg',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Avetol Originals',
        isFeatured: false,
      ),

      Movie(
        title: 'LAST AIR BENDER',
        banner: 'assets/images/movie_banner_7.jpg',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Avetol Originals',
        isFeatured: false,
      ),

      // Avetol Shows
      Movie(
        title: '#HashTag Times',
        banner: 'assets/images/movie_banner_8.jpg',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Avetol Shows',
        isFeatured: false,
      ),

      Movie(
        title: 'Derib Show',
        banner: 'assets/images/movie_banner_9.jpg',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Avetol Shows',
        isFeatured: false,
      ),

      // Avetol Live Channels
      Movie(
        title: 'EBS TV',
        banner: 'assets/images/movie_banner_10.jpg',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Avetol Live Channels',
        isFeatured: false,
      ),

      Movie(
        title: 'Kana TV',
        banner: 'assets/images/movie_banner_11.jpg',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Avetol Live Channels',
        isFeatured: false,
      ),

      // Exclusives
      Movie(
        title: 'Weraj',
        banner: 'assets/images/movie_banner_12.jpg',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Exclusives',
        isFeatured: false,
      ),

      Movie(
        title: 'Concert',
        banner: 'assets/images/movie_banner_13.jpg',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Exclusives',
        isFeatured: false,
      ),

      // Categories
      Movie(
        title: 'Comedy',
        banner: 'assets/images/card_background.png',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Categories',
        isFeatured: false,
      ),

      Movie(
        title: 'Drama',
        banner: 'assets/images/card_background.png',
        genreType: 'Action',
        year: 2019,
        tag: 'Top Rated',
        category: 'Categories',
        isFeatured: false,
      ),
    ];
  }
}
