import 'package:appmusica/model/biografia.dart';

class Artist {
  final String name;
  final String urlImage;
  final String realname;
  final String tipo;
  final String categoria;
  final String genero;
  final List<Review> reviews;

  Artist({
    this.reviews,
    this.name,
    this.urlImage,
    this.realname,
    this.tipo,
    this.categoria,
    this.genero,
  });
}
