import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            // label: 'Slider',
            // divisions: 300,
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled
            ?  (value) {
              _sliderValue = value;
              setState(() {});
            }
            : null
          ),
          /*Checkbox(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }
          ),
          Switch(
            value: _sliderEnabled,
            onChanged: (value) => setState(() { _sliderEnabled = value; })
          ),*/
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() { _sliderEnabled = value ?? true; }),
          ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() { _sliderEnabled = value; }),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                // image: const NetworkImage('https://pbs.twimg.com/profile_images/1243475459125456896/e-zIQiFY_400x400.jpg'),
                // image: const NetworkImage('https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_960_720.png'),
                image: const NetworkImage('https://media.glamour.es/photos/616fa5fbc16487e5fd1be10f/2:3/w_1200,h_1800,c_limit/582988.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
