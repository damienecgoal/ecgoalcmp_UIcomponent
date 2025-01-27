import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'delivery_product_model.dart';
export 'delivery_product_model.dart';

class DeliveryProductWidget extends StatefulWidget {
  const DeliveryProductWidget({super.key});

  @override
  State<DeliveryProductWidget> createState() => _DeliveryProductWidgetState();
}

class _DeliveryProductWidgetState extends State<DeliveryProductWidget> {
  late DeliveryProductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeliveryProductModel());

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
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/ueyyuo6z3lkl/1.png',
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
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered = false);
                  }),
                  child: Text(
                    'Google - Google Home - White',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Public Sans',
                          color: valueOrDefault<Color>(
                            _model.mouseRegionHovered
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryTitle,
                            FlutterFlowTheme.of(context).secondaryTitle,
                          ),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          lineHeight: 1.6,
                        ),
                  ),
                ),
                Text(
                  '18th Nov 2021',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).secondaryTitle,
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ].divide(const SizedBox(height: 10.0)),
            ),
          ),
        ].divide(const SizedBox(width: 20.0)),
      ),
    );
  }
}
