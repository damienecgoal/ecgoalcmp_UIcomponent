import '/components_2/shortcuts/shortcuts_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'shorcuts_nodal_model.dart';
export 'shorcuts_nodal_model.dart';

class ShorcutsNodalWidget extends StatefulWidget {
  const ShorcutsNodalWidget({super.key});

  @override
  State<ShorcutsNodalWidget> createState() => _ShorcutsNodalWidgetState();
}

class _ShorcutsNodalWidgetState extends State<ShorcutsNodalWidget> {
  late ShorcutsNodalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShorcutsNodalModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 56.0, 0.0, 0.0),
      child: Container(
        width: 370.0,
        height: 468.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
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
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(18.0, 20.0, 18.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shortcuts',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              color:
                                  FlutterFlowTheme.of(context).secondaryTitle,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Icon(
                        FFIcons.kapps,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.shortcutsModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: ShortcutsWidget(
                                  icon: Icon(
                                    FFIcons.kcalendar,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryTitle,
                                    size: 22.0,
                                  ),
                                  title: 'Calendar',
                                  subtitle: 'Appointments',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.shortcutsModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: ShortcutsWidget(
                                  icon: Icon(
                                    FFIcons.kusers,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryTitle,
                                    size: 22.0,
                                  ),
                                  title: 'User App',
                                  subtitle: 'Manage User',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.shortcutsModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: ShortcutsWidget(
                                  icon: Icon(
                                    FFIcons.kchartBar,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryTitle,
                                    size: 22.0,
                                  ),
                                  title: 'Dashboard',
                                  subtitle: 'User Profile',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.shortcutsModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: ShortcutsWidget(
                                  icon: Icon(
                                    FFIcons.khelp,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryTitle,
                                    size: 22.0,
                                  ),
                                  title: 'FAQs',
                                  subtitle: 'FAQs & Articles',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 0.5,
                          height: 536.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).lineColor,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.shortcutsModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: ShortcutsWidget(
                                  icon: Icon(
                                    FFIcons.kfileInvoice,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryTitle,
                                    size: 22.0,
                                  ),
                                  title: 'Invoice app',
                                  subtitle: 'Manage Account',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.shortcutsModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: ShortcutsWidget(
                                  icon: Icon(
                                    FFIcons.klock,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryTitle,
                                    size: 22.0,
                                  ),
                                  title: 'Role Managemennt',
                                  subtitle: 'Permission',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.shortcutsModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: ShortcutsWidget(
                                  icon: Icon(
                                    FFIcons.ksettings,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryTitle,
                                    size: 22.0,
                                  ),
                                  title: 'Setting',
                                  subtitle: 'Account Settings',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.shortcutsModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: ShortcutsWidget(
                                  icon: Icon(
                                    FFIcons.ksquare,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryTitle,
                                    size: 22.0,
                                  ),
                                  title: 'Modals',
                                  subtitle: 'Useful Popups',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
