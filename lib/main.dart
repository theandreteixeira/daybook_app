import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/home/presenter/bloc/counter_bloc.dart';
import 'feature/home/presenter/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: const HomePage(),
      ),
    );
  }
}
