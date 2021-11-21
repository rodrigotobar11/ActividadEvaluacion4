import 'package:flutter/material.dart';
import 'package:appmusica/data/hero_tag.dart';
import 'package:appmusica/model/artista.dart';
import 'package:appmusica/widget/hero_widget.dart';

class DetailedInfoWidget extends StatelessWidget {
  final Artist artist;

  const DetailedInfoWidget({
    @required this.artist,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeroWidget(
              tag: HeroTag.realnameLine(artist),
              child: Text(artist.realname),
            ),
            SizedBox(height: 10),
            HeroWidget(
              tag: HeroTag.tipoLine(artist),
              child: Text(artist.tipo),
            ),
          ],
        ),
      );
}
