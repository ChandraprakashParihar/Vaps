abstract class NavEvent {
  const NavEvent();
}

class UpdateIndexEvent extends NavEvent {
  const UpdateIndexEvent({required this.index});

  final int index;
}
