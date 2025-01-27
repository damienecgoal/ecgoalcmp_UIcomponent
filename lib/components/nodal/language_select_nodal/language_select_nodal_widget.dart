import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'language_select_nodal_model.dart';
export 'language_select_nodal_model.dart';

class LanguageSelectNodalWidget extends StatefulWidget {
  const LanguageSelectNodalWidget({super.key});

  @override
  State<LanguageSelectNodalWidget> createState() =>
      _LanguageSelectNodalWidgetState();
}

class _LanguageSelectNodalWidgetState extends State<LanguageSelectNodalWidget> {
  late LanguageSelectNodalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguageSelectNodalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 56.0, 0.0, 0.0),
      child: Container(
        width: 170.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
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
          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 12.0, 8.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered1 = true);
                }),
                onExit: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered1 = false);
                }),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.select = 'English';
                    safeSetState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        () {
                          if (_model.mouseRegionHovered1) {
                            return const Color(0x347367F0);
                          } else if (_model.select == 'English') {
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'English',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Public Sans',
                                  color: valueOrDefault<Color>(
                                    () {
                                      if (_model.mouseRegionHovered1) {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      } else if (_model.select == 'English') {
                                        return Colors.white;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryTitle;
                                      }
                                    }(),
                                    FlutterFlowTheme.of(context).secondaryTitle,
                                  ),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered2 = true);
                }),
                onExit: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered2 = false);
                }),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.select = 'French';
                    safeSetState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        () {
                          if (_model.mouseRegionHovered2) {
                            return const Color(0x347367F0);
                          } else if (_model.select == 'French') {
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'French',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Public Sans',
                                  color: valueOrDefault<Color>(
                                    () {
                                      if (_model.mouseRegionHovered2) {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      } else if (_model.select == 'French') {
                                        return Colors.white;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryTitle;
                                      }
                                    }(),
                                    FlutterFlowTheme.of(context).secondaryTitle,
                                  ),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered3 = true);
                }),
                onExit: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered3 = false);
                }),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.select = 'Arabic';
                    safeSetState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        () {
                          if (_model.mouseRegionHovered3) {
                            return const Color(0x347367F0);
                          } else if (_model.select == 'Arabic') {
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Arabic',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Public Sans',
                                  color: valueOrDefault<Color>(
                                    () {
                                      if (_model.mouseRegionHovered3) {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      } else if (_model.select == 'Arabic') {
                                        return Colors.white;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryTitle;
                                      }
                                    }(),
                                    FlutterFlowTheme.of(context).secondaryTitle,
                                  ),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                onEnter: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered4 = true);
                }),
                onExit: ((event) async {
                  safeSetState(() => _model.mouseRegionHovered4 = false);
                }),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.select = 'German';
                    safeSetState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        () {
                          if (_model.mouseRegionHovered4) {
                            return const Color(0x347367F0);
                          } else if (_model.select == 'German') {
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'German',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Public Sans',
                                  color: valueOrDefault<Color>(
                                    () {
                                      if (_model.mouseRegionHovered4) {
                                        return FlutterFlowTheme.of(context)
                                            .primary;
                                      } else if (_model.select == 'German') {
                                        return Colors.white;
                                      } else {
                                        return FlutterFlowTheme.of(context)
                                            .secondaryTitle;
                                      }
                                    }(),
                                    FlutterFlowTheme.of(context).secondaryTitle,
                                  ),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
