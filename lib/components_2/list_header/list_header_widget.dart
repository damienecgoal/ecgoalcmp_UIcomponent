import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_header_model.dart';
export 'list_header_model.dart';

class ListHeaderWidget extends StatefulWidget {
  const ListHeaderWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  State<ListHeaderWidget> createState() => _ListHeaderWidgetState();
}

class _ListHeaderWidgetState extends State<ListHeaderWidget> {
  late ListHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListHeaderModel());

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
      width: 190.0,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            valueOrDefault<String>(
              widget!.title,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: FlutterFlowTheme.of(context).secondaryHeader,
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                FFIcons.kchevronUp,
                color: FlutterFlowTheme.of(context).textFiled,
                size: 18.0,
              ),
              Icon(
                FFIcons.kchevronDown,
                color: FlutterFlowTheme.of(context).textFiled,
                size: 18.0,
              ),
            ].divide(SizedBox(height: 2.0)),
          ),
        ],
      ),
    );
  }
}
