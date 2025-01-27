import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_full_information_model.dart';
export 'order_full_information_model.dart';

class OrderFullInformationWidget extends StatefulWidget {
  const OrderFullInformationWidget({
    super.key,
    required this.data,
    required this.name,
    required this.icon,
  });

  final String? data;
  final String? name;
  final Widget? icon;

  @override
  State<OrderFullInformationWidget> createState() =>
      _OrderFullInformationWidgetState();
}

class _OrderFullInformationWidgetState
    extends State<OrderFullInformationWidget> {
  late OrderFullInformationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderFullInformationModel());

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget!.data,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Text(
                valueOrDefault<String>(
                  widget!.name,
                  'ba',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      color: FlutterFlowTheme.of(context).secondaryTitle,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.iconBoxModel,
                updateCallback: () => safeSetState(() {}),
                child: IconBoxWidget(
                  icon: widget!.icon!,
                  bg: Color(0x33A8AAAE),
                  size: 42.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
