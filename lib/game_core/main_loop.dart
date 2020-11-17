bool _running = true;

void startLoop() {
  final double _fps = 50;
  final double _mSecond = 1000;
  final double _updateTime = _mSecond / _fps;
  double _updates = 0;

  Stopwatch _loopWatch = Stopwatch();
  _loopWatch.start();
  Stopwatch _timeWatch = Stopwatch();
  _timeWatch.start();

  while (_running) {
    if (_loopWatch.elapsedMilliseconds > _updateTime) {
      _updates++;
      _loopWatch.reset();
    }

    if (_timeWatch.elapsedMilliseconds > _mSecond) {
      print("${DateTime.now()} FPS: ${_updates}");
      _updates = 0;
      _timeWatch.reset();
    }
  }
}

void stopLoop() {
  _running = false;
}
