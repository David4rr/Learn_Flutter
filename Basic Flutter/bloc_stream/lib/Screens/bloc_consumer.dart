part of 'page.dart';

class ConsumerBloc extends StatelessWidget {
  ConsumerBloc({super.key});

  final Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bloc Consumer",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<Counter, int>( // Gabungan bloc builder dan listener
            bloc: mycounter,
            builder: (context, state) {
              //langsung menggunakan state
              return Text(
                '$state',
                style: const TextStyle(
                  fontSize: 20,
                ),
              );
            },
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                // untuk menampilkan snack bar
                const SnackBar(
                  duration: Duration(
                    seconds: 1,
                  ),
                  content: Text(
                    'Genap',
                  ),
                ),
              );
            },
            listenWhen: (previous, current) {
              // membuat kondisi snackbar muncul di data genap
              if (current % 2 == 0) {
                return true;
              } else {
                return false;
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
                  mycounter.decrement();
                },
                icon: const Icon(
                  Icons.remove,
                ),
              ),
              IconButton(
                onPressed: () {
                  mycounter.increment();
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
