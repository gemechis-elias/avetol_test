class Movie {
  final String title;
  final String banner;
  final String genreType;
  final int year;
  final String tag;
  final String category;
  final bool isFeatured;

  Movie({
    required this.title,
    required this.banner,
    required this.genreType,
    required this.year,
    required this.tag,
    required this.category,
    required this.isFeatured,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'] ?? '',
      banner: json['banner'] ?? '',
      genreType: json['genre_type'] ?? '',
      year: json['year'] ?? 0,
      tag: json['tag'] ?? '',
      category: json['category'] ?? '',
      isFeatured: json['is_featured'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'banner': banner,
      'genre_type': genreType,
      'year': year,
      'tag': tag,
      'category': category,
      'is_featured': isFeatured,
    };
  }
}
