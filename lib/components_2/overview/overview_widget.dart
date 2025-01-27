import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'overview_model.dart';
export 'overview_model.dart';

class OverviewWidget extends StatefulWidget {
  const OverviewWidget({
    super.key,
    required this.icon,
    required this.bg,
    required this.title,
    required this.value,
    required this.method,
    required this.description,
    required this.styleColor,
  });

  final Widget? icon;
  final Color? bg;
  final String? title;
  final String? value;
  final String? method;
  final String? description;
  final Color? styleColor;

  @override
  State<OverviewWidget> createState() => _OverviewWidgetState();
}

class _OverviewWidgetState extends State<OverviewWidget> {
  late OverviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OverviewModel());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 12.0,
            color: Color(0x14000000),
            offset: Offset(
              0.0,
              0.0,
            ),
            spreadRadius: 2.0,
          )
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Text(
              valueOrDefault<String>(
                widget!.title,
                'na',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Public Sans',
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget!.value,
                        'na',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Public Sans',
                            color: widget!.styleColor,
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget!.method,
                        'na',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Public Sans',
                            color: FlutterFlowTheme.of(context).secondaryTitle,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
                Text(
                  valueOrDefault<String>(
                    widget!.description,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(SizedBox(height: 10.0)),
            ),
          ].divide(SizedBox(height: 22.0)),
        ),
      ),
    );
  }
}
