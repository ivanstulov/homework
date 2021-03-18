// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:import_sorter/args.dart';
import 'package:import_sorter/files.dart';
import 'package:import_sorter/sort.dart';

// Project imports:
import 'package:flutter_application_1/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Im happy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

int _counter = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //_counter % 2 == 0
            HomeView(
              counter: _counter,
            ),
            // : Container(),
            ElevatedButton(
                child: Text('Increment $_counter'),
                onPressed: () {
                  setState(() {
                    _counter = _counter + 1;
                  });
                })

            /*Text(
              'Image exercise:',
              style: TextStyle(fontSize: 20, height: null),
            ),*/

            //SvgPicture.asset('assets/images/example.svg',height: 150.0,),

            /*CarouselSlider(
              options: CarouselOptions(height: 200.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            )*/
            //Image.asset('assets/images/1.jpg'),
            //Image.network('https://img.fonwall.ru/o/2p/canada-moraine-lake-ozero-gory.jpg'),
          ],
        ),
      ),
    );
  }
}
