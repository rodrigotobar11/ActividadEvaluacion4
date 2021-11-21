import 'package:flutter/material.dart';
import 'package:appmusica/model/artista.dart';

class LatLongWidget extends StatelessWidget {
  final Artist artist;

  const LatLongWidget({
    @required this.artist,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            artist.genero,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            artist.categoria,
            style: TextStyle(color: Colors.white),
          )
        ],
      );
}
