import '/components/up_down_text/up_down_text_widget.dart';
import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'delivery_performance_model.dart';
export 'delivery_performance_model.dart';

class DeliveryPerformanceWidget extends StatefulWidget {
  const DeliveryPerformanceWidget({
    super.key,
    required this.icon,
    required this.bg,
    required this.title,
    required this.chevron,
    required this.text,
    required this.color,
    required this.performance,
    required this.size,
  });

  final Widget? icon;
  final Color? bg;
  final String? title;
  final Widget? chevron;
  final String? text;
  final Color? color;
  final String? performance;
  final double? size;

  @override
  State<DeliveryPerformanceWidget> createState() =>
      _DeliveryPerformanceWidgetState();
}

class _DeliveryPerformanceWidgetState extends State<DeliveryPerformanceWidget> {
  late DeliveryPerformanceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeliveryPerformanceModel());

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
          Expanded(
            child: Column(
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
                        color: FlutterFlowTheme.of(context).secondaryTitle,
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                wrapWithModel(
                  model: _model.upDownTextModel,
                  updateCallback: () => safeSetState(() {}),
                  child: UpDownTextWidget(
                    chavron: widget.chevron!,
                    text: widget.text!,
                    color: widget.color!,
                  ),
                ),
              ].divide(const SizedBox(height: 4.0)),
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.performance,
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
        ].divide(const SizedBox(width: 14.0)),
      ),
    );
  }
}
