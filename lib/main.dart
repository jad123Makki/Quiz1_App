import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(ColorChangerApp());

class ColorChangerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Changer',
      home: ColorChangerScreen(),
    );
  }
}

class ColorChangerScreen extends StatefulWidget {
  @override
  _ColorChangerScreenState createState() => _ColorChangerScreenState();
}

class _ColorChangerScreenState extends State<ColorChangerScreen> {
  Color _startColor = Colors.blue;
  Color _endColor = Colors.red;

  int red = 0, green = 0, blue = 0;

  int _directionIndex = 0;

  final List<Alignment> _beginDirections = [
    Alignment.topCenter,
    Alignment.centerLeft,
    Alignment.centerRight,
    Alignment.bottomCenter,
  ];

  final List<Alignment> _endDirections = [
    Alignment.bottomCenter,
    Alignment.centerRight,
    Alignment.centerLeft,
    Alignment.topCenter,
  ];

  final List<String> _directionNames = [
    'Vertical',
    'Horizontal',
    'Left-Right',
    'Right-Left',
  ];

  void _changeColor() {
    setState(() {
      red = Random().nextInt(256);
      green = Random().nextInt(256);
      blue = Random().nextInt(256);
      _startColor = Color.fromRGBO(red, green, blue, 1);
      _endColor = _startColor.withOpacity(0.6);
    });
  }

  void _changeDirection() {
    setState(() {
      _directionIndex = (_directionIndex + 1) % _beginDirections.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: _beginDirections[_directionIndex],
            end: _endDirections[_directionIndex],
            colors: [_startColor, _endColor],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Red: $red  Green: $green  Blue: $blue',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'Direction: ${_directionNames[_directionIndex]}',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _changeColor,
                child: Text('Change Color'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _changeDirection,
                child: Text('Change Direction'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
