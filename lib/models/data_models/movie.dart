class Movie {
  final String title;
  final String poster;

  Movie({this.title = "No Data", this.poster = "No Data"});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json["Title"],
        poster: json["Poster"]
    );
  }
}
