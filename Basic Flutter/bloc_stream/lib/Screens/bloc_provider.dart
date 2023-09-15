part of 'page.dart';

class ProviderBloc extends StatelessWidget {
  const ProviderBloc({super.key});

  @override
  Widget build(BuildContext context) {
    Counter myCounter = BlocProvider.of<Counter>(context); // Agar tidak terlalu panjang
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bloc Provider",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  splashColor: Colors.greenAccent,
                  onTap: () {
                    // BlocProvider.of<Counter>(context).decrement();
                    myCounter.decrement(); // tinggal panggil inisialnya 
                  },
                  borderRadius: BorderRadius.circular(15),
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Icon(
                      Icons.remove,
                      weight: 5,
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  color: Colors.lightBlueAccent,
                ),
                child: Center(
                  child: BlocBuilder<Counter, int>(
                    bloc: myCounter, // langsung panggil blocnya
                    buildWhen: (previous, current) {
                      // untuk membuild jika...
                      if (current >= 0) {
                        return true;
                      } else {
                        return false;
                      }
                    },
                    builder: (context, state) {
                      //langsung menggunakan state
                      return Text(
                        '$state',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Material(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  splashColor: Colors.greenAccent,
                  onTap: () {
                    // BlocProvider.of<Counter>(context).increment();
                    myCounter.increment();
                  },
                  borderRadius: BorderRadius.circular(15),
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Icon(
                      Icons.add,
                      weight: 5,
                    ),
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
