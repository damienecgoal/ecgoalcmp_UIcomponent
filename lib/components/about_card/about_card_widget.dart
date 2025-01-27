import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'about_card_model.dart';
export 'about_card_model.dart';

class AboutCardWidget extends StatefulWidget {
  const AboutCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.title2,
  });

  final Widget? icon;
  final String? title;
  final String? title2;

  @override
  State<AboutCardWidget> createState() => _AboutCardWidgetState();
}

class _AboutCardWidgetState extends State<AboutCardWidget> {
  late AboutCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutCardModel());

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
          widget!.icon!,
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
                  fontWeight: FontWeight.w500,
                ),
          ),
          Text(
            valueOrDefault<String>(
              widget!.title2,
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
