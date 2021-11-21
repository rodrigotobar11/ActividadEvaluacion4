import 'package:flutter/material.dart';
import 'package:appmusica/model/artista.dart';
import 'package:appmusica/model/biografia.dart';

class ReviewsWidget extends StatelessWidget {
  final Artist artist;
  final Animation animation;

  const ReviewsWidget({
    @required this.artist,
    @required this.animation,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.separated(
      itemCount: artist.reviews.length,
      padding: EdgeInsets.all(16),
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) {
        final review = artist.reviews[index];

        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) => FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Interval(0.2, 1, curve: Curves.easeInExpo),
            ),
            child: child,
          ),
          child: buildReview(review),
        );
      });

  Widget buildReview(Review review) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Text(
              review.description,
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      );
}
