import 'package:flutter/material.dart';
import 'package:mvvm_flutter_app/view_models/movie_list_view_model.dart';
import 'package:mvvm_flutter_app/views/screens/movie_list_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MovieListViewModel(),
          ),
        ],
        child: MovieListPage(),
      ),
    );
  }
}
