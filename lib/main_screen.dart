import 'package:callbackfunction2/counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _length1 = 0;
  int _length2 = 0;
  int _length3 = 0;

  int get _totalLength => _length1 + _length2 + _length3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InputCounterBox(
              color: Colors.lime,
              onLengthChanged: (len) {
                setState(() {
                  _length1 = len;
                });
                debugPrint("Box 1 wurde verändert");
              },
            ),
            InputCounterBox(
              color: Colors.cyan,
              onLengthChanged: (len) {
                setState(() {
                  _length2 = len;
                });
                debugPrint("Box 2 wurde verändert");
              },
            ),
            InputCounterBox(
              color: Colors.purpleAccent,
              onLengthChanged: (len) {
                setState(() {
                  _length3 = len;
                });
                debugPrint("Box 3 wurde verändert");
              },
            ),
            const SizedBox(height: 16),
            Text(
              "Gesamtlänge aller Eingaben: $_totalLength",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
