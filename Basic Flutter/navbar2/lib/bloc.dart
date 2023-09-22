
import 'package:rxdart/rxdart.dart';

enum NavigationEvent { firstPage, secondPage, thirdPage }

class NavigationBloc {
  final BehaviorSubject<NavigationEvent> _navigationController =
      BehaviorSubject.seeded(NavigationEvent.firstPage);

  Stream<NavigationEvent> get currentNavigationIndex =>
      _navigationController.stream;

  void changeNavigationIndex(final NavigationEvent option) =>
      _navigationController.sink.add(option);

  void dispose() => _navigationController.close();
}
