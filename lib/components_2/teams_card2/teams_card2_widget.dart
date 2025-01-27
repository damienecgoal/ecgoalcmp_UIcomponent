import '/components/nodal/teams_action/teams_action_widget.dart';
import '/components_2/pluse3_avatar/pluse3_avatar_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'teams_card2_model.dart';
export 'teams_card2_model.dart';

class TeamsCard2Widget extends StatefulWidget {
  const TeamsCard2Widget({
    super.key,
    required this.logo,
    required this.title,
    required this.description,
    required this.avatar1,
    required this.avatar2,
    required this.avatar3,
    required this.number,
    required this.status,
    required this.color,
    required this.bg,
    required this.status2,
    required this.color2,
    required this.bg2,
  });

  final String? logo;
  final String? title;
  final String? description;
  final String? avatar1;
  final String? avatar2;
  final String? avatar3;
  final String? number;
  final String? status;
  final Color? color;
  final Color? bg;
  final String? status2;
  final Color? color2;
  final Color? bg2;

  @override
  State<TeamsCard2Widget> createState() => _TeamsCard2WidgetState();
}

class _TeamsCard2WidgetState extends State<TeamsCard2Widget> {
  late TeamsCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeamsCard2Model());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 12.0,
            color: Color(0x14000000),
            offset: Offset(
              0.0,
              0.0,
            ),
            spreadRadius: 2.0,
          )
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 38.0,
                      height: 38.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        widget!.logo!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget!.title,
                        'na',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Public Sans',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ].divide(SizedBox(width: 6.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      FFIcons.kstar,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    Builder(
                      builder: (context) => InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          showAlignedDialog(
                            barrierColor: Colors.transparent,
                            context: context,
                            isGlobal: false,
                            avoidOverflow: false,
                            targetAnchor: AlignmentDirectional(-1.0, 6.0)
                                .resolve(Directionality.of(context)),
                            followerAnchor: AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            builder: (dialogContext) {
                              return Material(
                                color: Colors.transparent,
                                child: WebViewAware(
                                  child: TeamsActionWidget(),
                                ),
                              );
                            },
                          );
                        },
                        child: Icon(
                          FFIcons.kdotsVertical,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ],
            ),
            Text(
              valueOrDefault<String>(
                widget!.description,
                'na',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Public Sans',
                    color: FlutterFlowTheme.of(context).secondaryTitle,
                    fontSize: 15.0,
                    letterSpacing: 0.0,
                    lineHeight: 1.5,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                wrapWithModel(
                  model: _model.pluse3AvatarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: Pluse3AvatarWidget(
                    number: widget!.number!,
                    avatar1: widget!.avatar1!,
                    avatar2: widget!.avatar2!,
                    avatar3: widget!.avatar3!,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.statusCardModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: StatusCardWidget(
                        title: widget!.status!,
                        titleColor: widget!.color!,
                        bgColor: widget!.bg!,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.statusCardModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: StatusCardWidget(
                        title: widget!.status2!,
                        titleColor: widget!.color2!,
                        bgColor: widget!.bg2!,
                      ),
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
              ],
            ),
          ].divide(SizedBox(height: 20.0)),
        ),
      ),
    );
  }
}
