import 'package:flutter/material.dart';
import 'dart:async';

class SimpleStopwatch extends StatefulWidget {

  final bool started;

  const SimpleStopwatch(this.started);

  @override
  SimpleStopwatchState createState() => SimpleStopwatchState();
}

class SimpleStopwatchState extends State<SimpleStopwatch> {

  Timer? timer;
  Stopwatch stopwatch = Stopwatch();

  @override
  Widget build(BuildContext context) {

    if (widget.started == true && !stopwatch.isRunning) {
      stopwatch.start();
    }

    else if (widget.started == false && stopwatch.isRunning) {
      stopwatch.stop();
    }

    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
        });
      }
    );

    return Text("${stopwatch.elapsed.inSeconds}");
  }
}

MaterialColor getStopwatchColor(seconds) {
  if (seconds < 25) {
    return Colors.green;
  }
  else if (seconds < 60) {
    return Colors.yellow;
  }
  else if (seconds < 90) {
    return Colors.orange;
  } else {
    return Colors.red;
  }
}