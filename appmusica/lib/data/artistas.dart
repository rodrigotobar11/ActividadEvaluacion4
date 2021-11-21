import 'package:appmusica/data/biografias.dart';
import 'package:appmusica/model/artista.dart';

List<Artist> artists = [
  Artist(
    name: 'CRISTIAN',
    urlImage: 'assets/artist1.jpg',
    realname: 'Cristian Alberto',
    tipo: 'Solista',
    categoria: 'Solo',
    genero: 'Indie',
    reviews: Reviews.allReviews,
  ),
  Artist(
    name: 'DO-BOP',
    urlImage: 'assets/artist2.jpg',
    realname: 'Abdel Ali',
    tipo: 'Compositor',
    categoria: 'Solo',
    genero: 'Beatbox',
    reviews: Reviews.allReviews,
  ),
  Artist(
    name: 'THEREVENGERS',
    urlImage: 'assets/artist3.jpg',
    realname: 'Robert Jones',
    tipo: 'Solista',
    categoria: 'Grupo',
    genero: 'Metal',
    reviews: Reviews.allReviews,
  ),
  Artist(
    name: 'SCARLET',
    urlImage: 'assets/artist4.jpg',
    realname: 'Sophie Wang',
    tipo: 'Solista',
    categoria: 'Solo',
    genero: 'Rock',
    reviews: Reviews.allReviews,
  ),
];
