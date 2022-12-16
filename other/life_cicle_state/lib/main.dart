import 'package:flutter/material.dart';

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
  final List<String> _timeList = [];

  // vars to calculate the duration in which the user was in the facectec process
  late DateTime? _initialTime, _finalTime, _initialPausedTime, _finalPausedTime;

  @override
  void initState() {
    _initialTime = DateTime.now();
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    // if (WidgetsBinding.instance!.lifecycleState != null) {
    //   _stateHistoryList.add(WidgetsBinding.instance!.lifecycleState!);
    // }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _initialPausedTime = DateTime.now();
      _timeList.add('Paused' + _initialPausedTime.toString());
      setState(() {});
    }
    if (state == AppLifecycleState.resumed) {
      _finalPausedTime = DateTime.now();
      _timeList.add('Resumed' + _finalPausedTime.toString());
      setState(() {});
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_timeList.isNotEmpty) {
      return ListView.builder(
        key: const ValueKey<String>('stateHistoryList'),
        itemCount: _timeList.length,
        itemBuilder: (BuildContext context, int index) {
          return Text('state is: ${_timeList[index]}');
        },
      );
    }

    return const Center(
        child: Text('There are no AppLifecycleStates to show.'));
  }
}
