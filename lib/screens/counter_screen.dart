import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void incrementCounter() {
    counter++;
    setState(() {});
  }

  void decrementCounter() {
    counter--;
    setState(() {});
  }

  void resetCounter() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const String title = 'Counter';
    const String text = 'Clicks counter:';
    //const double SizedBoxWidth = 50;

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
      floatingActionButton: CustomWidget(
        incrementFn: incrementCounter,
        decrementFn: decrementCounter,
        resetFn: resetCounter,
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  final Function incrementFn;
  final Function decrementFn;
  final Function resetFn;

  const CustomWidget({
    super.key,
    required this.incrementFn,
    required this.decrementFn,
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => incrementFn(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        //const SizedBox(width: SizedBoxWidth),
        FloatingActionButton(
          onPressed: () => resetFn(),
          tooltip: 'Reset',
          child: const Icon(Icons.refresh),
        ),
        //const SizedBox(width: SizedBoxWidth),
        FloatingActionButton(
          onPressed: () => decrementFn(),
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
