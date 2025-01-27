import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic percentAnalyze(double? percentage) {
  if (percentage == null) {
    return null;
  } else {
    return {
      "type": percentage > 0,
      "value":
          percentage > 0 ? "+${percentage.toString()}" : percentage.toString(),
    };
  }
}

String? avatarFill(String? name) {
  // generate first tw letter from string. Example "MS" from "Masud Sarkar"a
  if (name == null || name.isEmpty) {
    return null;
  }
  final List<String> nameParts = name.split(' ');
  if (nameParts.length == 1) {
    return nameParts[0]
        .substring(0, math.min(2, nameParts[0].length))
        .toUpperCase();
  } else {
    return nameParts[0].substring(0, 1).toUpperCase() +
        nameParts[1].substring(0, 1).toUpperCase();
  }
}

ColorStruct? randomColor() {
  final random = math.Random();

  // Generate random color (6 hex digits)
  final hexColorValue = (random.nextDouble() * 0xFFFFFF).floor();
  final hexColorString = hexColorValue.toRadixString(16).padLeft(6, '0');

  // Fixed transparency value for 20% transparency (51 in decimal, 33 in hex)
  final transparency = 0x33;

  // Create the Color object with the random color
  final color = Color(0xFF000000 | hexColorValue);

  // Create the Color object with the combined transparency and color
  final colorWithTransparency = Color((transparency << 24) | hexColorValue);

  return ColorStruct(
    color: color,
    opacity: colorWithTransparency,
  );
}
