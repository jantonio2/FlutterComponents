import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
// import 'package:transparent_image/transparent_image.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.6),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage('https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000'),
            placeholder: AssetImage('assets/carga.jpg'),
            fadeInDuration: Duration( milliseconds: 300 ),
            width: double.infinity,
            height: 250.0,
            fit: BoxFit.cover
          ),
          /*FadeInImage.memoryNetwork(
            image: ('https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000'),
            placeholder: kTransparentImage
          ),*/
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('Un hermoso paisaje')
          )
        ],
      )
    );
  }
}
