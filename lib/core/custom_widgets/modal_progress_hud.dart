import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../theme/theme.dart';
import 'custom_circular_progress_indicator.dart';

class ModalProgressHUD extends StatelessWidget {
  final bool inAsyncCall;
  final double opacity;
  final Color color;
  final Offset? offset;
  final bool dismissible;
  final bool showNotFound;
  final bool showEmpty;
  final String notFoundTitle;
  final Widget child;

  const ModalProgressHUD({
    Key? key,
    required this.inAsyncCall,
    this.opacity = Sizes.dimen_0,
    this.color = AppColor.transparent,
    this.offset,
    this.dismissible = false,
    required this.child,
    this.showNotFound = false,
    this.showEmpty = false,
    this.notFoundTitle = Constants.empty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!inAsyncCall) {
      return child;
    }

    Widget layOutProgressIndicator;
    if (offset == null) {
      layOutProgressIndicator = const Center(
        child: CustomCircularProgressIndicator(
          isPage: true,
        ),
      );
    } else {
      layOutProgressIndicator = Positioned(
        left: offset!.dx,
        top: offset!.dy,
        child: const CustomCircularProgressIndicator(isPage: true),
      );
    }

    return Stack(
      children: [
        showEmpty ? const SizedBox() : child,
        Opacity(
          opacity: opacity,
          child: ModalBarrier(
            dismissible: dismissible,
            color: color,
          ),
        ),
        layOutProgressIndicator,
      ],
    );
  }
}
