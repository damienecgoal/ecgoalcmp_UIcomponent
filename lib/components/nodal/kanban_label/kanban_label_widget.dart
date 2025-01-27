import '/components_2/labels1/labels1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'kanban_label_model.dart';
export 'kanban_label_model.dart';

class KanbanLabelWidget extends StatefulWidget {
  const KanbanLabelWidget({super.key});

  @override
  State<KanbanLabelWidget> createState() => _KanbanLabelWidgetState();
}

class _KanbanLabelWidgetState extends State<KanbanLabelWidget> {
  late KanbanLabelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => KanbanLabelModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(1.0, 0.0),
      child: Container(
        width: 340.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: Color(0x29000000),
              offset: Offset(0.0, 0.0),
              spreadRadius: 4.0,
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                child: MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.select = 'Business';
                      safeSetState(() {});
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 42.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          () {
                            if (_model.mouseRegionHovered1!) {
                              return Color(0x327367F0);
                            } else if (_model.select == 'Business') {
                              return FlutterFlowTheme.of(context).primary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.labels1Model1,
                              updateCallback: () => safeSetState(() {}),
                              child: Labels1Widget(
                                title: 'UX',
                                color: FlutterFlowTheme.of(context).success,
                                bg: Color(0x3328C76F),
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered1 = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered1 = false);
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                child: MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.select = 'Personal';
                      safeSetState(() {});
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 42.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          () {
                            if (_model.mouseRegionHovered2!) {
                              return Color(0x327367F0);
                            } else if (_model.select == 'Personal') {
                              return FlutterFlowTheme.of(context).primary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.labels1Model2,
                              updateCallback: () => safeSetState(() {}),
                              child: Labels1Widget(
                                title: 'Image',
                                color: FlutterFlowTheme.of(context).warning,
                                bg: Color(0x33FF9F43),
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered2 = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered2 = false);
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                child: MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.select = 'Family';
                      safeSetState(() {});
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 42.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          () {
                            if (_model.mouseRegionHovered3!) {
                              return Color(0x327367F0);
                            } else if (_model.select == 'Family') {
                              return FlutterFlowTheme.of(context).primary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.labels1Model3,
                              updateCallback: () => safeSetState(() {}),
                              child: Labels1Widget(
                                title: 'Info',
                                color: FlutterFlowTheme.of(context).info,
                                bg: Color(0x3400CFE8),
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered3 = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered3 = false);
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                child: MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.select = 'Holiday';
                      safeSetState(() {});
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 42.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          () {
                            if (_model.mouseRegionHovered4!) {
                              return Color(0x327367F0);
                            } else if (_model.select == 'Holiday') {
                              return FlutterFlowTheme.of(context).primary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.labels1Model4,
                              updateCallback: () => safeSetState(() {}),
                              child: Labels1Widget(
                                title: 'Code Review',
                                color: FlutterFlowTheme.of(context).error,
                                bg: Color(0x34EA5455),
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered4 = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered4 = false);
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                child: MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.select = 'ETC';
                      safeSetState(() {});
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 42.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          () {
                            if (_model.mouseRegionHovered5!) {
                              return Color(0x327367F0);
                            } else if (_model.select == 'ETC') {
                              return FlutterFlowTheme.of(context).primary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.labels1Model5,
                              updateCallback: () => safeSetState(() {}),
                              child: Labels1Widget(
                                title: 'App',
                                color: FlutterFlowTheme.of(context).secondary,
                                bg: Color(0x33A8AAAE),
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered5 = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered5 = false);
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                child: MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.select = 'App';
                      safeSetState(() {});
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 42.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          () {
                            if (_model.mouseRegionHovered6!) {
                              return Color(0x327367F0);
                            } else if (_model.select == 'App') {
                              return FlutterFlowTheme.of(context).primary;
                            } else {
                              return FlutterFlowTheme.of(context)
                                  .secondaryBackground;
                            }
                          }(),
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.labels1Model6,
                              updateCallback: () => safeSetState(() {}),
                              child: Labels1Widget(
                                title: 'Chaart & Maps',
                                color: FlutterFlowTheme.of(context).primary,
                                bg: Color(0x347367F0),
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered6 = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered6 = false);
                  }),
                ),
              ),
            ].divide(SizedBox(height: 6.0)),
          ),
        ),
      ),
    );
  }
}
