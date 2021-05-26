import 'package:flutter/material.dart';
import 'package:movies/ui/commentBox/commentBox.dart';

import 'package:movies/ui/detail/actor_scroller.dart';
import 'package:movies/ui/detail/models.dart';
import 'package:movies/ui/detail/movie_detail_header.dart';
import 'package:movies/ui/detail/photo_scroller.dart';
import 'package:movies/ui/detail/story_line.dart';

class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage(this.movie);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MovieDetailHeader(movie),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Storyline(movie.storyline),
            ),
            PhotoScroller(movie.photoUrls),
            SizedBox(height: 20.0),
            ActorScroller(movie.actors),
            SizedBox(height: 50.0),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TestMe()),
          );
        },
        label: const Text('Comment'),
        icon: const Icon(Icons.comment),
      ),
    );
  }
}
