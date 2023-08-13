import 'package:flutter/material.dart';

class InfoLancamento extends StatelessWidget {
  final ImageProvider avatar;
  final String label;
  const InfoLancamento({
    Key? key,
    required this.avatar,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24, 
          backgroundImage: avatar, 
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NOVO LANÇAMENTO DE',
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(width: 3,),
            Text(
              label,
              style: Theme.of(context).textTheme.titleLarge,
              overflow: TextOverflow.ellipsis,
            )
          ],
        )
      ],
    );
  }
}