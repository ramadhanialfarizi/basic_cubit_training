import 'package:basic_cubit_training/bloc_cubit/cubit.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterCubit myCounter = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('basic cubit'),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: myCounter.stream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Text("loading..."),
            );
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    snapshot.data.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => myCounter.increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), //
    );
  }
}
