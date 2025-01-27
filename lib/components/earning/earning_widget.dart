import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'earning_model.dart';
export 'earning_model.dart';

class EarningWidget extends StatefulWidget {
  const EarningWidget({
    super.key,
    required this.icon,
    required this.bg,
    required this.title,
    required this.details,
    required this.amount,
    required this.amountColor,
  });

  final Widget? icon;
  final Color? bg;
  final String? title;
  final String? details;
  final String? amount;
  final Color? amountColor;

  @override
  State<EarningWidget> createState() => _EarningWidgetState();
}

class _EarningWidgetState extends State<EarningWidget> {
  late EarningModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EarningModel());

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
            width: 42.0,
            height: 42.0,
            decoration: BoxDecoration(
              color: widget.bg,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: widget.icon!,
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
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.details,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(const SizedBox(height: 6.0)),
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.amount,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: widget.amountColor,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(const SizedBox(width: 14.0)),
      ),
    );
  }
}
