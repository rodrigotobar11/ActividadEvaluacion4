import 'package:flutter/material.dart';
import 'package:appmusica/data/hero_tag.dart';
import 'package:appmusica/model/artista.dart';
import 'package:appmusica/widget/hero_widget.dart';
import 'package:appmusica/widget/gen_cat_widget.dart';

class ImageWidget extends StatelessWidget {
  final Artist artist;

  const ImageWidget({
    @required this.artist,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      /// space from white container
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: size.height * 0.5,
      width: size.width * 0.8,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 2, spreadRadius: 1),
          ],
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Stack(
          children: [
            buildImage(),
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildTopText(),
                  LatLongWidget(artist: artist),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildImage() => SizedBox.expand(
        child: HeroWidget(
          tag: HeroTag.image(artist.urlImage),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: Image.asset(artist.urlImage, fit: BoxFit.cover),
          ),
        ),
      );

  Widget buildTopText() => Text(
        artist.name,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      );
}
