import 'package:basic_bloc_state/src/bloc/counter_a_bloc/counter_a_bloc.dart';
import 'package:basic_bloc_state/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterABloc =
        BlocProvider<CounterABloc>(create: (context) => CounterABloc());
    // final counterBBloc =
    // BlocProvider<CounterBBloc>(create: (context) => CounterBloc());

    return MultiBlocProvider(
      providers: [counterABloc],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Home Page'),
      ),
    );
  }
}
