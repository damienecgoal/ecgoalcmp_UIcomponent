import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'estimated_delivery_model.dart';
export 'estimated_delivery_model.dart';

class EstimatedDeliveryWidget extends StatefulWidget {
  const EstimatedDeliveryWidget({
    super.key,
    required this.product,
    required this.name,
    required this.date,
  });

  final String? product;
  final String? name;
  final String? date;

  @override
  State<EstimatedDeliveryWidget> createState() =>
      _EstimatedDeliveryWidgetState();
}

class _EstimatedDeliveryWidgetState extends State<EstimatedDeliveryWidget> {
  late EstimatedDeliveryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EstimatedDeliveryModel());

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
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              widget!.product!,
              width: 50.0,
              height: 60.0,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: Text(
                    valueOrDefault<String>(
                      widget!.name,
                      'na',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Public Sans',
                          color: valueOrDefault<Color>(
                            _model.mouseRegionHovered!
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryTitle,
                            FlutterFlowTheme.of(context).secondaryTitle,
                          ),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          lineHeight: 1.6,
                        ),
                  ),
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered = false);
                  }),
                ),
                Text(
                  valueOrDefault<String>(
                    widget!.date,
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
              ].divide(SizedBox(height: 10.0)),
            ),
          ),
        ].divide(SizedBox(width: 20.0)),
      ),
    );
  }
}
