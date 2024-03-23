import 'package:fakestore/bloc_counter/counter_bloc.dart';
import 'package:fakestore/cubit_counter/counter_cubit.dart';
import 'package:fakestore/pages/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(DecrementCounterEvent());
                  },
                  child: const Text("Decrement"),
                ),
                const SizedBox(width: 20),
                BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) {
                    return Text(state.count.toString());
                  },
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(IncreamentCounterEvent());
                  },
                  child: const Text("Increament"),
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: Text("Route Second Page"))
        ],
      ),
    );
  }
}
