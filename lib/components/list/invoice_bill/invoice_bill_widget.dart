import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'invoice_bill_model.dart';
export 'invoice_bill_model.dart';

class InvoiceBillWidget extends StatefulWidget {
  const InvoiceBillWidget({
    super.key,
    required this.item,
    required this.description,
    required this.cost,
    required this.qty,
    required this.price,
  });

  final String? item;
  final String? description;
  final String? cost;
  final String? qty;
  final String? price;

  @override
  State<InvoiceBillWidget> createState() => _InvoiceBillWidgetState();
}

class _InvoiceBillWidgetState extends State<InvoiceBillWidget> {
  late InvoiceBillModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvoiceBillModel());

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    valueOrDefault<String>(
                      widget!.item,
                      'na',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Public Sans',
                          color: FlutterFlowTheme.of(context).secondaryTitle,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    valueOrDefault<String>(
                      widget!.description,
                      'na',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Public Sans',
                          color: FlutterFlowTheme.of(context).secondaryTitle,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    valueOrDefault<String>(
                      widget!.cost,
                      'na',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Public Sans',
                          color: FlutterFlowTheme.of(context).secondaryTitle,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    valueOrDefault<String>(
                      widget!.qty,
                      'na',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Public Sans',
                          color: FlutterFlowTheme.of(context).secondaryTitle,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    valueOrDefault<String>(
                      widget!.price,
                      'na',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Public Sans',
                          color: FlutterFlowTheme.of(context).secondaryTitle,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
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
