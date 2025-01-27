import '/components_2/title_subtitle/title_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'popular_products_model.dart';
export 'popular_products_model.dart';

class PopularProductsWidget extends StatefulWidget {
  const PopularProductsWidget({
    super.key,
    required this.image,
    required this.itemName,
    required this.itemNumber,
    required this.amount,
  });

  final String? image;
  final String? itemName;
  final String? itemNumber;
  final String? amount;

  @override
  State<PopularProductsWidget> createState() => _PopularProductsWidgetState();
}

class _PopularProductsWidgetState extends State<PopularProductsWidget> {
  late PopularProductsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopularProductsModel());

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
            borderRadius: BorderRadius.circular(4.0),
            child: Image.network(
              widget!.image!,
              width: 48.0,
              height: 48.0,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: wrapWithModel(
              model: _model.titleSubtitleModel,
              updateCallback: () => safeSetState(() {}),
              child: TitleSubtitleWidget(
                title: widget!.itemName!,
                subtitle: widget!.itemNumber!,
              ),
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget!.amount,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(SizedBox(width: 14.0)),
      ),
    );
  }
}
