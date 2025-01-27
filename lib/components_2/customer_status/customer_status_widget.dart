import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'customer_status_model.dart';
export 'customer_status_model.dart';

class CustomerStatusWidget extends StatefulWidget {
  const CustomerStatusWidget({
    super.key,
    required this.icon,
    required this.bg,
    required this.title,
    required this.method,
  });

  final Widget? icon;
  final Color? bg;
  final String? title;
  final String? method;

  @override
  State<CustomerStatusWidget> createState() => _CustomerStatusWidgetState();
}

class _CustomerStatusWidgetState extends State<CustomerStatusWidget> {
  late CustomerStatusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerStatusModel());

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
        mainAxisSize: MainAxisSize.min,
        children: [
          wrapWithModel(
            model: _model.iconBoxModel,
            updateCallback: () => safeSetState(() {}),
            child: IconBoxWidget(
              icon: widget.icon!,
              bg: widget.bg!,
              size: 44.0,
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
                  widget.method,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      color: FlutterFlowTheme.of(context).secondaryTitle,
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(const SizedBox(height: 6.0)),
          ),
        ].divide(const SizedBox(width: 8.0)),
      ),
    );
  }
}
