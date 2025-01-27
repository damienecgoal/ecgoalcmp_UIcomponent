import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'f_a_q_header_model.dart';
export 'f_a_q_header_model.dart';

class FAQHeaderWidget extends StatefulWidget {
  const FAQHeaderWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  final Widget? icon;
  final String? title;
  final String? description;

  @override
  State<FAQHeaderWidget> createState() => _FAQHeaderWidgetState();
}

class _FAQHeaderWidgetState extends State<FAQHeaderWidget> {
  late FAQHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FAQHeaderModel());

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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          wrapWithModel(
            model: _model.iconBoxModel,
            updateCallback: () => safeSetState(() {}),
            child: IconBoxWidget(
              icon: widget!.icon!,
              bg: Color(0x337367F0),
              size: 56.0,
            ),
          ),
          Column(
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
                      fontSize: 24.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
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
            ].divide(SizedBox(height: 8.0)),
          ),
        ].divide(SizedBox(width: 16.0)),
      ),
    );
  }
}
