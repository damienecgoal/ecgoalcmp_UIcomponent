import '/components_2/title_subtitle/title_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'popular_products_widget.dart' show PopularProductsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PopularProductsModel extends FlutterFlowModel<PopularProductsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel;

  @override
  void initState(BuildContext context) {
    titleSubtitleModel = createModel(context, () => TitleSubtitleModel());
  }

  @override
  void dispose() {
    titleSubtitleModel.dispose();
  }
}
