import '/components/company_card/company_card_widget.dart';
import '/components_2/custom_switch/custom_switch_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'accounts_model.dart';
export 'accounts_model.dart';

class AccountsWidget extends StatefulWidget {
  const AccountsWidget({
    super.key,
    required this.logo,
    required this.name,
    required this.description,
    required this.color,
  });

  final String? logo;
  final String? name;
  final String? description;
  final Color? color;

  @override
  State<AccountsWidget> createState() => _AccountsWidgetState();
}

class _AccountsWidgetState extends State<AccountsWidget> {
  late AccountsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        wrapWithModel(
          model: _model.companyCardModel,
          updateCallback: () => safeSetState(() {}),
          child: CompanyCardWidget(
            logo: widget!.logo!,
            name: widget!.name!,
            description: widget!.description!,
            color: widget!.color!,
          ),
        ),
        wrapWithModel(
          model: _model.customSwitchModel,
          updateCallback: () => safeSetState(() {}),
          child: CustomSwitchWidget(
            switchValue: FFAppState().inStock,
            toggleAction: () async {
              FFAppState().inStock = !(FFAppState().inStock ?? true);
              safeSetState(() {});
            },
          ),
        ),
      ],
    );
  }
}
