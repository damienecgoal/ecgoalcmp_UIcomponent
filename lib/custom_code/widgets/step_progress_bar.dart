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

import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'dart:math' as math;

class StepProgressBar extends StatefulWidget {
  const StepProgressBar({
    super.key,
    this.width,
    this.height,
    required this.totalSteps,
    required this.currentStep,
    required this.stepSize,
    required this.angle,
    required this.arc,
    required this.spacing,
  });

  final double? width;
  final double? height;
  final int totalSteps;
  final int currentStep;
  final double stepSize;
  final double angle;
  final double arc;
  final double spacing;

  @override
  State<StepProgressBar> createState() => _StepProgressBarState();
}

class _StepProgressBarState extends State<StepProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 150,
      height: widget.height ?? 150,
      child: CircularStepProgressIndicator(
        totalSteps: widget.totalSteps,
        currentStep: widget.currentStep,
        stepSize: widget.stepSize,
        selectedColor: Color(0xFF7367f0),
        unselectedColor: Color(0xFFAFA7FF),
        padding: widget.spacing,
        width: widget.width ?? 150,
        height: widget.height ?? 150,
        startingAngle: widget.angle,
        arcSize: widget.arc,
        gradientColor: LinearGradient(
          colors: [Color(0xFF7367f0), Color(0xFFAFA7FF)],
        ),
      ),
    );
  }
}
