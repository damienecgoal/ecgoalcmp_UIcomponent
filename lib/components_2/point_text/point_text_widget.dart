import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'point_text_model.dart';
export 'point_text_model.dart';

class PointTextWidget extends StatefulWidget {
  const PointTextWidget({
    super.key,
    required this.text,
  });

  final String? text;

  @override
  State<PointTextWidget> createState() => _PointTextWidgetState();
}

class _PointTextWidgetState extends State<PointTextWidget> {
  late PointTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PointTextModel());

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
          Icon(
            FFIcons.kcircle,
            color: FlutterFlowTheme.of(context).secondaryTitle,
            size: 8.0,
          ),
          Text(
            valueOrDefault<String>(
              widget!.text,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: FlutterFlowTheme.of(context).secondaryTitle,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(SizedBox(width: 12.0)),
      ),
    );
  }
}
