import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/composants/entete/entete_widget.dart';
import '/composants/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for entete component.
  late EnteteModel enteteModel;
  // Stores action output result for [Backend Call - API (Images)] action in Button widget.
  ApiCallResponse? gpturl;
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
