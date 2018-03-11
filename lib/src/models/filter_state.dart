class FilterState {
  static const String all = 'All';
  static const String done = 'Done';
  static const String notDone = 'Not Done';

  final String state;

  FilterState(this.state);
  FilterState.asAll() : state = FilterState.all;
  FilterState.asDone() : state = FilterState.done;
  FilterState.asNotDone() : state = FilterState.notDone;

  @override
  String toString() {
    return this.state;
  }
}
