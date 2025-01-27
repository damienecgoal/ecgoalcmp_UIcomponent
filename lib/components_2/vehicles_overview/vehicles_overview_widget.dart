import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'vehicles_overview_model.dart';
export 'vehicles_overview_model.dart';

class VehiclesOverviewWidget extends StatefulWidget {
  const VehiclesOverviewWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.time,
    required this.percen,
  });

  final Widget? icon;
  final String? title;
  final String? time;
  final String? percen;

  @override
  State<VehiclesOverviewWidget> createState() => _VehiclesOverviewWidgetState();
}

class _VehiclesOverviewWidgetState extends State<VehiclesOverviewWidget> {
  late VehiclesOverviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VehiclesOverviewModel());

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 18,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      widget.icon!,
                      Text(
                        valueOrDefault<String>(
                          widget.title,
                          'na',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Text(
                    valueOrDefault<String>(
                      widget.time,
                      'na',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Public Sans',
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.percen,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).secondaryTitle,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).lineColor,
          ),
        ],
      ),
    );
  }
}
