import 'dart:convert';
import 'dart:io';

import 'package:film_flutter/models/movie.dart';
import 'package:film_flutter/models/upcoming.dart';
import 'package:http/http.dart' as http;

class HttpService {
  final String apiKey = '230ca77c4b396e03c1da0215b40b5725';
    
  get moviesMap => null;
  
  Future<List?> getPopularMovies() async{
    final String uri = 'https://api.themoviedb.org/3/movie/popular?api_key=$apiKey';
    http.Response response = await http.get(Uri.parse(uri));
    if(response.statusCode == HttpStatus.ok){
      print("Sukses");
      final jsonResponse = jsonDecode(response.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    }else{
      print("Fail");
      return null;
    }
  }
  Future<List?> getUpcomingMovies() async{
    final String uri = 'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey';
    http.Response response = await http.get(Uri.parse(uri));
    if(response.statusCode == HttpStatus.ok){
      print("Sukses");
      final jsonResponse = jsonDecode(response.body);
      final upComingMoviesMap = jsonResponse['results'];
      List upComingMovies = upComingMoviesMap.map((i) => Upcoming.fromJson(i)).toList();
      return upComingMovies;
    }else{
      print("Fail");
      return null;
    }
  }
}