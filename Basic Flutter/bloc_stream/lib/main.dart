import 'package:bloc_stream/Bloc/counter.dart';
import 'package:bloc_stream/Screens/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider( // Untuk meninjeksi atau menyalurkan ke semua build (seperti nadi)
      create: (context) => Counter(), // memanggil Counter dan menyebarkan ke semua build jalurnya menggunakan context
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const StreamPage(),
      ),
    );
  }
}

class StreamPage extends StatelessWidget {
  const StreamPage({super.key});

  Stream<int> countStream() async* {
    for (int i = 1; i <= 100; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i; // untuk menghasilkan (emit) nilai i ke dalam stream. Artinya, setiap kali loop berjalan, nilai i akan dikirimkan ke stream sebagai output.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Bloc'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            stream:
                countStream(), // parameter yang digunakan untuk menentukan stream mana yang akan digunakan untuk mengambil data
            builder: (context, snapshot) {
              // berisi data yang diterima dari stream
              if (snapshot.connectionState == ConnectionState.waiting) {
                // Jika koneksi stream masih dalam status "waiting" (menunggu), maka widget akan menampilkan teks "Loading ..."
                return const Center(
                  child: Text(
                    'Loading ...',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                );
              } else {
                // Jika kondisi di atas tidak terpenuhi, artinya data sudah tersedia dalam stream, maka widget akan menampilkan data yang diterima dari stream
                return Center(
                  child: Text(
                    "${snapshot.data}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                );
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CubitBloc(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: Colors.black12,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Cubit'),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BuilderBloc(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: Colors.black12,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bloc Builder'),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ListenerBloc(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: Colors.black12,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bloc Listener'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ConsumerBloc(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: Colors.black12,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bloc Consumer'),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProviderBloc(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: Colors.black12,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Bloc Provider'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
