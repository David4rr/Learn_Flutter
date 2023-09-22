import 'package:flutter/material.dart';
import 'package:navbar2/bloc.dart';
import 'package:navbar2/first_page.dart';
import 'package:navbar2/second_page.dart';
import 'package:navbar2/third_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final NavigationBloc bloc = NavigationBloc();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<NavigationEvent>(
        stream: bloc.currentNavigationIndex,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            _selectedIndex = snapshot.data!.index;
          }

          return Scaffold(
            body: IndexedStack(
              index: _selectedIndex,
              children: [
                FirstPage(bloc: bloc),
                SecondPage(),
                ThirdPage(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'First Page',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Second Page',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Third Page',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: (index) =>
                  bloc.changeNavigationIndex(NavigationEvent.values[index]),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    bloc.dispose(); // don't  forgot this.
    super.dispose();
  }
}
