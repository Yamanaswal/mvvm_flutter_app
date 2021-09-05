import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:mvvm_flutter_app/models/movie.dart';

class WebService {
  Future<List<Movie>> fetchMovies(String keyword) async {
    try{
    final url = "http://www.omdbapi.com/?s=$keyword&apikey=1f65a47f";
    final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        log(jsonEncode(body));
        final Iterable json = body["Search"];
        return json.map((movie) => Movie.fromJson(movie)).toList();
      }

    }catch(e){
      log(e.toString(),name: "ERROR-->");
    }
    throw Exception("Unable to Request");
  }
}