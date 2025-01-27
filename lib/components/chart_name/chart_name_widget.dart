import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chart_name_model.dart';
export 'chart_name_model.dart';

class ChartNameWidget extends StatefulWidget {
  const ChartNameWidget({
    super.key,
    required this.name,
    required this.color,
    required this.daimiter,
  });

  final String? name;
  final Color? color;
  final double? daimiter;

  @override
  State<ChartNameWidget> createState() => _ChartNameWidgetState();
}

class _ChartNameWidgetState extends State<ChartNameWidget> {
  late ChartNameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartNameModel());

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
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(SizedBox(width: 8.0)),
      ),
    );
  }
}
