import '/auth/firebase_auth/auth_util.dart';
import '/components/cutom_option_1/cutom_option1_widget.dart';
import '/components_2/avatar/avatar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_nodal_model.dart';
export 'profile_nodal_model.dart';

class ProfileNodalWidget extends StatefulWidget {
  const ProfileNodalWidget({super.key});

  @override
  State<ProfileNodalWidget> createState() => _ProfileNodalWidgetState();
}

class _ProfileNodalWidgetState extends State<ProfileNodalWidget> {
  late ProfileNodalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileNodalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 56.0, 0.0, 0.0),
      child: Container(
        width: 260.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: Color(0x29000000),
              offset: Offset(0.0, 0.0),
              spreadRadius: 4.0,
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 12.0, 8.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'Account',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                        ),
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        _model.mouseRegionHovered!
                            ? Color(0x327367F0)
                            : Colors.transparent,
                        Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AuthUserStreamWidget(
                            builder: (context) => wrapWithModel(
                              model: _model.avatarModel,
                              updateCallback: () => safeSetState(() {}),
                              child: AvatarWidget(
                                diameter: 48.0,
                                image: currentUserPhoto,
                                name: currentUserDisplayName,
                                status: currentUserDocument?.status,
                                color: functions.randomColor()!,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  currentUserDisplayName,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Public Sans',
                                        color: valueOrDefault<Color>(
                                          _model.mouseRegionHovered!
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  valueOrDefault<String>(
                                    currentUserDocument?.role?.name,
                                    'Admin',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Public Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ].divide(SizedBox(height: 6.0)),
                          ),
                        ].divide(SizedBox(width: 14.0)),
                      ),
                    ),
                  ),
                ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionHovered = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionHovered = false);
              }),
            ),
            Divider(
              height: 12.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).lineColor,
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'Profile',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );
              },
              child: wrapWithModel(
                model: _model.cutomOption1Model1,
                updateCallback: () => safeSetState(() {}),
                child: CutomOption1Widget(
                  title: 'My Profiile',
                  badgeValue: 0,
                  iconActive: Icon(
                    FFIcons.kuserCheck,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 22.0,
                  ),
                  iconInactive: Icon(
                    FFIcons.kuserCheck,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'Account',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );
              },
              child: wrapWithModel(
                model: _model.cutomOption1Model2,
                updateCallback: () => safeSetState(() {}),
                child: CutomOption1Widget(
                  title: 'Setting',
                  badgeValue: 0,
                  iconActive: Icon(
                    FFIcons.ksettings,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 22.0,
                  ),
                  iconInactive: Icon(
                    FFIcons.ksettings,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'Account',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );
              },
              child: wrapWithModel(
                model: _model.cutomOption1Model3,
                updateCallback: () => safeSetState(() {}),
                child: CutomOption1Widget(
                  title: 'Billing',
                  badgeValue: 2,
                  iconActive: Icon(
                    FFIcons.kcreditCard,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 22.0,
                  ),
                  iconInactive: Icon(
                    FFIcons.kcreditCard,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                ),
              ),
            ),
            Divider(
              height: 12.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).lineColor,
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'FAQ',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );
              },
              child: wrapWithModel(
                model: _model.cutomOption1Model4,
                updateCallback: () => safeSetState(() {}),
                child: CutomOption1Widget(
                  title: 'FAQ',
                  badgeValue: 0,
                  iconActive: Icon(
                    FFIcons.khelp,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 22.0,
                  ),
                  iconInactive: Icon(
                    FFIcons.khelp,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'Pricing',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );
              },
              child: wrapWithModel(
                model: _model.cutomOption1Model5,
                updateCallback: () => safeSetState(() {}),
                child: CutomOption1Widget(
                  title: 'Pricing',
                  badgeValue: 0,
                  iconActive: Icon(
                    FFIcons.kcurrencyDollar,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 22.0,
                  ),
                  iconInactive: Icon(
                    FFIcons.kcurrencyDollar,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                ),
              ),
            ),
            Divider(
              height: 12.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).lineColor,
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                GoRouter.of(context).prepareAuthEvent();
                await authManager.signOut();
                GoRouter.of(context).clearRedirectLocation();

                context.goNamedAuth('Login', context.mounted);
              },
              child: wrapWithModel(
                model: _model.cutomOption1Model6,
                updateCallback: () => safeSetState(() {}),
                child: CutomOption1Widget(
                  title: 'Log Out',
                  badgeValue: 0,
                  iconActive: Icon(
                    FFIcons.klogout,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 22.0,
                  ),
                  iconInactive: Icon(
                    FFIcons.klogout,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                ),
              ),
            ),
          ].divide(SizedBox(height: 1.0)),
        ),
      ),
    );
  }
}
