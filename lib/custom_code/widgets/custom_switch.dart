// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    super.key,
    this.width,
    this.height,
    required this.toggleOn,
    required this.toggleOff,
    required this.initialValue,
    required this.activeTrackColor,
    required this.inactiveTrackColor,
    required this.activeThumbColor,
    required this.inactiveThumbColor,
    required this.thumbSize,
    required this.thumbPadding,
    required this.trackRadius,
  });

  final double? width;
  final double? height;
  final Future Function() toggleOn;
  final Future Function() toggleOff;
  final bool initialValue;
  final Color activeTrackColor;
  final Color inactiveTrackColor;
  final Color activeThumbColor;
  final Color inactiveThumbColor;
  final int thumbSize;
  final int thumbPadding;
  final int trackRadius;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late bool _isOn;

  @override
  void initState() {
    super.initState();
    _isOn = widget.initialValue;
  }

  void _toggleSwitch() async {
    setState(() {
      _isOn = !_isOn;
    });
    if (_isOn) {
      await widget.toggleOn();
    } else {
      await widget.toggleOff();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleSwitch,
      child: Container(
        width: widget.width ??
            (widget.thumbSize * 2 + widget.thumbPadding * 2).toDouble(),
        height: widget.height ?? widget.thumbSize.toDouble(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.trackRadius.toDouble()),
          color: _isOn ? widget.activeTrackColor : widget.inactiveTrackColor,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeIn,
              left: _isOn
                  ? (widget.width ??
                          (widget.thumbSize * 2 + widget.thumbPadding * 2)
                              .toDouble()) -
                      widget.thumbSize -
                      widget.thumbPadding
                  : widget.thumbPadding.toDouble(),
              right: _isOn
                  ? widget.thumbPadding.toDouble()
                  : (widget.width ??
                          (widget.thumbSize * 2 + widget.thumbPadding * 2)
                              .toDouble()) -
                      widget.thumbSize -
                      widget.thumbPadding,
              child: Container(
                width: widget.thumbSize.toDouble(),
                height: widget.thumbSize.toDouble(),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _isOn
                      ? widget.activeThumbColor
                      : widget.inactiveThumbColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
