
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:mvvm_flutter_app/models/web_service_api/WebService.dart';
import 'movie_view_model.dart';

class MovieListViewModel extends ChangeNotifier {

  List<MovieViewModel> movies = <MovieViewModel>[];

  Future<void> fetchMovies(String keyword) async {
    //TODO - Fetch movies by keyword

    //get data from api
    final results = await WebService().fetchMovies(keyword);
    //add it to movies list
    this.movies = results.map((movieItem) => MovieViewModel(movie: movieItem)).toList();
    print(this.movies.map((e) => e.movie.title));
    //updates all
    notifyListeners();
  }

}