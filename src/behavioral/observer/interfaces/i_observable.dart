import 'i_observer.dart';

abstract interface class IObservable {
  void subscribe(List<IObserver> observers);
  void unSubscribe(List<IObserver> observers);
  void notify();
}
