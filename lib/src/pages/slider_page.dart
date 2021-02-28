import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double sliderValue = 250;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliders"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            _createSlider(),
            SizedBox(
              height: 30,
            ),
            _createImage(),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      value: sliderValue,
      min: 100,
      max: 400,
      divisions: 10,
      label: sliderValue.toString(),
      onChanged: (value) {
        setState(() {
          sliderValue = value;
        });
      },
    );
  }

  Widget _createImage() {
    return FlutterLogo(
      size: sliderValue,
    );
  }
}
