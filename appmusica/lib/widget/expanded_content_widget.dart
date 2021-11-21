import 'package:flutter/material.dart';
import 'package:appmusica/data/hero_tag.dart';
import 'package:appmusica/model/artista.dart';
import 'package:appmusica/widget/hero_widget.dart';

class ExpandedContentWidget extends StatelessWidget {
  final Artist artist;

  const ExpandedContentWidget({
    @required this.artist,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            HeroWidget(
              tag: HeroTag.realnameLine(artist),
              child: Text(artist.realname),
            ),
            SizedBox(height: 8),
            buildAddressRating(artist: artist),
          ],
        ),
      );

  Widget buildAddressRating({
    @required Artist artist,
  }) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeroWidget(
            tag: HeroTag.tipoLine(artist),
            child: Text(
              artist.tipo,
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ],
      );
}
