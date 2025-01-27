import '/components/avatar_2/avatar2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'avatar_title_model.dart';
export 'avatar_title_model.dart';

class AvatarTitleWidget extends StatefulWidget {
  const AvatarTitleWidget({
    super.key,
    required this.avatar,
    required this.name,
    required this.size,
    required this.description,
  });

  final String? avatar;
  final String? name;
  final double? size;
  final String? description;

  @override
  State<AvatarTitleWidget> createState() => _AvatarTitleWidgetState();
}

class _AvatarTitleWidgetState extends State<AvatarTitleWidget> {
  late AvatarTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvatarTitleModel());

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
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          wrapWithModel(
            model: _model.avatar2Model,
            updateCallback: () => safeSetState(() {}),
            child: Avatar2Widget(
              diameter: widget.size!,
              image: widget.avatar!,
              name: widget.name!,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.name,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      color: FlutterFlowTheme.of(context).secondaryTitle,
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.description,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ].divide(const SizedBox(height: 4.0)),
          ),
        ].divide(const SizedBox(width: 8.0)),
      ),
    );
  }
}
