import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'for_text_list_model.dart';
export 'for_text_list_model.dart';

class ForTextListWidget extends StatefulWidget {
  const ForTextListWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  final String? text1;
  final String? text2;
  final String? text3;
  final String? text4;

  @override
  State<ForTextListWidget> createState() => _ForTextListWidgetState();
}

class _ForTextListWidgetState extends State<ForTextListWidget> {
  late ForTextListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForTextListModel());

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            valueOrDefault<String>(
              widget!.text1,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: FlutterFlowTheme.of(context).secondaryTitle,
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                ),
          ),
          Text(
            valueOrDefault<String>(
              widget!.text2,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: FlutterFlowTheme.of(context).secondaryTitle,
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                ),
          ),
          Text(
            valueOrDefault<String>(
              widget!.text3,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: FlutterFlowTheme.of(context).secondaryTitle,
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                ),
          ),
          Text(
            valueOrDefault<String>(
              widget!.text4,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: FlutterFlowTheme.of(context).secondaryTitle,
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(SizedBox(height: 12.0)),
      ),
    );
  }
}
