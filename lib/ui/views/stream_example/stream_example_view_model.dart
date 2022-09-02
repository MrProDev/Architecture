import 'package:stacked/stacked.dart';

class StreamExampleViewModel extends StreamViewModel<int> {
  bool _swap = false;

  bool get swap => _swap;

  Stream<int> nowTimeInSeconds() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield DateTime.now().second;
    }
  }

  Stream<int> nowTimeInMilliSeconds() async* {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 1));
      yield DateTime.now().millisecond;
    }
  }

  void swapStreams() {
    _swap = !_swap;
    notifySourceChanged();
  }

  @override
  Stream<int> get stream =>
      _swap ? nowTimeInMilliSeconds() : nowTimeInSeconds();

  // called before notify listeners when data has been set
  @override
  void onData(int? data) {
    super.onData(data);
  }

  // do operations on the data and get the results back
  @override
  int transformData(int data) {
    return data - 0;
  }
}
