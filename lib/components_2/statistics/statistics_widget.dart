import '/components_2/icon_container_circle/icon_container_circle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'statistics_model.dart';
export 'statistics_model.dart';

class StatisticsWidget extends StatefulWidget {
  const StatisticsWidget({
    super.key,
    required this.icon,
    required this.bgcolor,
    required this.title,
    required this.subtitle,
  });

  final Widget? icon;
  final Color? bgcolor;
  final String? title;
  final String? subtitle;

  @override
  State<StatisticsWidget> createState() => _StatisticsWidgetState();
}

class _StatisticsWidgetState extends State<StatisticsWidget> {
  late StatisticsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatisticsModel());

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
        mainAxisSize: MainAxisSize.min,
        children: [
          wrapWithModel(
            model: _model.iconContainerCircleModel,
            updateCallback: () => safeSetState(() {}),
            child: IconContainerCircleWidget(
              icon: widget!.icon!,
              bgcolor: widget!.bgcolor!,
              daimiter: 42.0,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
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
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget!.subtitle,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      color: FlutterFlowTheme.of(context).secondaryTitle,
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(SizedBox(height: 6.0)),
          ),
        ].divide(SizedBox(width: 14.0)),
      ),
    );
  }
}
