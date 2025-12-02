import 'package:counter_app_bloc/bloc/counter/counter_bloc.dart';
import 'package:counter_app_bloc/ui/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocCounterApp());
}

class BlocCounterApp extends StatelessWidget {
  const BlocCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: MaterialApp(home: CounterScreen()),
    );
  }
}
