import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'visit_source_model.dart';
export 'visit_source_model.dart';

class VisitSourceWidget extends StatefulWidget {
  const VisitSourceWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.visits,
    required this.percentage,
  });

  final Widget? icon;
  final String? title;
  final String? subtitle;
  final int? visits;
  final double? percentage;

  @override
  State<VisitSourceWidget> createState() => _VisitSourceWidgetState();
}

class _VisitSourceWidgetState extends State<VisitSourceWidget> {
  late VisitSourceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VisitSourceModel());

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
          Container(
            width: 42.0,
            height: 42.0,
            decoration: BoxDecoration(
              color: Color(0x337D818A),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: widget!.icon!,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget!.title,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget!.subtitle,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(SizedBox(height: 6.0)),
            ),
          ),
          Text(
            valueOrDefault<String>(
              formatNumber(
                widget!.visits,
                formatType: FormatType.compact,
              ),
              '0',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                ),
          ),
          Container(
            height: 28.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                getJsonField(
                  functions.percentAnalyze(widget!.percentage),
                  r'''$.type''',
                )
                    ? Color(0x3428C76F)
                    : Color(0x34EA5455),
                Color(0x3428C76F),
              ),
              borderRadius: BorderRadius.circular(4.0),
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  getJsonField(
                    functions.percentAnalyze(widget!.percentage),
                    r'''$.value''',
                  )?.toString(),
                  '0',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      color: valueOrDefault<Color>(
                        getJsonField(
                          functions.percentAnalyze(widget!.percentage),
                          r'''$.type''',
                        )
                            ? FlutterFlowTheme.of(context).success
                            : FlutterFlowTheme.of(context).error,
                        FlutterFlowTheme.of(context).success,
                      ),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
        ].divide(SizedBox(width: 14.0)),
      ),
    );
  }
}
