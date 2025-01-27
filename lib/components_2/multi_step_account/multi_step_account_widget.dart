import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'multi_step_account_model.dart';
export 'multi_step_account_model.dart';

class MultiStepAccountWidget extends StatefulWidget {
  const MultiStepAccountWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.selected,
  });

  final String? title;
  final String? subTitle;
  final Widget? icon;
  final bool? selected;

  @override
  State<MultiStepAccountWidget> createState() => _MultiStepAccountWidgetState();
}

class _MultiStepAccountWidgetState extends State<MultiStepAccountWidget> {
  late MultiStepAccountModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MultiStepAccountModel());

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
          Container(
            width: 48.0,
            height: 48.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: widget!.icon!,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                valueOrDefault<String>(
                  widget!.title,
                  'Account',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget!.subTitle,
                  'Account Details',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(SizedBox(height: 6.0)),
          ),
          Icon(
            FFIcons.kchevronRight,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
        ].divide(SizedBox(width: 18.0)),
      ),
    );
  }
}
