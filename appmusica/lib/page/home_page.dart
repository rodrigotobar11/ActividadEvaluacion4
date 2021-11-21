import 'package:flutter/material.dart';
import 'package:appmusica/widget/artistas_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: buildAppBar(),
        body: ArtistsWidget(),
      );

  Widget buildAppBar() => AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('ARTISTAS'),
        centerTitle: true,
      );
}
