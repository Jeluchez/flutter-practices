import 'package:flutter/material.dart';
import 'package:life_cicle_state/cycle_timer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('WidgetBindingsObserver Sample')),
        body: const WidgetBindingsObserverSample(),
      ),
    );
  }
}

class WidgetBindingsObserverSample extends StatefulWidget {
  const WidgetBindingsObserverSample({Key? key}) : super(key: key);

  @override
  State<WidgetBindingsObserverSample> createState() =>
      _WidgetBindingsObserverSampleState();
}

class _WidgetBindingsObserverSampleState
    extends State<WidgetBindingsObserverSample> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    // if (WidgetsBinding.instance!.lifecycleState != null) {
    //   _stateHistoryList.add(WidgetsBinding.instance!.lifecycleState!);
    // }
  }

  late DateTime? _startTime, _endTime;
  final List<CycleTimer> cycleTimerList = [];

  String getFacetecProcessDuration() {
    Duration pacialDuration = const Duration(seconds: 0);
    Duration totalDuration = const Duration(seconds: 0);

    if (_startTime == null && _endTime == null) return '';
    // if the facetec process finalized, but the app does not running in background
    if (cycleTimerList.isEmpty) {
      return _endTime!.difference(_startTime!).toString();
    }

    for (var i = 0; i < cycleTimerList.length; i++) {
      if (i == 0) {
        pacialDuration = cycleTimerList[0].start!.difference(_startTime!);
        continue;
      }

      var currentCT = cycleTimerList[i];
      var beforeCT = cycleTimerList[i - 1];
      pacialDuration += currentCT.start!.difference(beforeCT.end!);
    }

    totalDuration += _startTime!.difference(cycleTimerList.last.end!);

    return totalDuration.toString();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    var cycleTimer = CycleTimer();
    if (state == AppLifecycleState.paused) {
      cycleTimer.start = DateTime.now();
      cycleTimerList.add(cycleTimer);
    }
    if (state == AppLifecycleState.resumed) {
      cycleTimerList.last.end = DateTime.now();
    }
  }

  onStart() {
    _startTime = DateTime.now();
  }

  onEnd() {
    _endTime = DateTime.now();

    getFacetecProcessDuration();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onStart(),
          child: Text('Start'),
        ),
        ElevatedButton(
          onPressed: onStart(),
          child: Text('End'),
        )
      ],
    );
  }
}
