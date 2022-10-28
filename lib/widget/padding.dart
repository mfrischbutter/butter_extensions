import 'package:flutter/material.dart';

extension ButterWidgetPadding on Widget {
  /// Adds padding around the widget.
  /// EdgeInsets.all() is used to create the padding.
  Widget paddingAll(double padding) => Padding(
        padding: EdgeInsets.all(padding),
        child: this,
      );

  /// Adds padding around the widget.
  /// EdgeInsets.only() is used to create the padding.
  Widget paddingFromLTRB(double l, double t, double r, double b) => Padding(
        padding: EdgeInsets.fromLTRB(l, t, r, b),
        child: this,
      );

  /// Adds padding around the widget.
  /// EdgeInsets.symmetric() is used to create the padding.
  Widget paddingOnly({
    double top = 0,
    double bottom = 0,
    double left = 0,
    double right = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        top: top,
        bottom: bottom,
        right: right,
        left: left,
      ),
      child: this,
    );
  }

  /// Adds padding around the widget.
  /// EdgeInsets.symmetric() is used to create the padding.
  Widget paddingSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
      child: this,
    );
  }
}
