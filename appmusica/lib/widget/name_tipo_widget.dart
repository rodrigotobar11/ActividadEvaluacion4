import 'package:flutter/material.dart';
import 'package:appmusica/model/artista.dart';

class NameTipoWidget extends StatelessWidget {
  final Artist artist;

  const NameTipoWidget({
    @required this.artist,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            artist.realname,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            artist.tipo,
            style: TextStyle(color: Colors.white),
          )
        ],
      );
}
