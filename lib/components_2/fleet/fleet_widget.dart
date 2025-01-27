import '/components_2/icon_container_circle/icon_container_circle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fleet_model.dart';
export 'fleet_model.dart';

class FleetWidget extends StatefulWidget {
  const FleetWidget({
    super.key,
    required this.pin,
    required this.location,
  });

  final String? pin;
  final String? location;

  @override
  State<FleetWidget> createState() => _FleetWidgetState();
}

class _FleetWidgetState extends State<FleetWidget> {
  late FleetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FleetModel());

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
            model: _model.iconContainerCircleModel,
            updateCallback: () => safeSetState(() {}),
            child: IconContainerCircleWidget(
              icon: Icon(
                FFIcons.ktruck,
                color: FlutterFlowTheme.of(context).secondaryTitle,
                size: 24.0,
              ),
              bgcolor: Color(0x34A8AAAE),
              daimiter: 44.0,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                valueOrDefault<String>(
                  widget!.pin,
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
                  widget!.location,
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
