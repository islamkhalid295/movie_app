import 'package:flutter/material.dart';
import 'package:movie_app/domain/repository/movie_domain_repository.dart';
import 'package:movie_app/domain/usecase/get_now_playing_movies.dart';

import 'data/data_source/remote_data_source.dart';
import 'data/repository/movie_data_repository.dart';

void main() async{

   print(await GetNowPlayingMoviesUseCase(MovieDataRepository(RemoteDataSource())).execute());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: const Text(
          'You have pushed the button this many times:',
        ),
      ),
    );
  }
}
