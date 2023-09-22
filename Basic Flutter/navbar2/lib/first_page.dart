import 'package:flutter/material.dart';

import 'package:navbar2/bloc.dart';

class FirstPage extends StatelessWidget {
  final NavigationBloc bloc;

  const FirstPage({super.key, required this.bloc});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => bloc.changeNavigationIndex(NavigationEvent.secondPage),
        child: const Text('Go to Second Page'),
      ),
    );
  }
}
