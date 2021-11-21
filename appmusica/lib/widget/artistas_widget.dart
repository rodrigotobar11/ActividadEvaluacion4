import 'package:flutter/material.dart';
import 'package:appmusica/data/artistas.dart';

import 'artista_widget.dart';

class ArtistsWidget extends StatefulWidget {
  @override
  _ArtistsWidgetState createState() => _ArtistsWidgetState();
}

class _ArtistsWidgetState extends State<ArtistsWidget> {
  final pageController = PageController(viewportFraction: 0.8);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: artists.length,
              itemBuilder: (context, index) {
                final artist = artists[index];
                return ArtistWidget(artist: artist);
              },
              onPageChanged: (index) => setState(() => pageIndex = index),
            ),
          ),
          Text(
            '${pageIndex + 1}/${artists.length}',
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 12)
        ],
      );
}
