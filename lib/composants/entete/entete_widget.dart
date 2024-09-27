import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'entete_model.dart';
export 'entete_model.dart';

class EnteteWidget extends StatefulWidget {
  const EnteteWidget({super.key});

  @override
  State<EnteteWidget> createState() => _EnteteWidgetState();
}

class _EnteteWidgetState extends State<EnteteWidget> {
  late EnteteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnteteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
            child: Image.asset(
              'assets/images/a-whimsical-and-dreamy-illustration-of-a-surreal-l-9xS71OoMSyGTH8__ayc6TQ-EprpyVSbS4-UEWUvV_7y-w.jpeg',
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 200.0,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 60.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                  child: Image.asset(
                    'assets/images/a-whimsical-and-dreamy-illustration-featuring-the--P-V0cW5DTxOV5OdomGnVwQ-JtRahkRCQYOaKnun8dgcRQ-removebg-preview.png',
                    width: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
