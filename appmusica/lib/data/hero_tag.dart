import 'package:appmusica/model/artista.dart';
import 'package:appmusica/model/biografia.dart';

class HeroTag {
  static String image(String urlImage) => urlImage;

  static String realnameLine(Artist artist) => artist.name + artist.realname;

  static String tipoLine(Artist artist) => artist.name + artist.tipo;

  static String generoLine(Artist artist) => artist.name + artist.genero;

  static String categoriaLine(Artist artist) => artist.name + artist.categoria;

  static String avatar(Review review, int position) =>
      review.description + position.toString();
}
