import 'package:block_sample/application/counter/counter_bloc.dart';
// import 'package:block_sample/application/cubit/counter_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                state.count.toString(),
                style: const TextStyle(fontSize: 50),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FloatingActionButton(
                tooltip: 'Decrement',
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(const Decrement());
                },
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                tooltip: 'Increment',
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(const Increment());
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
