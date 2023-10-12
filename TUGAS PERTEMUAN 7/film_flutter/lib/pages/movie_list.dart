import 'package:carousel_slider/carousel_slider.dart';
import 'package:film_flutter/service/http_service.dart';
import 'package:flutter/material.dart';

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  String result = "";
  List movies = [];
  List upcoming = [];
  int moviesCount = 0;
  int upcomingCount = 0;
  late HttpService service;

  @override
  void initState() {
    service = HttpService();
    initialize();
    super.initState();
  }

  Future initialize() async {
    movies = (await service.getPopularMovies())!;
    upcoming = (await service.getUpcomingMovies())!;
    setState(() {
      moviesCount = movies.length;
      movies = movies;
      upcomingCount = upcoming.length;
      upcoming = upcoming;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Movies'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              CarouselSlider.builder(
                itemCount: (upcomingCount != null) ? upcomingCount : 0,
                itemBuilder:
                    (BuildContext context, int index, int pageViewIndex) =>
                        Column(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://image.tmdb.org/t/p/w500/${upcoming[index].backdropPath}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ListTile(
                        title: Text(upcoming[index].title),
                        subtitle: Text('Rating = ${upcoming[index].voteAverage}'))
                  ],
                ),
                options: CarouselOptions(
                    autoPlay: true, height: 500.0, enlargeCenterPage: true),
              ),
            ],
          ),
          // Container(
          //   constraints: const BoxConstraints(maxWidth: 400),
          //   child: ListView.builder(
          //     itemCount: (upcomingCount != null) ? upcomingCount : 0,
          //     itemBuilder: (BuildContext context, int index) {
          //       final item = upcoming[index];
          //       return Container(
          //         height: 136,
          //         margin:
          //             const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
          //         decoration: BoxDecoration(
          //             border: Border.all(color: const Color(0xFFE0E0E0)),
          //             borderRadius: BorderRadius.circular(8.0)),
          //         padding: const EdgeInsets.all(8),
          //         child: Row(
          //           children: [
          //             Expanded(
          //                 child: Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   upcoming[index].title,
          //                   style: const TextStyle(fontWeight: FontWeight.bold),
          //                   maxLines: 2,
          //                   overflow: TextOverflow.ellipsis,
          //                 ),
          //                 const SizedBox(height: 8),
          //                 Text("${item.author} · ${item.postedOn}",
          //                     style: Theme.of(context).textTheme.caption),
          //                 const SizedBox(height: 8),
          //                 Row(
          //                   mainAxisSize: MainAxisSize.min,
          //                   children: [
          //                     Icons.bookmark_border_rounded,
          //                     Icons.share,
          //                     Icons.more_vert
          //                   ].map((e) {
          //                     return InkWell(
          //                       onTap: () {},
          //                       child: Padding(
          //                         padding: const EdgeInsets.only(right: 8.0),
          //                         child: Icon(e, size: 16),
          //                       ),
          //                     );
          //                   }).toList(),
          //                 )
          //               ],
          //             )),
          //             Container(
          //                 width: 100,
          //                 height: 100,
          //                 decoration: BoxDecoration(
          //                     color: Colors.grey,
          //                     borderRadius: BorderRadius.circular(8.0),
          //                     image: DecorationImage(
          //                       fit: BoxFit.cover,
          //                       image:
          //                           NetworkImage(upcoming[index].backdropPath),
          //                     ))),
          //           ],
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
      // body: ListView.builder(
      //   itemCount: (moviesCount != null)? moviesCount : 0,
      //   itemBuilder: (context, int index) {
      //     return Card(
      //       color: Colors.red,
      //       elevation: 2.0,
      //       child: ListTile(
      //         title: Text(movies[index].title),
      //         subtitle: Text('Rating = ${movies[index].voteAverage}'),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
