import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CubitBloc extends StatelessWidget {
  CubitBloc({super.key});

  CounterCubit mycounter = CounterCubit(); // deklarasi variable dari sebuah objek class CounterCubit

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit Bloc'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            // initialData: 0,
            stream: mycounter.stream, // memanggil strem mycounter
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text(
                  'Loading...',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                );
              } else {
                return Text(
                  '${snapshot.data}',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                );
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  mycounter.kurangData(); // memanggil data didalam mycounter
                },
                icon: const Icon(
                  Icons.remove,
                ),
              ),
              IconButton(
                onPressed: () {
                  mycounter.tambahData(); // memanggil data didalam mycounter
                },
                icon: const Icon(
                  Icons.add,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit({this.initialData = 0}) : super(initialData);

  int initialData;

  void tambahData() {
    emit(state + 1);
  }

  void kurangData() {
    emit(state - 1);
  }
}
