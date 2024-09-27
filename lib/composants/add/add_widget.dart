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
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'add_model.dart';
export 'add_model.dart';

class AddWidget extends StatefulWidget {
  const AddWidget({super.key});

  @override
  State<AddWidget> createState() => _AddWidgetState();
}

class _AddWidgetState extends State<AddWidget> {
  late AddModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddModel());

    _model.titleTextController ??= TextEditingController();
    _model.titleFocusNode ??= FocusNode();

    _model.descriptionTextController ??= TextEditingController();
    _model.descriptionFocusNode ??= FocusNode();

    _model.fichierTextController ??= TextEditingController();
    _model.fichierFocusNode ??= FocusNode();

    _model.pourcentageTextController ??= TextEditingController();
    _model.pourcentageFocusNode ??= FocusNode();

    _model.addTextTextController ??= TextEditingController();
    _model.addTextFocusNode ??= FocusNode();

    _model.descFinalTextController ??= TextEditingController();
    _model.descFinalFocusNode ??= FocusNode();

    _model.presetStyleTextController ??= TextEditingController();
    _model.presetStyleFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.pourcentageTextController?.text =
              FFLocalizations.of(context).getText(
            '6d516zkv' /* 0 */,
          );
        }));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                's2xqa0ar' /* Que voulez vous ajouter ? */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
            ),
            FlutterFlowRadioButton(
              options: [
                FFLocalizations.of(context).getText(
                  'c4ibrb5s' /* Reves */,
                ),
                FFLocalizations.of(context).getText(
                  'l4e819ut' /* Personnages */,
                ),
                FFLocalizations.of(context).getText(
                  'zcf3nxha' /* Lieux */,
                )
              ].toList(),
              onChanged: (val) => safeSetState(() {}),
              controller: _model.typeValueController ??=
                  FormFieldController<String>(
                      FFLocalizations.of(context).getText(
                'j23xcdyr' /* Reves */,
              )),
              optionHeight: 32.0,
              textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelMediumFamily),
                  ),
              buttonPosition: RadioButtonPosition.left,
              direction: Axis.horizontal,
              radioButtonColor: FlutterFlowTheme.of(context).secondary,
              inactiveRadioButtonColor:
                  FlutterFlowTheme.of(context).secondaryText,
              toggleable: false,
              horizontalAlignment: WrapAlignment.center,
              verticalAlignment: WrapCrossAlignment.start,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
              child: TextFormField(
                controller: _model.titleTextController,
                focusNode: _model.titleFocusNode,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: FFLocalizations.of(context).getText(
                    '0pf6m9q9' /* Title */,
                  ),
                  hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                textAlign: TextAlign.start,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                validator:
                    _model.titleTextControllerValidator.asValidator(context),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: TextFormField(
                controller: _model.descriptionTextController,
                focusNode: _model.descriptionFocusNode,
                textCapitalization: TextCapitalization.sentences,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: FFLocalizations.of(context).getText(
                    'q4jkwfwo' /* La description */,
                  ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelMediumFamily),
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 32.0, 20.0, 12.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                textAlign: TextAlign.start,
                maxLines: 4,
                keyboardType: TextInputType.multiline,
                validator: _model.descriptionTextControllerValidator
                    .asValidator(context),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (_model.pourcentageTextController.text != '0')
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: LinearPercentIndicator(
                          percent: double.parse(
                              _model.pourcentageTextController.text),
                          lineHeight: 12.0,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: FlutterFlowTheme.of(context).primary,
                          backgroundColor: FlutterFlowTheme.of(context).accent4,
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            if (_model.pourcentageTextController.text != '0')
              Text(
                _model.addTextTextController.text,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            FlutterFlowTimer(
              initialTime: _model.timerInitialTimeMs,
              getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                value,
                hours: false,
                milliSecond: false,
              ),
              controller: _model.timerController,
              updateStateInterval: Duration(milliseconds: 1000),
              onChanged: (value, displayTime, shouldUpdate) {
                _model.timerMilliseconds = value;
                _model.timerValue = displayTime;
                if (shouldUpdate) safeSetState(() {});
              },
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineSmallFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).headlineSmallFamily),
                  ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Future.wait([
                    Future(() async {
                      // fichier
                      safeSetState(() {
                        _model.fichierTextController?.text =
                            '${_model.typeValue}-${random_data.randomInteger(0, 1000).toString()}.png';
                        _model.fichierTextController?.selection =
                            TextSelection.collapsed(
                                offset:
                                    _model.fichierTextController!.text.length);
                      });
                      // 10%
                      safeSetState(() {
                        _model.pourcentageTextController?.text = '0.1';
                        _model.pourcentageTextController?.selection =
                            TextSelection.collapsed(
                                offset: _model
                                    .pourcentageTextController!.text.length);
                      });
                      _model.descGuillemet = await actions.replace(
                        _model.descriptionTextController.text,
                        '\"',
                        ' ',
                      );
                      _model.descLine = await actions.replace(
                        _model.descGuillemet!,
                        '\\n',
                        'r\'\\n\'',
                      );
                      // 30%
                      safeSetState(() {
                        _model.pourcentageTextController?.text = '0.3';
                        _model.pourcentageTextController?.selection =
                            TextSelection.collapsed(
                                offset: _model
                                    .pourcentageTextController!.text.length);
                      });
                      // textInfo
                      safeSetState(() {
                        _model.addTextTextController?.text =
                            'Génération de la description detaillée';
                        _model.addTextTextController?.selection =
                            TextSelection.collapsed(
                                offset:
                                    _model.addTextTextController!.text.length);
                      });
                      if (_model.typeValue == 'Reves') {
                        safeSetState(() {
                          _model.descFinalTextController?.text =
                              _model.descLine!;
                          _model.descFinalTextController?.selection =
                              TextSelection.collapsed(
                                  offset: _model
                                      .descFinalTextController!.text.length);
                        });
                        // listPerso
                        _model.listPerso = await queryDreamsRecordOnce(
                          queryBuilder: (dreamsRecord) => dreamsRecord
                              .where(
                                'user',
                                isEqualTo: currentUserReference,
                              )
                              .where(
                                'type',
                                isEqualTo: 'Personnages',
                              ),
                        );
                        _model.num = 0;
                        safeSetState(() {});
                        if (_model.listPerso != null &&
                            (_model.listPerso)!.isNotEmpty) {
                          while (_model.num! < _model.listPerso!.length) {
                            _model.promptPerso = await actions.replace(
                              _model.descFinalTextController.text,
                              _model.listPerso![_model.num!].title,
                              _model.listPerso![_model.num!].description,
                            );
                            _model.num = _model.num! + 1;
                            safeSetState(() {});
                          }
                          safeSetState(() {
                            _model.descFinalTextController?.text =
                                _model.promptPerso!;
                            _model.descFinalTextController?.selection =
                                TextSelection.collapsed(
                                    offset: _model
                                        .descFinalTextController!.text.length);
                          });
                        }
                        // listPerso
                        _model.listLieu = await queryDreamsRecordOnce(
                          queryBuilder: (dreamsRecord) => dreamsRecord
                              .where(
                                'user',
                                isEqualTo: currentUserReference,
                              )
                              .where(
                                'type',
                                isEqualTo: 'Lieux',
                              ),
                        );
                        _model.num = 0;
                        safeSetState(() {});
                        if (_model.listLieu != null &&
                            (_model.listLieu)!.isNotEmpty) {
                          while (_model.num! < _model.listLieu!.length) {
                            _model.promptLieu = await actions.replace(
                              _model.descFinalTextController.text,
                              _model.listLieu![_model.num!].title,
                              _model.listLieu![_model.num!].description,
                            );
                            _model.num = _model.num! + 1;
                          }
                          safeSetState(() {
                            _model.descFinalTextController?.text =
                                _model.promptLieu!;
                            _model.descFinalTextController?.selection =
                                TextSelection.collapsed(
                                    offset: _model
                                        .descFinalTextController!.text.length);
                          });
                        }
                      } else {
                        safeSetState(() {
                          _model.descFinalTextController?.text =
                              _model.descLine!;
                          _model.descFinalTextController?.selection =
                              TextSelection.collapsed(
                                  offset: _model
                                      .descFinalTextController!.text.length);
                        });
                      }

                      // 50%
                      safeSetState(() {
                        _model.pourcentageTextController?.text = '0.5';
                        _model.pourcentageTextController?.selection =
                            TextSelection.collapsed(
                                offset: _model
                                    .pourcentageTextController!.text.length);
                      });
                      // textInfo
                      safeSetState(() {
                        _model.addTextTextController?.text =
                            'Génération de l\'image';
                        _model.addTextTextController?.selection =
                            TextSelection.collapsed(
                                offset:
                                    _model.addTextTextController!.text.length);
                      });
                      _model.descFLine = await actions.replace(
                        _model.descFinalTextController.text,
                        '\\n',
                        ' ',
                      );
                      _model.descFGuuillemet = await actions.replace(
                        _model.descFLine!,
                        '\\n',
                        'r\'\\n\'',
                      );
                      await geminiGenerateText(
                        context,
                        'Reformule la description suivante qui sera utilisé par la generation d\'une image. Si plusieurs scènes sont identifiées, il faut les separé pour que cela représent une bande dessinée. Pour finir traduis la nouvelle description en anglais :${_model.descFGuuillemet}\\n Obligation : Je veux uniquement la reponse en Anglais et que ce soit divisé en scene. Il faut detaillé au maxaimum to en gardant la demande initiale',
                      ).then((generatedText) {
                        safeSetState(() => _model.descEnglish = generatedText);
                      });

                      _model.descFEnglishLine = await actions.replace(
                        _model.descEnglish!,
                        '\\n',
                        'r\'\\n\'',
                      );
                      _model.descFEnglishGuillemets = await actions.replace(
                        _model.descFLine!,
                        '\"',
                        ' ',
                      );
                      _model.gptid = await OpenAIGroup.imagesCall.call(
                        prompt: _model.descFEnglishGuillemets,
                      );

                      if ((_model.gptid?.succeeded ?? true)) {
                        // 70%
                        safeSetState(() {
                          _model.pourcentageTextController?.text = '0.7';
                          _model.pourcentageTextController?.selection =
                              TextSelection.collapsed(
                                  offset: _model
                                      .pourcentageTextController!.text.length);
                        });
                        // textInfo
                        safeSetState(() {
                          _model.addTextTextController?.text =
                              'Sauvegarde de l\'image';
                          _model.addTextTextController?.selection =
                              TextSelection.collapsed(
                                  offset: _model
                                      .addTextTextController!.text.length);
                        });
                        _model.imageDL = await actions.downloadImage(
                          OpenAIGroup.imagesCall.url(
                            (_model.gptid?.jsonBody ?? ''),
                          )!,
                          _model.fichierTextController.text,
                        );
                        {
                          safeSetState(() => _model.isDataUploading = true);
                          var selectedUploadedFiles = <FFUploadedFile>[];
                          var selectedMedia = <SelectedFile>[];
                          var downloadUrls = <String>[];
                          try {
                            showUploadMessage(
                              context,
                              'Uploading file...',
                              showLoading: true,
                            );
                            selectedUploadedFiles =
                                _model.imageDL!.bytes!.isNotEmpty
                                    ? [_model.imageDL!]
                                    : <FFUploadedFile>[];
                            selectedMedia = selectedFilesFromUploadedFiles(
                              selectedUploadedFiles,
                            );
                            downloadUrls = (await Future.wait(
                              selectedMedia.map(
                                (m) async =>
                                    await uploadData(m.storagePath, m.bytes),
                              ),
                            ))
                                .where((u) => u != null)
                                .map((u) => u!)
                                .toList();
                          } finally {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            _model.isDataUploading = false;
                          }
                          if (selectedUploadedFiles.length ==
                                  selectedMedia.length &&
                              downloadUrls.length == selectedMedia.length) {
                            safeSetState(() {
                              _model.uploadedLocalFile =
                                  selectedUploadedFiles.first;
                              _model.uploadedFileUrl = downloadUrls.first;
                            });
                            showUploadMessage(context, 'Success!');
                          } else {
                            safeSetState(() {});
                            showUploadMessage(context, 'Failed to upload data');
                            return;
                          }
                        }

                        // textInfo
                        safeSetState(() {
                          _model.addTextTextController?.text =
                              'Finalisation de la création.';
                          _model.addTextTextController?.selection =
                              TextSelection.collapsed(
                                  offset: _model
                                      .addTextTextController!.text.length);
                        });
                        // updateBDD

                        await DreamsRecord.collection
                            .doc()
                            .set(createDreamsRecordData(
                              title: _model.titleTextController.text,
                              description:
                                  _model.descriptionTextController.text,
                              image: _model.uploadedFileUrl,
                              creationDate: getCurrentTimestamp,
                              type: _model.typeValue,
                              file: _model.fichierTextController.text,
                              user: currentUserReference,
                              favoris: false,
                            ));
                        // 90%
                        safeSetState(() {
                          _model.pourcentageTextController?.text = '0.9';
                          _model.pourcentageTextController?.selection =
                              TextSelection.collapsed(
                                  offset: _model
                                      .pourcentageTextController!.text.length);
                        });
                        context.safePop();
                      } else {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Erreur'),
                              content: Text(
                                  'Probleme de génération d\'image, pouvez-vous reessayer ? '),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    }),
                    Future(() async {
                      _model.timerController.onStartTimer();
                    }),
                  ]);
                  _model.timerController.onStopTimer();

                  safeSetState(() {});
                },
                text: FFLocalizations.of(context).getText(
                  'ryiqe6wh' /* Ajouter */,
                ),
                options: FFButtonOptions(
                  width: 270.0,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleMediumFamily,
                        color: Colors.white,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleMediumFamily),
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            if (true == false)
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.fichierTextController,
                      focusNode: _model.fichierFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      validator: _model.fichierTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.pourcentageTextController,
                      focusNode: _model.pourcentageFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      validator: _model.pourcentageTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.addTextTextController,
                      focusNode: _model.addTextFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          'tfu5cllq' /* Label here... */,
                        ),
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      validator: _model.addTextTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.descFinalTextController,
                      focusNode: _model.descFinalFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          '7t3mmft1' /* Label here... */,
                        ),
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      validator: _model.descFinalTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.presetStyleTextController,
                      focusNode: _model.presetStyleFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          '7t3mmft1' /* Label here... */,
                        ),
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .labelMediumFamily),
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      validator: _model.presetStyleTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
