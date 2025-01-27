import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_option_sub_model.dart';
export 'menu_option_sub_model.dart';

class MenuOptionSubWidget extends StatefulWidget {
  const MenuOptionSubWidget({
    super.key,
    required this.title,
    required this.active,
    required this.navigateAction,
  });

  final String? title;
  final bool? active;
  final Future Function()? navigateAction;

  @override
  State<MenuOptionSubWidget> createState() => _MenuOptionSubWidgetState();
}

class _MenuOptionSubWidgetState extends State<MenuOptionSubWidget> {
  late MenuOptionSubModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuOptionSubModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.navigateAction?.call();
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 100),
          curve: Curves.easeInOut,
          width: double.infinity,
          height: 48.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              () {
                if (widget!.active!) {
                  return FlutterFlowTheme.of(context).primary;
                } else if (_model.mouseRegionHovered!) {
                  return Color(0xFF343951);
                } else {
                  return FlutterFlowTheme.of(context).secondaryBackground;
                }
              }(),
              FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 0.0, 0.0),
                child: Icon(
                  FFIcons.kcircle,
                  color: valueOrDefault<Color>(
                    widget!.active!
                        ? Colors.white
                        : FlutterFlowTheme.of(context).secondaryText,
                    FlutterFlowTheme.of(context).secondaryText,
                  ),
                  size: 12.0,
                ),
              ),
              Text(
                widget!.title!,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Noto Sans HK',
                      color: valueOrDefault<Color>(
                        widget!.active!
                            ? Colors.white
                            : FlutterFlowTheme.of(context).secondaryText,
                        FlutterFlowTheme.of(context).secondaryText,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ]
                .divide(SizedBox(width: 12.0))
                .addToStart(SizedBox(width: 24.0))
                .addToEnd(SizedBox(width: 24.0)),
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
