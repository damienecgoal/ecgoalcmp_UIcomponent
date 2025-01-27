import '/backend/schema/structs/index.dart';
import '/components_2/user_card/user_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mail_card_model.dart';
export 'mail_card_model.dart';

class MailCardWidget extends StatefulWidget {
  const MailCardWidget({
    super.key,
    this.avatar,
    required this.sender,
    required this.message,
    required this.time,
    required this.color,
    required this.label,
    required this.starred,
  });

  final String? avatar;
  final String? sender;
  final String? message;
  final DateTime? time;
  final ColorStruct? color;
  final LabelStruct? label;
  final bool? starred;

  @override
  State<MailCardWidget> createState() => _MailCardWidgetState();
}

class _MailCardWidgetState extends State<MailCardWidget> {
  late MailCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MailCardModel());

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Material(
            color: Colors.transparent,
            elevation: valueOrDefault<double>(
              _model.mouseRegionHovered! ? 3.0 : 0.0,
              0.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 20.0, 14.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.checkboxValue ??= false,
                        onChanged: (newValue) async {
                          safeSetState(() => _model.checkboxValue = newValue!);
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: Colors.white,
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.select = !_model.select;
                        safeSetState(() {});
                      },
                      child: Builder(
                        builder: (context) {
                          if (_model.select) {
                            return Icon(
                              FFIcons.kstar,
                              color: FlutterFlowTheme.of(context).warning,
                              size: 24.0,
                            );
                          } else {
                            return Icon(
                              FFIcons.kstar,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            );
                          }
                        },
                      ),
                    ),
                    wrapWithModel(
                      model: _model.userCardModel,
                      updateCallback: () => safeSetState(() {}),
                      child: UserCardWidget(
                        avatar: widget!.avatar!,
                        name: widget!.sender!,
                        color: widget!.color!,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        valueOrDefault<String>(
                          widget!.message,
                          'NA',
                        ),
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        if (_model.mouseRegionHovered ?? false) {
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.select = !_model.select;
                                  safeSetState(() {});
                                },
                                child: Builder(
                                  builder: (context) {
                                    if (_model.select) {
                                      return Icon(
                                        FFIcons.kmailOpened,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 22.0,
                                      );
                                    } else {
                                      return Icon(
                                        FFIcons.kmail,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 22.0,
                                      );
                                    }
                                  },
                                ),
                              ),
                              Icon(
                                FFIcons.ktrash,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 22.0,
                              ),
                              Icon(
                                FFIcons.karchive,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 22.0,
                              ),
                            ].divide(SizedBox(width: 14.0)),
                          );
                        } else {
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 8.0,
                                height: 8.0,
                                decoration: BoxDecoration(
                                  color: valueOrDefault<Color>(
                                    widget!.label?.color,
                                    FlutterFlowTheme.of(context).success,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Text(
                                dateTimeFormat("jm", widget!.time),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Public Sans',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          );
                        }
                      },
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
              ),
            ),
          ),
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).lineColor,
          ),
        ],
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
