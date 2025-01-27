import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'assignment_model.dart';
export 'assignment_model.dart';

class AssignmentWidget extends StatefulWidget {
  const AssignmentWidget({
    super.key,
    required this.progress,
    required this.color,
    required this.name,
    required this.task,
  });

  final String? progress;
  final Color? color;
  final String? name;
  final String? task;

  @override
  State<AssignmentWidget> createState() => _AssignmentWidgetState();
}

class _AssignmentWidgetState extends State<AssignmentWidget> {
  late AssignmentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssignmentModel());

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
          CircularPercentIndicator(
            percent: 0.7,
            radius: 27.0,
            lineWidth: 5.0,
            animation: true,
            animateFromLastPercent: true,
            progressColor: widget!.color,
            backgroundColor: FlutterFlowTheme.of(context).accent4,
            center: Text(
              widget!.progress!,
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Public Sans',
                    fontSize: 15.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget!.name,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget!.task,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).secondaryTitle,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ),
          FlutterFlowIconButton(
            borderRadius: 6.0,
            borderWidth: 1.0,
            buttonSize: 34.0,
            fillColor: Color(0x33A8AAAE),
            icon: Icon(
              FFIcons.kchevronRight,
              color: FlutterFlowTheme.of(context).secondary,
              size: 18.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ].divide(SizedBox(width: 14.0)),
      ),
    );
  }
}
