import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'use_model.dart';
export 'use_model.dart';

class UseWidget extends StatefulWidget {
  const UseWidget({
    super.key,
    required this.icon,
    required this.description,
    required this.value,
  });

  final Widget? icon;
  final String? description;
  final String? value;

  @override
  State<UseWidget> createState() => _UseWidgetState();
}

class _UseWidgetState extends State<UseWidget> {
  late UseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UseModel());

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
        children: [
          Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              shape: BoxShape.circle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
            child: widget!.icon!,
          ),
          Text(
            valueOrDefault<String>(
              widget!.description,
              'na',
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: FlutterFlowTheme.of(context).secondaryTitle,
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                  lineHeight: 1.3,
                ),
          ),
          Text(
            valueOrDefault<String>(
              widget!.value,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: FlutterFlowTheme.of(context).primary,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ].divide(SizedBox(height: 12.0)),
      ),
    );
  }
}
