import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/composants/article/article_widget.dart';
import '/composants/entete/entete_widget.dart';
import '/composants/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'environnement_widget.dart' show EnvironnementWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EnvironnementModel extends FlutterFlowModel<EnvironnementWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for entete component.
  late EnteteModel enteteModel;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    enteteModel = createModel(context, () => EnteteModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    enteteModel.dispose();
    navBarModel.dispose();
  }
}
