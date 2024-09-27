import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/gemini/gemini.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'add_widget.dart' show AddWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class AddModel extends FlutterFlowModel<AddWidget> {
  ///  Local state fields for this component.

  int? num;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Type widget.
  FormFieldController<String>? typeValueController;
  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 40000;
  int timerMilliseconds = 40000;
  String timerValue = StopWatchTimer.getDisplayTime(
    40000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Custom Action - replace] action in createDream widget.
  String? descGuillemet;
  // Stores action output result for [Custom Action - replace] action in createDream widget.
  String? descLine;
  // Stores action output result for [Firestore Query - Query a collection] action in createDream widget.
  List<DreamsRecord>? listPerso;
  // Stores action output result for [Custom Action - replace] action in createDream widget.
  String? promptPerso;
  // Stores action output result for [Firestore Query - Query a collection] action in createDream widget.
  List<DreamsRecord>? listLieu;
  // Stores action output result for [Custom Action - replace] action in createDream widget.
  String? promptLieu;
  // Stores action output result for [Custom Action - replace] action in createDream widget.
  String? descFLine;
  // Stores action output result for [Custom Action - replace] action in createDream widget.
  String? descFGuuillemet;
  // Stores action output result for [Gemini - Generate Text] action in createDream widget.
  String? descEnglish;
  // Stores action output result for [Custom Action - replace] action in createDream widget.
  String? descFEnglishLine;
  // Stores action output result for [Custom Action - replace] action in createDream widget.
  String? descFEnglishGuillemets;
  // Stores action output result for [Backend Call - API (Images)] action in createDream widget.
  ApiCallResponse? gptid;
  // Stores action output result for [Custom Action - downloadImage] action in createDream widget.
  FFUploadedFile? imageDL;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for fichier widget.
  FocusNode? fichierFocusNode;
  TextEditingController? fichierTextController;
  String? Function(BuildContext, String?)? fichierTextControllerValidator;
  // State field(s) for pourcentage widget.
  FocusNode? pourcentageFocusNode;
  TextEditingController? pourcentageTextController;
  String? Function(BuildContext, String?)? pourcentageTextControllerValidator;
  // State field(s) for addText widget.
  FocusNode? addTextFocusNode;
  TextEditingController? addTextTextController;
  String? Function(BuildContext, String?)? addTextTextControllerValidator;
  // State field(s) for descFinal widget.
  FocusNode? descFinalFocusNode;
  TextEditingController? descFinalTextController;
  String? Function(BuildContext, String?)? descFinalTextControllerValidator;
  // State field(s) for presetStyle widget.
  FocusNode? presetStyleFocusNode;
  TextEditingController? presetStyleTextController;
  String? Function(BuildContext, String?)? presetStyleTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    timerController.dispose();
    fichierFocusNode?.dispose();
    fichierTextController?.dispose();

    pourcentageFocusNode?.dispose();
    pourcentageTextController?.dispose();

    addTextFocusNode?.dispose();
    addTextTextController?.dispose();

    descFinalFocusNode?.dispose();
    descFinalTextController?.dispose();

    presetStyleFocusNode?.dispose();
    presetStyleTextController?.dispose();
  }

  /// Additional helper methods.
  String? get typeValue => typeValueController?.value;
}
