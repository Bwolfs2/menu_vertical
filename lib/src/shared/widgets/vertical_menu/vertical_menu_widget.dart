import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'vertical_menu_animation.dart';
import 'vertical_menu_controller.dart';
import 'vertical_menu_item_widget.dart';
import 'vertical_menu_model.dart';
export 'vertical_menu_controller.dart';

class VerticalMenuWidget extends StatefulWidget {
  final Widget child;
  final VerticalMenuController controller;
  final List<VerticalMenuModel> pages;

  const VerticalMenuWidget({
    Key key,
    this.child,
    @required this.pages,
    @required this.controller,
  }) : super(key: key);

  @override
  _VerticalMenuWidgetState createState() => _VerticalMenuWidgetState();
}

class _VerticalMenuWidgetState extends State<VerticalMenuWidget>
    with TickerProviderStateMixin, VerticalMenuAnimation {
  @override
  VerticalMenuController get controller => widget.controller;

  @override
  void initState() {
    bloc.itemsController.add(widget.pages.length+1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        widget.child,
        Offstage(
          offstage: widget.controller.isOpen,
          child: StreamBuilder<int>(
            stream: bloc.itemsController,
            builder: (context, snapshot) {
              if ((buttonAnimations == null))
                return Container();
              else
                return Column(
                  children: List.generate(widget.pages.length, (index) {
                    var current = widget.pages[index];

                    return Expanded(
                      child: AnimatedBuilder(
                        animation: buttonAnimations[index],
                        child: (index == 0)
                            ? VerticalMenuItemWidget(
                                icon: Icons.close,
                                action: controller.close,
                                closeButtom: true,
                              )
                            : VerticalMenuItemWidget(
                                icon: current.icon,
                                action: () {},
                              ),
                        builder: (context, child) {
                          return  Transform(
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.0005)
                              ..rotateY(-pi * buttonAnimations[index].value),
                            child: child,
                          );
                        },
                      ),
                    );
                  }),
                );
            },
          ),
        ),
      ],
    );
  }
}