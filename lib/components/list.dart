import 'package:flutter/material.dart';

class lista extends StatefulWidget {
  const lista({super.key});

  @override
  State<lista> createState() => _listaState();
}

class _listaState extends State<lista> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: ,
      child: Container(
        //width: _largura,
        //height: _altura,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: SizedBox(
                width: 240,
                height: 170,
                child: Image.network(
                    'https://www.cidadeecultura.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2020/08/FOTO-1-CAPA-DO-%C3%81LBUM-deep-purple-1024x1008.jpg.webp'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Made in Japan',
              style: Theme.of(context).textTheme.titleLarge,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Album de Deep Purple',
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}