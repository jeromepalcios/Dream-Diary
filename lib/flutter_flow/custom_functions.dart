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
import '/auth/firebase_auth/auth_util.dart';

DateTime? anneeencours() {
// Je veux recuperer le mois en cours
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy-01-01');
  final DateTime formatted = DateTime.parse(formatter.format(now));

  return formatted;
}

DateTime? moisencours() {
// Je veux recuperer le mois en cours
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy-MM-01');
  final DateTime formatted = DateTime.parse(formatter.format(now));

  return formatted;
}
