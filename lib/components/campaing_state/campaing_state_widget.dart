import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'campaing_state_model.dart';
export 'campaing_state_model.dart';

class CampaingStateWidget extends StatefulWidget {
  const CampaingStateWidget({
    super.key,
    required this.icon,
    required this.bg,
    required this.title,
    required this.contity,
    required this.total,
    required this.totalcolor,
  });

  final Widget? icon;
  final Color? bg;
  final String? title;
  final String? contity;
  final String? total;
  final Color? totalcolor;

  @override
  State<CampaingStateWidget> createState() => _CampaingStateWidgetState();
}

class _CampaingStateWidgetState extends State<CampaingStateWidget> {
  late CampaingStateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CampaingStateModel());

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
              color: widget!.bg,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: widget!.icon!,
          ),
          Expanded(
            child: Text(
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
          ),
          Text(
            valueOrDefault<String>(
              widget!.contity,
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
              widget!.total,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: widget!.totalcolor,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(SizedBox(width: 14.0)),
      ),
    );
  }
}
