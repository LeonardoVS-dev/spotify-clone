import 'package:flutter/material.dart';

class ContainerAlbum extends StatefulWidget {
  const ContainerAlbum({super.key});

  @override
  State<ContainerAlbum> createState() => _ContainerAlbumState();
}

class _ContainerAlbumState extends State<ContainerAlbum> {
  bool _diminuir = false;
  double _altura = 240;
  double _largura = 170;

  void _diminuirTemporariamente() {
    setState(() {
      _diminuir = true;
      _altura = 235;
      _largura = 165;
    });

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _diminuir = false;
        _altura = 240;
        _largura = 170;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _diminuirTemporariamente,
      child: Container(
        width: _largura,
        height: _altura,
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