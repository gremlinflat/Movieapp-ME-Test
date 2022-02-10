import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String posterUrl;
  final String title;
  final String year;
  final String type;
  final String imdbID;
  const MovieCard(this.posterUrl, this.title, this.type, this.year, this.imdbID,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset.zero,
                    blurRadius: 10,
                  ),
                ],
                image: DecorationImage(
                  image: posterUrl == 'N/A'
                      ? const AssetImage('assets/images/no-poster.png')
                          as ImageProvider
                      : NetworkImage(posterUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 150,
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    year,
                    style: const TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
        onTap: () {});
  }
}
