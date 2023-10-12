import 'package:film_flutter/models/upcoming.dart';
import 'package:flutter/material.dart';

class MovieDetail extends StatelessWidget {
  late final Upcoming upcoming;

  MovieDetail(this.upcoming);

  @override
  Widget build(BuildContext context) {
    String path = '';
    if (upcoming.posterPath != null) {
      path = 'https://image.tmdb.org/t/p/w500/${upcoming.posterPath}';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Detail'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: 400,
                child: Image(
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/w500/${upcoming.backdropPath}'),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    upcoming.title!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Text(
                        ' | ${upcoming.voteAverage}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Container(
                child: Text(upcoming.overview!),
                padding: EdgeInsets.only(left: 16, right: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
