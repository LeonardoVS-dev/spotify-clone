import 'package:flutter/material.dart';

class CardNovaMusica extends StatelessWidget {
  final ImageProvider image;
  final String nomeMusica;
  final String nomeAutor;
  const CardNovaMusica({
    Key? key,
    required this.image,
    required this.nomeMusica,
    required this.nomeAutor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: [
          Image(
            image: image,
            height: 130,
            width: 130,
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Text(nomeMusica, style: Theme.of(context).textTheme.titleLarge, overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 10,),
                Text(nomeAutor, style: Theme.of(context).textTheme.bodySmall,),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      IconButton(
                      onPressed: () {
                      },
                      icon: const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                      )
                    ),
                    SizedBox(width: 10,),
                    IconButton(
                      onPressed: () {
                      },
                      icon: const Icon(
                        Icons.play_circle_fill_outlined,
                        color: Colors.white,
                      )
                    ),
                    
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}