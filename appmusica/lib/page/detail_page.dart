import 'package:flutter/material.dart';
import 'package:appmusica/data/hero_tag.dart';
import 'package:appmusica/model/artista.dart';
import 'package:appmusica/widget/detailed_info_widget.dart';
import 'package:appmusica/widget/hero_widget.dart';
import 'package:appmusica/widget/gen_cat_widget.dart';
import 'package:appmusica/widget/biografias_widget.dart';

class DetailPage extends StatelessWidget {
  final Artist artist;
  final Animation animation;

  const DetailPage({
    @required this.artist,
    @required this.animation,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('ARTISTAS'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox.expand(
                    child: HeroWidget(
                      tag: HeroTag.image(artist.urlImage),
                      child: Image.asset(artist.urlImage, fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: LatLongWidget(artist: artist),
                  ),
                ],
              ),
            ),
            DetailedInfoWidget(artist: artist),
            Expanded(
              flex: 5,
              child: ReviewsWidget(artist: artist, animation: animation),
            ),
          ],
        ),
      );
}
