import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'connections_widget.dart' show ConnectionsWidget;
import 'package:flutter/material.dart';

class ConnectionsModel extends FlutterFlowModel<ConnectionsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for StatusCard component.
  late StatusCardModel statusCardModel1;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel2;

  @override
  void initState(BuildContext context) {
    statusCardModel1 = createModel(context, () => StatusCardModel());
    statusCardModel2 = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    statusCardModel1.dispose();
    statusCardModel2.dispose();
  }
}
