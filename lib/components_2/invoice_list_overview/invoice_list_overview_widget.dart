import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'invoice_list_overview_model.dart';
export 'invoice_list_overview_model.dart';

class InvoiceListOverviewWidget extends StatefulWidget {
  const InvoiceListOverviewWidget({
    super.key,
    required this.total,
    required this.mathod,
    required this.icon,
  });

  final String? total;
  final String? mathod;
  final Widget? icon;

  @override
  State<InvoiceListOverviewWidget> createState() =>
      _InvoiceListOverviewWidgetState();
}

class _InvoiceListOverviewWidgetState extends State<InvoiceListOverviewWidget> {
  late InvoiceListOverviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvoiceListOverviewModel());

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.total,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      fontSize: 28.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.mathod,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      color: FlutterFlowTheme.of(context).secondaryTitle,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(const SizedBox(height: 8.0)),
          ),
          wrapWithModel(
            model: _model.iconBoxModel,
            updateCallback: () => safeSetState(() {}),
            child: IconBoxWidget(
              icon: widget.icon!,
              bg: const Color(0x34A8AAAE),
              size: 42.0,
            ),
          ),
        ],
      ),
    );
  }
}
