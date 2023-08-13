import 'package:flutter/material.dart';

class CategoriaCard extends StatelessWidget {
  final String label;
  const CategoriaCard({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 48, 49, 49),
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(80),),
      child: InkWell(
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Text(label, style: Theme.of(context).textTheme.titleMedium, overflow: TextOverflow.ellipsis,)
        ),
      ),  
    );                                
  }
} 