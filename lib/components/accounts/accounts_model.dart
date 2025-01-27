import '/components/company_card/company_card_widget.dart';
import '/components_2/custom_switch/custom_switch_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'accounts_widget.dart' show AccountsWidget;
import 'package:flutter/material.dart';

class AccountsModel extends FlutterFlowModel<AccountsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Company_Card component.
  late CompanyCardModel companyCardModel;
  // Model for Custom_Switch component.
  late CustomSwitchModel customSwitchModel;

  @override
  void initState(BuildContext context) {
    companyCardModel = createModel(context, () => CompanyCardModel());
    customSwitchModel = createModel(context, () => CustomSwitchModel());
  }

  @override
  void dispose() {
    companyCardModel.dispose();
    customSwitchModel.dispose();
  }
}
