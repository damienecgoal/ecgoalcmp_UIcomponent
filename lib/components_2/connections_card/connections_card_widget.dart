import '/components_2/avatar_title/avatar_title_widget.dart';
import '/components_2/icon_box/icon_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'connections_card_model.dart';
export 'connections_card_model.dart';

class ConnectionsCardWidget extends StatefulWidget {
  const ConnectionsCardWidget({
    super.key,
    required this.avatar,
    required this.name,
    required this.description,
    required this.icon,
    required this.bg,
  });

  final String? avatar;
  final String? name;
  final String? description;
  final Widget? icon;
  final Color? bg;

  @override
  State<ConnectionsCardWidget> createState() => _ConnectionsCardWidgetState();
}

class _ConnectionsCardWidgetState extends State<ConnectionsCardWidget> {
  late ConnectionsCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConnectionsCardModel());

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
            model: _model.avatarTitleModel,
            updateCallback: () => safeSetState(() {}),
            child: AvatarTitleWidget(
              avatar: widget.avatar!,
              name: widget.name!,
              size: 36.0,
              description: widget.description!,
            ),
          ),
          wrapWithModel(
            model: _model.iconBoxModel,
            updateCallback: () => safeSetState(() {}),
            child: IconBoxWidget(
              icon: widget.icon!,
              bg: widget.bg!,
              size: 32.0,
            ),
          ),
        ],
      ),
    );
  }
}
