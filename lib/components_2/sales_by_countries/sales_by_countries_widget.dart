import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sales_by_countries_model.dart';
export 'sales_by_countries_model.dart';

class SalesByCountriesWidget extends StatefulWidget {
  const SalesByCountriesWidget({
    super.key,
    required this.image,
    required this.sales,
    required this.country,
    required this.icon,
    required this.value,
    required this.valueColor,
  });

  final String? image;
  final String? sales;
  final String? country;
  final Widget? icon;
  final String? value;
  final Color? valueColor;

  @override
  State<SalesByCountriesWidget> createState() => _SalesByCountriesWidgetState();
}

class _SalesByCountriesWidgetState extends State<SalesByCountriesWidget> {
  late SalesByCountriesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SalesByCountriesModel());

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
            width: 44.0,
            height: 44.0,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              widget.image!,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.sales,
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
                    widget.country,
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
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              widget.icon!,
              Text(
                valueOrDefault<String>(
                  widget.value,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      color: widget.valueColor,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(const SizedBox(width: 6.0)),
          ),
        ].divide(const SizedBox(width: 16.0)),
      ),
    );
  }
}
