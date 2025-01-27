import '/components_2/icon_box/icon_box_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'top_courses_model.dart';
export 'top_courses_model.dart';

class TopCoursesWidget extends StatefulWidget {
  const TopCoursesWidget({
    super.key,
    required this.icon,
    required this.bg,
    required this.title,
    required this.subtitle,
    required this.views,
  });

  final Widget? icon;
  final Color? bg;
  final String? title;
  final String? subtitle;
  final String? views;

  @override
  State<TopCoursesWidget> createState() => _TopCoursesWidgetState();
}

class _TopCoursesWidgetState extends State<TopCoursesWidget> {
  late TopCoursesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopCoursesModel());

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
          wrapWithModel(
            model: _model.iconBoxModel,
            updateCallback: () => safeSetState(() {}),
            child: IconBoxWidget(
              icon: widget!.icon!,
              bg: widget!.bg!,
              size: 42.0,
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
                        color: FlutterFlowTheme.of(context).secondaryTitle,
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
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(SizedBox(height: 6.0)),
            ),
          ),
          wrapWithModel(
            model: _model.statusCardModel,
            updateCallback: () => safeSetState(() {}),
            child: StatusCardWidget(
              title: widget!.views!,
              titleColor: FlutterFlowTheme.of(context).secondary,
              bgColor: Color(0x33A8AAAE),
            ),
          ),
        ].divide(SizedBox(width: 14.0)),
      ),
    );
  }
}
