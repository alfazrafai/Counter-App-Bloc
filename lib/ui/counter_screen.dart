import 'package:counter_app_bloc/bloc/counter/counter_bloc.dart';
import 'package:counter_app_bloc/bloc/counter/counter_event.dart';
import 'package:counter_app_bloc/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bloc Count Screen")),
      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                state.counter.toString(),
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              );
            },
          ),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: .spaceEvenly,
            crossAxisAlignment: .center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(IncrementCounter());
                },
                child: Text("Increment"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(DecrementCounter());
                },
                child: Text("Decrement"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
