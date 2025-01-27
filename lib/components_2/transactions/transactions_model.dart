import '/components_2/icon_container/icon_container_widget.dart';
import '/components_2/title_subtitle/title_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transactions_widget.dart' show TransactionsWidget;
import 'package:flutter/material.dart';

class TransactionsModel extends FlutterFlowModel<TransactionsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IconContainer component.
  late IconContainerModel iconContainerModel;
  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel;

  @override
  void initState(BuildContext context) {
    iconContainerModel = createModel(context, () => IconContainerModel());
    titleSubtitleModel = createModel(context, () => TitleSubtitleModel());
  }

  @override
  void dispose() {
    iconContainerModel.dispose();
    titleSubtitleModel.dispose();
  }
}
