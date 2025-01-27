import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'help_card_model.dart';
export 'help_card_model.dart';

class HelpCardWidget extends StatefulWidget {
  const HelpCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  final Widget? icon;
  final String? title;
  final String? description;

  @override
  State<HelpCardWidget> createState() => _HelpCardWidgetState();
}

class _HelpCardWidgetState extends State<HelpCardWidget> {
  late HelpCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HelpCardModel());

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
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.iconBoxModel,
              updateCallback: () => safeSetState(() {}),
              child: IconBoxWidget(
                icon: widget!.icon!,
                bg: Color(0x337367F0),
                size: 50.0,
              ),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Text(
                valueOrDefault<String>(
                  widget!.title,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      color: valueOrDefault<Color>(
                        _model.mouseRegionHovered!
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).secondaryTitle,
                        FlutterFlowTheme.of(context).secondaryTitle,
                      ),
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered = false);
              }),
            ),
            Text(
              valueOrDefault<String>(
                widget!.description,
                'na',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Public Sans',
                    color: FlutterFlowTheme.of(context).secondaryTitle,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
