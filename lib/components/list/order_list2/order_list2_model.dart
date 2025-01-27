import '/components/avatar_2/avatar2_widget.dart';
import '/components/nodal/order_list_nodal/order_list_nodal_widget.dart';
import '/components_2/payment_status/payment_status_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'order_list2_widget.dart' show OrderList2Widget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class OrderList2Model extends FlutterFlowModel<OrderList2Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Avatar_2 component.
  late Avatar2Model avatar2Model;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for Payment_Status component.
  late PaymentStatusModel paymentStatusModel;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;

  @override
  void initState(BuildContext context) {
    avatar2Model = createModel(context, () => Avatar2Model());
    paymentStatusModel = createModel(context, () => PaymentStatusModel());
    statusCardModel = createModel(context, () => StatusCardModel());
  }

  @override
  void dispose() {
    avatar2Model.dispose();
    paymentStatusModel.dispose();
    statusCardModel.dispose();
  }
}
