import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chart_view_box_model.dart';
export 'chart_view_box_model.dart';

class ChartViewBoxWidget extends StatefulWidget {
  const ChartViewBoxWidget({
    super.key,
    required this.name,
    required this.color,
    required this.daimiter,
  });

  final String? name;
  final Color? color;
  final double? daimiter;

  @override
  State<ChartViewBoxWidget> createState() => _ChartViewBoxWidgetState();
}

class _ChartViewBoxWidgetState extends State<ChartViewBoxWidget> {
  late ChartViewBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartViewBoxModel());

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
      height: 36.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).lineColor,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: widget!.daimiter,
              height: widget!.daimiter,
              decoration: BoxDecoration(
                color: widget!.color,
                shape: BoxShape.circle,
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget!.name,
                'na',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Public Sans',
                    color: FlutterFlowTheme.of(context).secondaryTitle,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ].divide(SizedBox(width: 6.0)),
        ),
      ),
    );
  }
}
