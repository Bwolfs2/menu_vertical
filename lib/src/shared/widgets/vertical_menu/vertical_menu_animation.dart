import 'package:flutter/material.dart';
import 'package:menu_vertical/src/app_module.dart';
import 'package:menu_vertical/src/shared/widgets/vertical_menu/vertical_menu_bloc.dart';

import 'vertical_menu_controller.dart';

mixin VerticalMenuAnimation<T extends StatefulWidget>
    on State<T>, TickerProviderStateMixin<T> {
  VerticalMenuController get controller;

  final bloc = AppModule.to.bloc<VerticalMenuBloc>();
  List<Animation<double>> buttonAnimations;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    controller.animation = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );

    bloc.itemsController.listen((lenght) {
      buttonAnimations = List.generate(
        lenght,
        (index) {
          var startAnimation = (index / lenght);
          var endAnimation = ((index + 1) / lenght) + (1 / lenght * 0.8);
          endAnimation = endAnimation > 1 ? 1 : endAnimation;
          return Tween<double>(
            begin: 1,
            end: 0,
          ).animate(
            CurvedAnimation(
              parent: controller.animation,
              curve: Interval(
                startAnimation,
                endAnimation
              ),              
            ),
          );
        },
      );
    });
  }
}
