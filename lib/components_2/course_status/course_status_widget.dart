import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'course_status_model.dart';
export 'course_status_model.dart';

class CourseStatusWidget extends StatefulWidget {
  const CourseStatusWidget({
    super.key,
    required this.status,
    required this.statusColor,
    required this.bg,
    required this.ratings,
    required this.count,
  });

  final String? status;
  final Color? statusColor;
  final Color? bg;
  final String? ratings;
  final String? count;

  @override
  State<CourseStatusWidget> createState() => _CourseStatusWidgetState();
}

class _CourseStatusWidgetState extends State<CourseStatusWidget> {
  late CourseStatusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourseStatusModel());

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          wrapWithModel(
            model: _model.statusCardModel,
            updateCallback: () => safeSetState(() {}),
            child: StatusCardWidget(
              title: widget!.status!,
              titleColor: widget!.statusColor!,
              bgColor: widget!.bg!,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                valueOrDefault<String>(
                  widget!.ratings,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Icon(
                FFIcons.kstar,
                color: FlutterFlowTheme.of(context).warning,
                size: 22.0,
              ),
              Text(
                valueOrDefault<String>(
                  widget!.count,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(SizedBox(width: 8.0)),
          ),
        ],
      ),
    );
  }
}
