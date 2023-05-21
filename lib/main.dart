import 'package:block_sample/application/counter/counter_bloc.dart';
// import 'package:block_sample/application/cubit/counter_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/home/homescreen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Bloc Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.deepPurple.shade400,
                foregroundColor: Colors.white),
            useMaterial3: true),
        home: const ScreenHome(),
      ),
    );
  }
}
