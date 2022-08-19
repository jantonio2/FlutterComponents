import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
// import 'package:transparent_image/transparent_image.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardType2({
    Key? key,
    required this.imageUrl,
    this.name
  }) : super(key: key);

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
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            fadeInDuration: const Duration( milliseconds: 300 ),
            width: double.infinity,
            height: 250.0,
            fit: BoxFit.cover
          ),
          /*FadeInImage.memoryNetwork(
            image: ('https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000'),
            placeholder: kTransparentImage
          ),*/
          if ( name != null )
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              // child: Text(name ?? 'No title')
              child: Text(name!)
            )
        ],
      )
    );
  }
}
