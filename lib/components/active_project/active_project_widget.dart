import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'active_project_model.dart';
export 'active_project_model.dart';

class ActiveProjectWidget extends StatefulWidget {
  const ActiveProjectWidget({
    super.key,
    required this.logo,
    required this.title,
    required this.subTitle,
    required this.progress,
    required this.persentage,
    required this.color,
  });

  final String? logo;
  final String? title;
  final String? subTitle;
  final double? progress;
  final String? persentage;
  final Color? color;

  @override
  State<ActiveProjectWidget> createState() => _ActiveProjectWidgetState();
}

class _ActiveProjectWidgetState extends State<ActiveProjectWidget> {
  late ActiveProjectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActiveProjectModel());

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
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              widget!.logo!,
              width: 38.0,
              height: 38.0,
              fit: BoxFit.contain,
            ),
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
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget!.subTitle,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: LinearPercentIndicator(
                    percent: widget!.progress!,
                    lineHeight: 10.0,
                    animation: true,
                    animateFromLastPercent: true,
                    progressColor: widget!.color,
                    backgroundColor: FlutterFlowTheme.of(context).lineColor,
                    barRadius: Radius.circular(50.0),
                    padding: EdgeInsets.zero,
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget!.persentage,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(SizedBox(width: 16.0)),
            ),
          ),
        ].divide(SizedBox(width: 20.0)),
      ),
    );
  }
}
