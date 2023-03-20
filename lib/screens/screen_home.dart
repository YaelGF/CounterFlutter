import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String title = 'Counter Home';
    const String text = 'Clicks counter:';
    int counter = 10;

    const TextStyle textStyle = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text(title)),
        elevation: 10,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(text, style: textStyle),
              Text('$counter', style: textStyle),
            ]),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print('Increment $counter');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
