import 'package:flutter/material.dart';
// import 'package:transparent_image/transparent_image.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          FadeInImage(
            image: NetworkImage('https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000'),
            placeholder: AssetImage('assets/carga.jpg'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 250.0,
            fit: BoxFit.cover
          ),
          /*FadeInImage.memoryNetwork(
            image: ('https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000'),
            placeholder: kTransparentImage
          ),*/
        ],
      )
    );
  }
}
