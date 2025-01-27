import '/components/account2/account2_widget.dart';
import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'social_account_model.dart';
export 'social_account_model.dart';

class SocialAccountWidget extends StatefulWidget {
  const SocialAccountWidget({
    super.key,
    required this.logo,
    required this.name,
    required this.description,
    required this.color,
    required this.icon,
    required this.bg,
  });

  final String? logo;
  final String? name;
  final String? description;
  final Color? color;
  final Widget? icon;
  final Color? bg;

  @override
  State<SocialAccountWidget> createState() => _SocialAccountWidgetState();
}

class _SocialAccountWidgetState extends State<SocialAccountWidget> {
  late SocialAccountModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SocialAccountModel());

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
        children: [
          wrapWithModel(
            model: _model.account2Model,
            updateCallback: () => safeSetState(() {}),
            child: Account2Widget(
              logo: widget.logo!,
              name: widget.name!,
              description: widget.description!,
              color: widget.color!,
            ),
          ),
          wrapWithModel(
            model: _model.iconBoxModel,
            updateCallback: () => safeSetState(() {}),
            child: IconBoxWidget(
              icon: widget.icon!,
              bg: widget.bg!,
              size: 40.0,
            ),
          ),
        ],
      ),
    );
  }
}
