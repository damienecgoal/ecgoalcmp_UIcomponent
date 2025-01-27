import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'help_contant_model.dart';
export 'help_contant_model.dart';

class HelpContantWidget extends StatefulWidget {
  const HelpContantWidget({
    super.key,
    required this.title,
    required this.comment1,
    this.comment2,
    this.comment3,
    this.comment4,
  });

  final String? title;
  final String? comment1;
  final String? comment2;
  final String? comment3;
  final String? comment4;

  @override
  State<HelpContantWidget> createState() => _HelpContantWidgetState();
}

class _HelpContantWidgetState extends State<HelpContantWidget> {
  late HelpContantModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HelpContantModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 12.0,
              color: Color(0x14000000),
              offset: Offset(
                0.0,
                0.0,
              ),
              spreadRadius: 2.0,
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          width: double.infinity,
          color: Color(0x00000000),
          child: ExpandableNotifier(
            controller: _model.expandableExpandableController,
            child: ExpandablePanel(
              header: Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  valueOrDefault<String>(
                    widget!.title,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              collapsed: Container(
                width: 0.0,
                height: 0.0,
                decoration: BoxDecoration(),
              ),
              expanded: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 18.0),
                child: RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: valueOrDefault<String>(
                          widget!.comment1,
                          'na',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              color:
                                  FlutterFlowTheme.of(context).secondaryTitle,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              lineHeight: 1.4,
                            ),
                      ),
                      TextSpan(
                        text: valueOrDefault<String>(
                          widget!.comment2,
                          'na',
                        ),
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 16.0,
                        ),
                      ),
                      TextSpan(
                        text: valueOrDefault<String>(
                          widget!.comment3,
                          'na',
                        ),
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).secondaryTitle,
                          fontSize: 16.0,
                        ),
                      ),
                      TextSpan(
                        text: valueOrDefault<String>(
                          widget!.comment4,
                          'na',
                        ),
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 16.0,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Public Sans',
                          color: FlutterFlowTheme.of(context).secondaryTitle,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          lineHeight: 1.4,
                        ),
                  ),
                ),
              ),
              theme: ExpandableThemeData(
                tapHeaderToExpand: true,
                tapBodyToExpand: false,
                tapBodyToCollapse: false,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                hasIcon: true,
                expandIcon: FFIcons.kchevronRight,
                collapseIcon: FFIcons.kchevronDown,
                iconSize: 24.0,
                iconColor: FlutterFlowTheme.of(context).secondaryTitle,
                iconPadding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
