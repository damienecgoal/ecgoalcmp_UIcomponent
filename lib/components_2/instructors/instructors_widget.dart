import '/components_2/title_subtitle/title_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'instructors_model.dart';
export 'instructors_model.dart';

class InstructorsWidget extends StatefulWidget {
  const InstructorsWidget({
    super.key,
    required this.avatar,
    required this.name,
    required this.subtitle,
    required this.view,
  });

  final String? avatar;
  final String? name;
  final String? subtitle;
  final String? view;

  @override
  State<InstructorsWidget> createState() => _InstructorsWidgetState();
}

class _InstructorsWidgetState extends State<InstructorsWidget> {
  late InstructorsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InstructorsModel());

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
          Container(
            width: 36.0,
            height: 36.0,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              widget.avatar!,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: wrapWithModel(
              model: _model.titleSubtitleModel,
              updateCallback: () => safeSetState(() {}),
              child: TitleSubtitleWidget(
                title: widget.name!,
                subtitle: widget.subtitle!,
              ),
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.view,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: FlutterFlowTheme.of(context).secondaryTitle,
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(const SizedBox(width: 14.0)),
      ),
    );
  }
}
