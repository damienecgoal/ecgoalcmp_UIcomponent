import '/components_2/avatar_title/avatar_title_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'teams_card_model.dart';
export 'teams_card_model.dart';

class TeamsCardWidget extends StatefulWidget {
  const TeamsCardWidget({
    super.key,
    required this.avatar,
    required this.name,
    required this.description,
    required this.status,
    required this.color,
    required this.bg,
  });

  final String? avatar;
  final String? name;
  final String? description;
  final String? status;
  final Color? color;
  final Color? bg;

  @override
  State<TeamsCardWidget> createState() => _TeamsCardWidgetState();
}

class _TeamsCardWidgetState extends State<TeamsCardWidget> {
  late TeamsCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeamsCardModel());

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          wrapWithModel(
            model: _model.avatarTitleModel,
            updateCallback: () => safeSetState(() {}),
            child: AvatarTitleWidget(
              avatar: widget!.avatar!,
              name: widget!.name!,
              size: 36.0,
              description: widget!.description!,
            ),
          ),
          wrapWithModel(
            model: _model.statusCardModel,
            updateCallback: () => safeSetState(() {}),
            child: StatusCardWidget(
              title: widget!.status!,
              titleColor: widget!.color!,
              bgColor: widget!.bg!,
            ),
          ),
        ],
      ),
    );
  }
}
