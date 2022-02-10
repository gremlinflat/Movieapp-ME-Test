// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class Movie {
  final String imdbID;
  final String Title;
  final String Year;
  final String Type;
  final String Poster;
  final String? Genre;
  final String? Plot;
  final String? Rated;
  final String? Released;
  final String? Runtime;
  final String? Director;
  final String? Writer;
  final String? Actors;
  final String? Language;
  final String? Country;
  final String? Awards;
  final String? Metascore;
  final String? imdbRating;
  final String? BoxOffice;
  final String? Production;

  Movie({
    required this.imdbID,
    required this.Title,
    required this.Year,
    required this.Type,
    required this.Poster,
    this.Genre,
    this.Plot,
    this.Rated,
    this.Released,
    this.Runtime,
    this.Director,
    this.Writer,
    this.Actors,
    this.Language,
    this.Country,
    this.Awards,
    this.Metascore,
    this.imdbRating,
    this.BoxOffice,
    this.Production,
  });

  Map<String, dynamic> toMap() {
    return {
      'imdbID': imdbID,
      'Title': Title,
      'Year': Year,
      'Type': Type,
      'Poster': Poster,
      'Genre': Genre,
      'Plot': Plot,
      'Rated': Rated,
      'Released': Released,
      'Runtime': Runtime,
      'Director': Director,
      'Writer': Writer,
      'Actors': Actors,
      'Language': Language,
      'Country': Country,
      'Awards': Awards,
      'Metascore': Metascore,
      'imdbRating': imdbRating,
      'BoxOffice': BoxOffice,
      'Production': Production,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      imdbID: map['imdbID'] ?? '',
      Title: map['Title'] ?? '',
      Year: map['Year'] ?? '',
      Type: map['Type'] ?? '',
      Poster: map['Poster'] ?? '',
      Genre: map['Genre'] ?? '',
      Plot: map['Plot'] ?? '',
      Rated: map['Rated'] ?? '',
      Released: map['Released'] ?? '',
      Runtime: map['Runtime'] ?? '',
      Director: map['Director'] ?? '',
      Writer: map['Writer'] ?? '',
      Actors: map['Actors'] ?? '',
      Language: map['Language'] ?? '',
      Country: map['Country'] ?? '',
      Awards: map['Awards'] ?? '',
      Metascore: map['Metascore'] ?? '',
      imdbRating: map['imdbRating'] ?? '',
      BoxOffice: map['BoxOffice'] ?? '',
      Production: map['Production'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie.fromJson(Map<String, dynamic> source) => Movie.fromMap(source);

  @override
  String toString() {
    return 'Movie(imdbID: $imdbID, Title: $Title, Year: $Year, Type: $Type, Poster: $Poster, Genre: $Genre, Plot: $Plot, Rated: $Rated, Released: $Released, Runtime: $Runtime, Director: $Director, Writer: $Writer, Actors: $Actors, Language: $Language, Country: $Country, Awards: $Awards, Metascore: $Metascore, imdbRating: $imdbRating, BoxOffice: $BoxOffice, Production: $Production)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Movie &&
        other.imdbID == imdbID &&
        other.Title == Title &&
        other.Year == Year &&
        other.Type == Type &&
        other.Poster == Poster &&
        other.Genre == Genre &&
        other.Plot == Plot &&
        other.Rated == Rated &&
        other.Released == Released &&
        other.Runtime == Runtime &&
        other.Director == Director &&
        other.Writer == Writer &&
        other.Actors == Actors &&
        other.Language == Language &&
        other.Country == Country &&
        other.Awards == Awards &&
        other.Metascore == Metascore &&
        other.imdbRating == imdbRating &&
        other.BoxOffice == BoxOffice &&
        other.Production == Production;
  }

  @override
  int get hashCode {
    return imdbID.hashCode ^
        Title.hashCode ^
        Year.hashCode ^
        Type.hashCode ^
        Poster.hashCode ^
        Genre.hashCode ^
        Plot.hashCode ^
        Rated.hashCode ^
        Released.hashCode ^
        Runtime.hashCode ^
        Director.hashCode ^
        Writer.hashCode ^
        Actors.hashCode ^
        Language.hashCode ^
        Country.hashCode ^
        Awards.hashCode ^
        Metascore.hashCode ^
        imdbRating.hashCode ^
        BoxOffice.hashCode ^
        Production.hashCode;
  }
}
