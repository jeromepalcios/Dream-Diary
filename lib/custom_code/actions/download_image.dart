// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;

Future<FFUploadedFile> downloadImage(String imageURL, String fileName) async {
  final String proxyURL = 'https://cors-anywhere.herokuapp.com/$imageURL';

  //final String proxyURL = 'http://api.allorigins.win/get?url=$imageURL';
  final http.Client client = http.Client();

  try {
    final http.Response response = await client.get(Uri.parse(proxyURL));

    if (response.statusCode == 200) {
      final Uint8List bytes = response.bodyBytes;
      final FFUploadedFile file = FFUploadedFile(
        bytes: bytes,
        name: fileName,
      );
      return file;
    } else {
      throw Exception('Failed to download image');
    }
  } catch (e) {
    throw Exception('Failed to download image: $e');
  } finally {
    client.close();
  }
}
