import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shipping_action_model.dart';
export 'shipping_action_model.dart';

class ShippingActionWidget extends StatefulWidget {
  const ShippingActionWidget({super.key});

  @override
  State<ShippingActionWidget> createState() => _ShippingActionWidgetState();
}

class _ShippingActionWidgetState extends State<ShippingActionWidget> {
  late ShippingActionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShippingActionModel());

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
      width: 170.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            color: Color(0x29000000),
            offset: Offset(0.0, 0.0),
            spreadRadius: 4.0,
          )
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(6.0, 10.0, 6.0, 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Container(
                width: double.infinity,
                height: 42.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    _model.mouseRegionHovered1!
                        ? Color(0x327367F0)
                        : FlutterFlowTheme.of(context).secondaryBackground,
                    FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        FFIcons.kedit,
                        color: valueOrDefault<Color>(
                          _model.mouseRegionHovered1!
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).secondaryTitle,
                          FlutterFlowTheme.of(context).secondaryTitle,
                        ),
                        size: 24.0,
                      ),
                      Text(
                        'Edit',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              color: valueOrDefault<Color>(
                                _model.mouseRegionHovered1!
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryTitle,
                                FlutterFlowTheme.of(context).secondaryTitle,
                              ),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered1 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered1 = false);
              }),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Container(
                width: double.infinity,
                height: 42.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    _model.mouseRegionHovered2!
                        ? Color(0x327367F0)
                        : FlutterFlowTheme.of(context).secondaryBackground,
                    FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        FFIcons.ktrash,
                        color: valueOrDefault<Color>(
                          _model.mouseRegionHovered2!
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).secondaryTitle,
                          FlutterFlowTheme.of(context).secondaryTitle,
                        ),
                        size: 24.0,
                      ),
                      Text(
                        'Delete',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              color: valueOrDefault<Color>(
                                _model.mouseRegionHovered2!
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context)
                                        .secondaryTitle,
                                FlutterFlowTheme.of(context).secondaryTitle,
                              ),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered2 = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered2 = false);
              }),
            ),
          ].divide(SizedBox(height: 6.0)),
        ),
      ),
    );
  }
}
