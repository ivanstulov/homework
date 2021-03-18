// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key, this.counter}) : super(key: key);
  final int counter;
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    print(mounted);
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      print('все работает');
    });
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.paused) {
      print('App was stopped');
    }
    if (state == AppLifecycleState.resumed) {
      print('App was resumed');
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Did Change Dependencies');
    print(Theme.of(context).accentColor);
  }

  @override
  void didUpdateWidget(covariant HomeView oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Did Update Widget');
    print(oldWidget.counter);
  }

  @override
  void deactivate() {
    super.deactivate();
    print('DEACTIVATE');
  }

  @override
  void dispose() {
    super.dispose();
    print('DISPOSE');
  }

  @override
  Widget build(BuildContext context) {
    return Text('Text ${widget.counter}');
  }
}
