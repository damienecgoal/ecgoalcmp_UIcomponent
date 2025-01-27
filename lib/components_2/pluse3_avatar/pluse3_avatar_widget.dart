import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pluse3_avatar_model.dart';
export 'pluse3_avatar_model.dart';

class Pluse3AvatarWidget extends StatefulWidget {
  const Pluse3AvatarWidget({
    super.key,
    required this.number,
    required this.avatar1,
    required this.avatar2,
    required this.avatar3,
  });

  final String? number;
  final String? avatar1;
  final String? avatar2;
  final String? avatar3;

  @override
  State<Pluse3AvatarWidget> createState() => _Pluse3AvatarWidgetState();
}

class _Pluse3AvatarWidgetState extends State<Pluse3AvatarWidget> {
  late Pluse3AvatarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pluse3AvatarModel());

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
      child: Stack(
        children: [
          Container(
            width: 34.0,
            height: 34.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                width: 1.5,
              ),
            ),
            child: Container(
              width: 32.0,
              height: 32.0,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                widget!.avatar1!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(22.0, 0.0, 0.0, 0.0),
            child: Container(
              width: 34.0,
              height: 34.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  width: 1.5,
                ),
              ),
              child: Container(
                width: 32.0,
                height: 32.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  widget!.avatar2!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(44.0, 0.0, 0.0, 0.0),
            child: Container(
              width: 34.0,
              height: 34.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  width: 1.5,
                ),
              ),
              child: Container(
                width: 32.0,
                height: 32.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  widget!.avatar3!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(66.0, 0.0, 0.0, 0.0),
            child: Container(
              width: 34.0,
              height: 34.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).whiteDark,
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  width: 1.5,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget!.number,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).secondaryTitle,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
