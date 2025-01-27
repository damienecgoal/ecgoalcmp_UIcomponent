import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'text_style_model.dart';
export 'text_style_model.dart';

class TextStyleWidget extends StatefulWidget {
  const TextStyleWidget({super.key});

  @override
  State<TextStyleWidget> createState() => _TextStyleWidgetState();
}

class _TextStyleWidgetState extends State<TextStyleWidget> {
  late TextStyleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextStyleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.textStyle = 'Bold';
                safeSetState(() {});
              },
              child: Icon(
                FFIcons.kbold,
                color: valueOrDefault<Color>(
                  () {
                    if (_model.mouseRegionHovered1!) {
                      return FlutterFlowTheme.of(context).primary;
                    } else if (_model.textStyle == 'Bold') {
                      return FlutterFlowTheme.of(context).primary;
                    } else {
                      return FlutterFlowTheme.of(context).secondaryTitle;
                    }
                  }(),
                  FlutterFlowTheme.of(context).secondaryTitle,
                ),
                size: 22.0,
              ),
            ),
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegionHovered1 = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegionHovered1 = false);
            }),
          ),
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.textStyle = 'Italic';
                safeSetState(() {});
              },
              child: Icon(
                FFIcons.kitalic,
                color: valueOrDefault<Color>(
                  () {
                    if (_model.mouseRegionHovered2!) {
                      return FlutterFlowTheme.of(context).primary;
                    } else if (_model.textStyle == 'Italic') {
                      return FlutterFlowTheme.of(context).primary;
                    } else {
                      return FlutterFlowTheme.of(context).secondaryTitle;
                    }
                  }(),
                  FlutterFlowTheme.of(context).secondaryTitle,
                ),
                size: 22.0,
              ),
            ),
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegionHovered2 = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegionHovered2 = false);
            }),
          ),
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.textStyle = 'Underline';
                safeSetState(() {});
              },
              child: Icon(
                FFIcons.kunderline,
                color: valueOrDefault<Color>(
                  () {
                    if (_model.mouseRegionHovered3!) {
                      return FlutterFlowTheme.of(context).primary;
                    } else if (_model.textStyle == 'Underline') {
                      return FlutterFlowTheme.of(context).primary;
                    } else {
                      return FlutterFlowTheme.of(context).secondaryTitle;
                    }
                  }(),
                  FlutterFlowTheme.of(context).secondaryTitle,
                ),
                size: 22.0,
              ),
            ),
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegionHovered3 = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegionHovered3 = false);
            }),
          ),
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.list = 'Number';
                safeSetState(() {});
              },
              child: Icon(
                FFIcons.klistTree,
                color: valueOrDefault<Color>(
                  () {
                    if (_model.mouseRegionHovered4!) {
                      return FlutterFlowTheme.of(context).primary;
                    } else if (_model.list == 'Number') {
                      return FlutterFlowTheme.of(context).primary;
                    } else {
                      return FlutterFlowTheme.of(context).secondaryTitle;
                    }
                  }(),
                  FlutterFlowTheme.of(context).secondaryTitle,
                ),
                size: 22.0,
              ),
            ),
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegionHovered4 = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegionHovered4 = false);
            }),
          ),
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.list = 'Dots';
                safeSetState(() {});
              },
              child: Icon(
                FFIcons.klist,
                color: valueOrDefault<Color>(
                  () {
                    if (_model.mouseRegionHovered5!) {
                      return FlutterFlowTheme.of(context).primary;
                    } else if (_model.list == 'Dots') {
                      return FlutterFlowTheme.of(context).primary;
                    } else {
                      return FlutterFlowTheme.of(context).secondaryTitle;
                    }
                  }(),
                  FlutterFlowTheme.of(context).secondaryTitle,
                ),
                size: 22.0,
              ),
            ),
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegionHovered5 = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegionHovered5 = false);
            }),
          ),
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: Icon(
              FFIcons.klink,
              color: valueOrDefault<Color>(
                _model.mouseRegionHovered6!
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryTitle,
                FlutterFlowTheme.of(context).secondaryTitle,
              ),
              size: 22.0,
            ),
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegionHovered6 = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegionHovered6 = false);
            }),
          ),
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: Icon(
              Icons.image_outlined,
              color: valueOrDefault<Color>(
                _model.mouseRegionHovered7!
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryTitle,
                FlutterFlowTheme.of(context).secondaryTitle,
              ),
              size: 22.0,
            ),
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegionHovered7 = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegionHovered7 = false);
            }),
          ),
        ].divide(SizedBox(width: 8.0)),
      ),
    );
  }
}
