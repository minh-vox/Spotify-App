import 'package:flutter/material.dart';

import '../../../resource/resource.dart';

class NewAlbumWidget extends StatelessWidget {
  const NewAlbumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              height: 130,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                color: Colors.green,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30)
                    .copyWith(right: 180),
                alignment: Alignment.centerLeft,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New Album',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'Happier Than',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Ever',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Billie Eilish',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Image.asset(
                Assets.images.homeArtist.path,
              ),
            ),
          )
        ],
      ),
    );
  }
}
