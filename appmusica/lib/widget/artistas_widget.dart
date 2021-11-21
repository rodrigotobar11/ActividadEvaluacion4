import 'package:flutter/material.dart';
import 'package:appmusica/data/artistas.dart';

import 'artista_widget.dart';

class LocationsWidget extends StatefulWidget {
  @override
  _LocationsWidgetState createState() => _LocationsWidgetState();
}

class _LocationsWidgetState extends State<LocationsWidget> {
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
                return LocationWidget(artist: artist);
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
