part of 'page.dart';

class BuilderBloc extends StatelessWidget {
  BuilderBloc({super.key});

  final Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bloc Builder",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<Counter, int>(
            bloc: mycounter, // langsung panggil blocnya
            buildWhen: (previous, current) { // untuk membuild jika...
              if (current >= 0) {
                return true;
              } else {
                return false;
              }
            },
            builder: (context, state) { //langsung menggunakan state
              return Text(
                '$state',
                style: const TextStyle(
                  fontSize: 20,
                ),
              );
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
