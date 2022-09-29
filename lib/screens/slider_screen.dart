import 'package:fl_component/theme/app_theme.dart';
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
        title: const Text('Slider & Check'),
      ),
      body: Column(
        children: [
          const Text('Slider'),
          const SizedBox(height: 10),
          Slider.adaptive(
            value: _sliderValue,
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            inactiveColor: AppTheme.primary.withOpacity(0.2),
            label: _sliderValue.round().toString(),
            // divisions: 10,
            onChanged: _sliderEnabled
                ? (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  }
                : null,
          ),
          Checkbox(
            value: _sliderEnabled,
            onChanged: (value) {
              setState(() {
                _sliderEnabled = value ?? true;
              });
            },
            activeColor: AppTheme.primary,
          ),
          CheckboxListTile(
            value: _sliderEnabled,
            onChanged: (value) {
              setState(() {
                _sliderEnabled = value ?? true;
              });
            },
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
          ),
          Switch(
            value: _sliderEnabled,
            onChanged: (value) {
              setState(() {
                _sliderEnabled = value;
              });
            },
            activeColor: AppTheme.primary,
          ),
          SwitchListTile.adaptive(
            value: _sliderEnabled,
            onChanged: (value) {
              setState(() {
                _sliderEnabled = value;
              });
            },
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
          ),
          const AboutListTile(
            applicationName: 'FL Component',
            applicationVersion: '1.0.0',
            applicationIcon: FlutterLogo(),
            applicationLegalese: '© 2021',
            icon: FlutterLogo(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://assets.stickpng.com/thumbs/584e83616a5ae41a83ddee39.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
