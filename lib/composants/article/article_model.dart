import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'article_widget.dart' show ArticleWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ArticleModel extends FlutterFlowModel<ArticleWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for pourcentage widget.
  FocusNode? pourcentageFocusNode;
  TextEditingController? pourcentageTextController;
  String? Function(BuildContext, String?)? pourcentageTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pourcentageFocusNode?.dispose();
    pourcentageTextController?.dispose();
  }
}
