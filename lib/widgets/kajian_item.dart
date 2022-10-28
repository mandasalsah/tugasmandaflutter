import 'package:flutter/material.dart';

class KajianItem extends StatelessWidget {
  final String image;
  const KajianItem({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        alignment: Alignment.center,
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(image)),
            color: const Color.fromARGB(95, 179, 173, 173),
            borderRadius: BorderRadius.circular(15.0)),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
