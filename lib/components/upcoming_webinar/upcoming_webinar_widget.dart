import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'upcoming_webinar_model.dart';
export 'upcoming_webinar_model.dart';

class UpcomingWebinarWidget extends StatefulWidget {
  const UpcomingWebinarWidget({
    super.key,
    required this.icon,
    required this.bg,
    required this.size,
    required this.title,
    required this.subtitle,
  });

  final Widget? icon;
  final Color? bg;
  final double? size;
  final String? title;
  final String? subtitle;

  @override
  State<UpcomingWebinarWidget> createState() => _UpcomingWebinarWidgetState();
}

class _UpcomingWebinarWidgetState extends State<UpcomingWebinarWidget> {
  late UpcomingWebinarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpcomingWebinarModel());

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
            model: _model.iconBoxModel,
            updateCallback: () => safeSetState(() {}),
            child: IconBoxWidget(
              icon: widget.icon!,
              bg: widget.bg!,
              size: widget.size!,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.title,
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
                  widget.subtitle,
                  'ba',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(const SizedBox(height: 6.0)),
          ),
        ].divide(const SizedBox(width: 14.0)),
      ),
    );
  }
}
