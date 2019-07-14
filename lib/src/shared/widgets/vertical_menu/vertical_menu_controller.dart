import 'package:flutter/widgets.dart';

class VerticalMenuController {
  AnimationController animation;

  bool get isOpen => (animation?.value == 1) ?? false;

  void toggle() {
    open();
    close();
  }

  void open() {
    if (animation?.value == 0) animation?.forward();
  }

  void close() {
    if (isOpen) animation?.reverse();
  }

  void dispose() {
    animation?.dispose();
  }
}
