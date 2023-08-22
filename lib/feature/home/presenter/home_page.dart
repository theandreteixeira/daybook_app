import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daybook'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Column(
              children: [
                Text(state.value.toString()),
                TextButton(
                    onPressed: () =>
                        context.read<CounterBloc>().add(IncrementEvent()),
                    child: const Text('Increment')),
                TextButton(
                    onPressed: () =>
                        context.read<CounterBloc>().add(DecrementEvent()),
                    child: const Text('Decrement')),
              ],
            );
          },
        ),
      ),
    );
  }
}
