import '/components/avatar_2/avatar2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'avatar_name_model.dart';
export 'avatar_name_model.dart';

class AvatarNameWidget extends StatefulWidget {
  const AvatarNameWidget({
    super.key,
    required this.avatar,
    required this.name,
    required this.title,
    required this.size,
  });

  final String? avatar;
  final String? name;
  final String? title;
  final double? size;

  @override
  State<AvatarNameWidget> createState() => _AvatarNameWidgetState();
}

class _AvatarNameWidgetState extends State<AvatarNameWidget> {
  late AvatarNameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvatarNameModel());

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
            model: _model.avatar2Model,
            updateCallback: () => safeSetState(() {}),
            child: Avatar2Widget(
              diameter: widget!.size!,
              image: widget!.avatar!,
              name: widget!.name!,
            ),
          ),
          Column(
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
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget!.title,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ].divide(SizedBox(height: 6.0)),
          ),
        ].divide(SizedBox(width: 8.0)),
      ),
    );
  }
}
