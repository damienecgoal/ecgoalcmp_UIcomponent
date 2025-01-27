import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/components/avatar_2/avatar2_widget.dart';
import '/components/nodal/email_labels/email_labels_widget.dart';
import '/components/nodal/email_list_action/email_list_action_widget.dart';
import '/components/nodal/email_option/email_option_widget.dart';
import '/components/nodal/mail_action/mail_action_widget.dart';
import '/components/nodal/mail_actions/mail_actions_widget.dart';
import '/components/nodal/mail_labels/mail_labels_widget.dart';
import '/components/nodal/mail_option/mail_option_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/labels/labels_widget.dart';
import '/components_2/mail_card/mail_card_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/text_style/text_style_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'email_model.dart';
export 'email_model.dart';

class EmailWidget extends StatefulWidget {
  const EmailWidget({super.key});

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget>
    with TickerProviderStateMixin {
  late EmailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().activePage = 'Analytics';
      safeSetState(() {});
      if (!loggedIn) {
        context.pushNamed(
          'Register',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
            ),
          },
        );
      }
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(900.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.navMenuModel,
                updateCallback: () => safeSetState(() {}),
                child: NavMenuWidget(),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  28.0, 0.0, 28.0, 80.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 600.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
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
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 260.0,
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(20.0),
                                                child: FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  text: 'Compose',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Public Sans',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 2.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.compose = 'Inbox';
                                                      safeSetState(() {});
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 2.0,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  _model.compose ==
                                                                          'Inbox'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : Colors
                                                                          .transparent,
                                                                  Colors
                                                                      .transparent,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Icon(
                                                                    FFIcons
                                                                        .kmail,
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      _model.compose ==
                                                                              'Inbox'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryTitle,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                    ),
                                                                    size: 22.0,
                                                                  ),
                                                                  Text(
                                                                    'Inbox',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Public Sans',
                                                                          color:
                                                                              valueOrDefault<Color>(
                                                                            _model.compose == 'Inbox'
                                                                                ? FlutterFlowTheme.of(context).primary
                                                                                : FlutterFlowTheme.of(context).secondaryTitle,
                                                                            FlutterFlowTheme.of(context).secondaryTitle,
                                                                          ),
                                                                          fontSize:
                                                                              15.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 26.0,
                                                              height: 26.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x347367F0),
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  '4',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Public Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ]
                                                              .divide(SizedBox(
                                                                  width: 18.0))
                                                              .addToEnd(SizedBox(
                                                                  width: 20.0)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.compose = 'Sent';
                                                      safeSetState(() {});
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 2.0,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  _model.compose ==
                                                                          'Sent'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : Colors
                                                                          .transparent,
                                                                  Colors
                                                                      .transparent,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Icon(
                                                                    FFIcons
                                                                        .ksend2,
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      _model.compose ==
                                                                              'Sent'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryTitle,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                    ),
                                                                    size: 22.0,
                                                                  ),
                                                                  Text(
                                                                    'Sent',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Public Sans',
                                                                          color:
                                                                              valueOrDefault<Color>(
                                                                            _model.compose == 'Sent'
                                                                                ? FlutterFlowTheme.of(context).primary
                                                                                : FlutterFlowTheme.of(context).secondaryTitle,
                                                                            FlutterFlowTheme.of(context).secondaryTitle,
                                                                          ),
                                                                          fontSize:
                                                                              15.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .divide(SizedBox(
                                                                  width: 18.0))
                                                              .addToEnd(SizedBox(
                                                                  width: 20.0)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.compose = 'Draft';
                                                      safeSetState(() {});
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 2.0,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  _model.compose ==
                                                                          'Draft'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : Colors
                                                                          .transparent,
                                                                  Colors
                                                                      .transparent,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Icon(
                                                                    FFIcons
                                                                        .kfile,
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      _model.compose ==
                                                                              'Draft'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryTitle,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                    ),
                                                                    size: 22.0,
                                                                  ),
                                                                  Text(
                                                                    'Draft',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Public Sans',
                                                                          color:
                                                                              valueOrDefault<Color>(
                                                                            _model.compose == 'Draft'
                                                                                ? FlutterFlowTheme.of(context).primary
                                                                                : FlutterFlowTheme.of(context).secondaryTitle,
                                                                            FlutterFlowTheme.of(context).secondaryTitle,
                                                                          ),
                                                                          fontSize:
                                                                              15.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .divide(SizedBox(
                                                                  width: 18.0))
                                                              .addToEnd(SizedBox(
                                                                  width: 20.0)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.compose =
                                                          'Starred';
                                                      safeSetState(() {});
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 2.0,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  _model.compose ==
                                                                          'Starred'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : Colors
                                                                          .transparent,
                                                                  Colors
                                                                      .transparent,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Icon(
                                                                    FFIcons
                                                                        .kstar,
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      _model.compose ==
                                                                              'Starred'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryTitle,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                    ),
                                                                    size: 22.0,
                                                                  ),
                                                                  Text(
                                                                    'Starred',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Public Sans',
                                                                          color:
                                                                              valueOrDefault<Color>(
                                                                            _model.compose == 'Starred'
                                                                                ? FlutterFlowTheme.of(context).primary
                                                                                : FlutterFlowTheme.of(context).secondaryTitle,
                                                                            FlutterFlowTheme.of(context).secondaryTitle,
                                                                          ),
                                                                          fontSize:
                                                                              15.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 26.0,
                                                              height: 26.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x34FF9F43),
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  '10',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Public Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .warning,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ]
                                                              .divide(SizedBox(
                                                                  width: 18.0))
                                                              .addToEnd(SizedBox(
                                                                  width: 20.0)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.compose = 'Spam';
                                                      safeSetState(() {});
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 2.0,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  _model.compose ==
                                                                          'Spam'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : Colors
                                                                          .transparent,
                                                                  Colors
                                                                      .transparent,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Icon(
                                                                    FFIcons
                                                                        .kinfoCircle,
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      _model.compose ==
                                                                              'Spam'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryTitle,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                    ),
                                                                    size: 22.0,
                                                                  ),
                                                                  Text(
                                                                    'Spam',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Public Sans',
                                                                          color:
                                                                              valueOrDefault<Color>(
                                                                            _model.compose == 'Spam'
                                                                                ? FlutterFlowTheme.of(context).primary
                                                                                : FlutterFlowTheme.of(context).secondaryTitle,
                                                                            FlutterFlowTheme.of(context).secondaryTitle,
                                                                          ),
                                                                          fontSize:
                                                                              15.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .divide(SizedBox(
                                                                  width: 18.0))
                                                              .addToEnd(SizedBox(
                                                                  width: 20.0)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.compose = 'Trash';
                                                      safeSetState(() {});
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 2.0,
                                                              height: 44.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  _model.compose ==
                                                                          'Trash'
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : Colors
                                                                          .transparent,
                                                                  Colors
                                                                      .transparent,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Icon(
                                                                    FFIcons
                                                                        .ktrash,
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      _model.compose ==
                                                                              'Trash'
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .primary
                                                                          : FlutterFlowTheme.of(context)
                                                                              .secondaryTitle,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                    ),
                                                                    size: 22.0,
                                                                  ),
                                                                  Text(
                                                                    'Trash',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Public Sans',
                                                                          color:
                                                                              valueOrDefault<Color>(
                                                                            _model.compose == 'Trash'
                                                                                ? FlutterFlowTheme.of(context).primary
                                                                                : FlutterFlowTheme.of(context).secondaryTitle,
                                                                            FlutterFlowTheme.of(context).secondaryTitle,
                                                                          ),
                                                                          fontSize:
                                                                              15.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                          ]
                                                              .divide(SizedBox(
                                                                  width: 18.0))
                                                              .addToEnd(SizedBox(
                                                                  width: 20.0)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 24.0,
                                                          20.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'LABELS',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Public Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                      wrapWithModel(
                                                        model:
                                                            _model.labelsModel1,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: LabelsWidget(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          title: 'Work',
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model:
                                                            _model.labelsModel2,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: LabelsWidget(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          title: 'Company',
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model:
                                                            _model.labelsModel3,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: LabelsWidget(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          title: 'Importent',
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model:
                                                            _model.labelsModel4,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: LabelsWidget(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          title: 'Private',
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 26.0)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 1.0,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                          ),
                                        ),
                                        Expanded(
                                          child: Stack(
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    10.0,
                                                                    20.0,
                                                                    10.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .textController1,
                                                                focusNode: _model
                                                                    .textFieldFocusNode1,
                                                                autofocus:
                                                                    false,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Search mail',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Public Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .unselectTitle,
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Public Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  errorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedErrorBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  prefixIcon:
                                                                      Icon(
                                                                    FFIcons
                                                                        .ksearch,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Public Sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                validator: _model
                                                                    .textController1Validator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  FFIcons
                                                                      .kreload,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) =>
                                                                          InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      showAlignedDialog(
                                                                        barrierColor:
                                                                            Colors.transparent,
                                                                        context:
                                                                            context,
                                                                        isGlobal:
                                                                            false,
                                                                        avoidOverflow:
                                                                            false,
                                                                        targetAnchor:
                                                                            AlignmentDirectional(-6.0, 10.0).resolve(Directionality.of(context)),
                                                                        followerAnchor:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(dialogContext).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: EmailListActionWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                    child: Icon(
                                                                      FFIcons
                                                                          .kdotsVertical,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 14.0)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Divider(
                                                        height: 1.0,
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    12.0,
                                                                    20.0,
                                                                    10.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  visualDensity:
                                                                      VisualDensity
                                                                          .compact,
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                        .checkboxValue ??=
                                                                    false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  safeSetState(() =>
                                                                      _model.checkboxValue =
                                                                          newValue!);
                                                                },
                                                                side:
                                                                    BorderSide(
                                                                  width: 2,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                checkColor:
                                                                    Colors
                                                                        .white,
                                                              ),
                                                            ),
                                                            Icon(
                                                              FFIcons.ktrash,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryTitle,
                                                              size: 22.0,
                                                            ),
                                                            Icon(
                                                              FFIcons
                                                                  .kmailOpened,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryTitle,
                                                              size: 22.0,
                                                            ),
                                                            Builder(
                                                              builder:
                                                                  (context) =>
                                                                      InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  showAlignedDialog(
                                                                    barrierColor:
                                                                        Colors
                                                                            .transparent,
                                                                    context:
                                                                        context,
                                                                    isGlobal:
                                                                        false,
                                                                    avoidOverflow:
                                                                        false,
                                                                    targetAnchor: AlignmentDirectional(
                                                                            -6.0,
                                                                            8.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                    followerAnchor: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Material(
                                                                        color: Colors
                                                                            .transparent,
                                                                        child:
                                                                            WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(dialogContext).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                EmailOptionWidget(),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                                child: Icon(
                                                                  FFIcons
                                                                      .kfolder,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryTitle,
                                                                  size: 22.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Builder(
                                                              builder:
                                                                  (context) =>
                                                                      InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  showAlignedDialog(
                                                                    barrierColor:
                                                                        Colors
                                                                            .transparent,
                                                                    context:
                                                                        context,
                                                                    isGlobal:
                                                                        false,
                                                                    avoidOverflow:
                                                                        false,
                                                                    targetAnchor: AlignmentDirectional(
                                                                            -6.0,
                                                                            10.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                    followerAnchor: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Material(
                                                                        color: Colors
                                                                            .transparent,
                                                                        child:
                                                                            WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(dialogContext).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                EmailLabelsWidget(),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                },
                                                                child: Icon(
                                                                  FFIcons.ktag,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryTitle,
                                                                  size: 22.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                    '1-10 of 653',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Public Sans',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              15.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  Icon(
                                                                    FFIcons
                                                                        .kchevronLeft,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                  Icon(
                                                                    FFIcons
                                                                        .kchevronRight,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryTitle,
                                                                    size: 24.0,
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 12.0)),
                                                        ),
                                                      ),
                                                      Divider(
                                                        height: 1.0,
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                      ),
                                                    ],
                                                  ),
                                                  Expanded(
                                                    child: Builder(
                                                      builder: (context) {
                                                        if (_model.compose ==
                                                            'Sent') {
                                                          return SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel1,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/mteufgo4w1e1/2.png',
                                                                      sender:
                                                                          'Ross Geller',
                                                                      message:
                                                                          'Hey Katy, Dessert soufflé tootsie roll soufflé carrot cake halvah jelly.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        } else if (_model
                                                                .compose ==
                                                            'Draft') {
                                                          return SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel2,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/jkj07rl56yax/4.png',
                                                                      sender:
                                                                          'Ted Mosby',
                                                                      message:
                                                                          'Hey Katy, I love Pudding cookie chocolate sweet tiramisu jujubes I love danish.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel3,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/zl0fmg8vmvvf/5.png',
                                                                      sender:
                                                                          'Rachel Green',
                                                                      message:
                                                                          'Hey Katy, Chocolate cake pudding chocolate bar ice cream bonbon lollipop.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        } else if (_model
                                                                .compose ==
                                                            'Starred') {
                                                          return SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel4,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/x4gkpaxl5mr7/1.png',
                                                                      sender:
                                                                          'Chandler Bing',
                                                                      message:
                                                                          'Focused impactful open issues from the project of GitHub',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel5,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/3zy49ozc45km/3.png',
                                                                      sender:
                                                                          'Pheobe Buffay',
                                                                      message:
                                                                          'Hey Katy, Tart croissant jujubes gummies macaroon Icing sweet.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel6,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                                      sender:
                                                                          'Grace Shelby',
                                                                      message:
                                                                          'Hey Katy, Icing gummi bears ice cream croissant dessert wafer.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        } else if (_model
                                                                .compose ==
                                                            'Spam') {
                                                          return SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel7,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/jkj07rl56yax/4.png',
                                                                      sender:
                                                                          'Ted Mosby',
                                                                      message:
                                                                          'Hey Katy, I love Pudding cookie chocolate sweet tiramisu jujubes I love danish.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel8,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/11g8cygwk8lk/9.png',
                                                                      sender:
                                                                          'Alistair Crowley ',
                                                                      message:
                                                                          'Hey Katy, I love danish. Cupcake I love carrot cake sugar plum I love.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        } else if (_model
                                                                .compose ==
                                                            'Trash') {
                                                          return SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel9,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                                      sender:
                                                                          'Grace Shelby',
                                                                      message:
                                                                          'Hey Katy, Icing gummi bears ice cream croissant dessert wafer.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel10,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/11g8cygwk8lk/9.png',
                                                                      sender:
                                                                          'Alistair Crowley ',
                                                                      message:
                                                                          'Hey Katy, I love danish. Cupcake I love carrot cake sugar plum I love.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        } else {
                                                          return SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel11,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/x4gkpaxl5mr7/1.png',
                                                                      sender:
                                                                          'Chandler Bing',
                                                                      message:
                                                                          'Focused impactful open issues from the project of GitHub',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel12,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/mteufgo4w1e1/2.png',
                                                                      sender:
                                                                          'Ross Geller',
                                                                      message:
                                                                          'Hey Katy, Dessert soufflé tootsie roll soufflé carrot cake halvah jelly.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel13,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/x4gkpaxl5mr7/1.png',
                                                                      sender:
                                                                          'Barney Stinson',
                                                                      message:
                                                                          'Hey Katy, Soufflé apple pie caramels soufflé tiramisu bear claw.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel14,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/3zy49ozc45km/3.png',
                                                                      sender:
                                                                          'Pheobe Buffay',
                                                                      message:
                                                                          'Hey Katy, Tart croissant jujubes gummies macaroon Icing sweet.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel15,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/jkj07rl56yax/4.png',
                                                                      sender:
                                                                          'Ted Mosby',
                                                                      message:
                                                                          'Hey Katy, I love Pudding cookie chocolate sweet tiramisu jujubes I love danish.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel16,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/x4gkpaxl5mr7/1.png',
                                                                      sender:
                                                                          'Stacy Cooper',
                                                                      message:
                                                                          'Hey Katy, I love danish. Cupcake I love carrot cake sugar plum I love.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel17,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/zl0fmg8vmvvf/5.png',
                                                                      sender:
                                                                          'Rachel Green',
                                                                      message:
                                                                          'Hey Katy, Chocolate cake pudding chocolate bar ice cream bonbon lollipop.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel18,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                                      sender:
                                                                          'Grace Shelby',
                                                                      message:
                                                                          'Hey Katy, Icing gummi bears ice cream croissant dessert wafer.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel19,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/x4gkpaxl5mr7/1.png',
                                                                      sender:
                                                                          'Jacob Frye',
                                                                      message:
                                                                          'Hey Katy, Chocolate cake pudding chocolate bar ice cream Sweet.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.userEmail =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .mailCardModel20,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        MailCardWidget(
                                                                      avatar:
                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/11g8cygwk8lk/9.png',
                                                                      sender:
                                                                          'Alistair Crowley ',
                                                                      message:
                                                                          'Hey Katy, I love danish. Cupcake I love carrot cake sugar plum I love.',
                                                                      starred:
                                                                          true,
                                                                      time: random_data
                                                                          .randomDate(),
                                                                      color: functions
                                                                          .randomColor()!,
                                                                      label:
                                                                          LabelStruct(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .success,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              if (_model.userEmail)
                                                Container(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          24.0,
                                                                          20.0,
                                                                          24.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          _model.userEmail =
                                                                              false;
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          FFIcons
                                                                              .kchevronLeft,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryTitle,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'Focused impactful open issues',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Public Sans',
                                                                              color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            22.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0x33EA5455),
                                                                          borderRadius:
                                                                              BorderRadius.circular(50.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              12.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            children: [
                                                                              Text(
                                                                                'Privat',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Public Sans',
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            12.0)),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Icon(
                                                                        FFIcons
                                                                            .kprinter,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      Builder(
                                                                        builder:
                                                                            (context) =>
                                                                                InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            showAlignedDialog(
                                                                              barrierColor: Colors.transparent,
                                                                              context: context,
                                                                              isGlobal: false,
                                                                              avoidOverflow: false,
                                                                              targetAnchor: AlignmentDirectional(-6.0, 11.0).resolve(Directionality.of(context)),
                                                                              followerAnchor: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                              builder: (dialogContext) {
                                                                                return Material(
                                                                                  color: Colors.transparent,
                                                                                  child: WebViewAware(
                                                                                    child: GestureDetector(
                                                                                      onTap: () {
                                                                                        FocusScope.of(dialogContext).unfocus();
                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                      },
                                                                                      child: MailActionWidget(),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            );
                                                                          },
                                                                          child:
                                                                              Icon(
                                                                            FFIcons.kdotsVertical,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            14.0)),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 1.0,
                                                              thickness: 1.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .lineColor,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          12.0,
                                                                          20.0,
                                                                          12.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Icon(
                                                                    FFIcons
                                                                        .ktrash,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryTitle,
                                                                    size: 22.0,
                                                                  ),
                                                                  Icon(
                                                                    FFIcons
                                                                        .kmailOpened,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryTitle,
                                                                    size: 22.0,
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) =>
                                                                            InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        showAlignedDialog(
                                                                          barrierColor:
                                                                              Colors.transparent,
                                                                          context:
                                                                              context,
                                                                          isGlobal:
                                                                              false,
                                                                          avoidOverflow:
                                                                              false,
                                                                          targetAnchor:
                                                                              AlignmentDirectional(-6.0, 8.0).resolve(Directionality.of(context)),
                                                                          followerAnchor:
                                                                              AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Material(
                                                                              color: Colors.transparent,
                                                                              child: WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: MailOptionWidget(),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        FFIcons
                                                                            .kfolder,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                        size:
                                                                            22.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) =>
                                                                            InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        showAlignedDialog(
                                                                          barrierColor:
                                                                              Colors.transparent,
                                                                          context:
                                                                              context,
                                                                          isGlobal:
                                                                              false,
                                                                          avoidOverflow:
                                                                              false,
                                                                          targetAnchor:
                                                                              AlignmentDirectional(-6.0, 8.0).resolve(Directionality.of(context)),
                                                                          followerAnchor:
                                                                              AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Material(
                                                                              color: Colors.transparent,
                                                                              child: WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: MailLabelsWidget(),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        FFIcons
                                                                            .ktag,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                        size:
                                                                            22.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          '1-10 of 653',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Public Sans',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                        Icon(
                                                                          FFIcons
                                                                              .kchevronLeft,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        Icon(
                                                                          FFIcons
                                                                              .kchevronRight,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryTitle,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        14.0)),
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 1.0,
                                                              thickness: 1.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .lineColor,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  if (_model
                                                                      .earlierMessage) {
                                                                    return Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              24.0,
                                                                              3.0,
                                                                              24.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 20.0,
                                                                                  color: Color(0x1E000000),
                                                                                  offset: Offset(0.0, 0.0),
                                                                                  spreadRadius: 4.0,
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
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
                                                                                          wrapWithModel(
                                                                                            model: _model.avatar2Model1,
                                                                                            updateCallback: () => safeSetState(() {}),
                                                                                            child: Avatar2Widget(
                                                                                              diameter: 42.0,
                                                                                              image: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/mteufgo4w1e1/2.png',
                                                                                              name: 'Ross Geller',
                                                                                            ),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Text(
                                                                                                'Ross Geller',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Public Sans',
                                                                                                      fontSize: 16.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                              Text(
                                                                                                'rossGeller@email.com',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Public Sans',
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ].divide(SizedBox(height: 6.0)),
                                                                                          ),
                                                                                        ].divide(SizedBox(width: 14.0)),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                                                          children: [
                                                                                            Text(
                                                                                              'June 20th 2020, 08:30 AM',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 15.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                            Icon(
                                                                                              FFIcons.kpaperclip,
                                                                                              color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                              size: 22.0,
                                                                                            ),
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                _model.userEmail = !_model.userEmail;
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              child: Builder(
                                                                                                builder: (context) {
                                                                                                  if (_model.userEmail) {
                                                                                                    return Icon(
                                                                                                      FFIcons.kstar,
                                                                                                      color: FlutterFlowTheme.of(context).warning,
                                                                                                      size: 22.0,
                                                                                                    );
                                                                                                  } else {
                                                                                                    return Icon(
                                                                                                      FFIcons.kstar,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                      size: 24.0,
                                                                                                    );
                                                                                                  }
                                                                                                },
                                                                                              ),
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
                                                                                                    targetAnchor: AlignmentDirectional(-6.0, 8.0).resolve(Directionality.of(context)),
                                                                                                    followerAnchor: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                    builder: (dialogContext) {
                                                                                                      return Material(
                                                                                                        color: Colors.transparent,
                                                                                                        child: WebViewAware(
                                                                                                          child: GestureDetector(
                                                                                                            onTap: () {
                                                                                                              FocusScope.of(dialogContext).unfocus();
                                                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                                                            },
                                                                                                            child: MailActionsWidget(),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                                child: Icon(
                                                                                                  FFIcons.kdotsVertical,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                  size: 22.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(SizedBox(width: 16.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Text(
                                                                                    'Greetings!',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\',making it look like readable English.\n\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\n\nSincerely yours,\nEnvato Design Team',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          lineHeight: 1.5,
                                                                                        ),
                                                                                  ),
                                                                                  Divider(
                                                                                    height: 1.0,
                                                                                    thickness: 1.0,
                                                                                    color: FlutterFlowTheme.of(context).lineColor,
                                                                                  ),
                                                                                  Text(
                                                                                    'Attachments',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Icon(
                                                                                        FFIcons.kfile,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      Text(
                                                                                        'report.xlsx',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                              fontSize: 15.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ].divide(SizedBox(width: 8.0)),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 20.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              24.0,
                                                                              3.0,
                                                                              24.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 20.0,
                                                                                  color: Color(0x1E000000),
                                                                                  offset: Offset(0.0, 0.0),
                                                                                  spreadRadius: 4.0,
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
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
                                                                                          wrapWithModel(
                                                                                            model: _model.avatar2Model2,
                                                                                            updateCallback: () => safeSetState(() {}),
                                                                                            child: Avatar2Widget(
                                                                                              diameter: 42.0,
                                                                                              image: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/x4gkpaxl5mr7/1.png',
                                                                                              name: 'Chandler Bing',
                                                                                            ),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Text(
                                                                                                'Chandler Bing',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Public Sans',
                                                                                                      fontSize: 16.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                              Text(
                                                                                                'iAmAhoot@email.com',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Public Sans',
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ].divide(SizedBox(height: 6.0)),
                                                                                          ),
                                                                                        ].divide(SizedBox(width: 14.0)),
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                                                          children: [
                                                                                            Text(
                                                                                              'June 20th 2020, 08:10 AM',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 15.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                            Icon(
                                                                                              FFIcons.kpaperclip,
                                                                                              color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                              size: 22.0,
                                                                                            ),
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                _model.userEmail = !_model.userEmail;
                                                                                                safeSetState(() {});
                                                                                              },
                                                                                              child: Builder(
                                                                                                builder: (context) {
                                                                                                  if (_model.userEmail) {
                                                                                                    return Icon(
                                                                                                      FFIcons.kstar,
                                                                                                      color: FlutterFlowTheme.of(context).warning,
                                                                                                      size: 22.0,
                                                                                                    );
                                                                                                  } else {
                                                                                                    return Icon(
                                                                                                      FFIcons.kstar,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                      size: 24.0,
                                                                                                    );
                                                                                                  }
                                                                                                },
                                                                                              ),
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
                                                                                                    targetAnchor: AlignmentDirectional(-1.0, 8.0).resolve(Directionality.of(context)),
                                                                                                    followerAnchor: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                    builder: (dialogContext) {
                                                                                                      return Material(
                                                                                                        color: Colors.transparent,
                                                                                                        child: WebViewAware(
                                                                                                          child: GestureDetector(
                                                                                                            onTap: () {
                                                                                                              FocusScope.of(dialogContext).unfocus();
                                                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                                                            },
                                                                                                            child: MailActionsWidget(),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                                child: Icon(
                                                                                                  FFIcons.kdotsVertical,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                  size: 22.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(SizedBox(width: 16.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Text(
                                                                                    'Greetings!',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\',making it look like readable English.\n\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\n\nSincerely yours,\nEnvato Design Team',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          lineHeight: 1.5,
                                                                                        ),
                                                                                  ),
                                                                                  Divider(
                                                                                    height: 1.0,
                                                                                    thickness: 1.0,
                                                                                    color: FlutterFlowTheme.of(context).lineColor,
                                                                                  ),
                                                                                  Text(
                                                                                    'Attachments',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Icon(
                                                                                        FFIcons.kfile,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      Text(
                                                                                        'report.xlsx',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                              fontSize: 15.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ].divide(SizedBox(width: 8.0)),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 20.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 20.0)),
                                                                    );
                                                                  } else {
                                                                    return Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            _model.earlierMessage =
                                                                                !_model.earlierMessage;
                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            '1 Earlier Message',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              24.0,
                                                                              0.0,
                                                                              24.0,
                                                                              0.0),
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  height: 350.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 20.0,
                                                                                        color: Color(0x1F000000),
                                                                                        offset: Offset(0.0, 0.0),
                                                                                        spreadRadius: 4.0,
                                                                                      )
                                                                                    ],
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 16.0, 8.0, 0.0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  height: 350.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 20.0,
                                                                                        color: Color(0x15000000),
                                                                                        offset: Offset(0.0, 0.0),
                                                                                        spreadRadius: 4.0,
                                                                                      )
                                                                                    ],
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 20.0,
                                                                                        color: Color(0x1E000000),
                                                                                        offset: Offset(0.0, 0.0),
                                                                                        spreadRadius: 4.0,
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
                                                                                                AuthUserStreamWidget(
                                                                                                  builder: (context) => wrapWithModel(
                                                                                                    model: _model.avatar2Model3,
                                                                                                    updateCallback: () => safeSetState(() {}),
                                                                                                    child: Avatar2Widget(
                                                                                                      diameter: 42.0,
                                                                                                      image: currentUserPhoto,
                                                                                                      name: currentUserDisplayName,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      'Chandler Bing',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Public Sans',
                                                                                                            fontSize: 16.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      'iAmAhoot@email.com',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Public Sans',
                                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ].divide(SizedBox(height: 6.0)),
                                                                                                ),
                                                                                              ].divide(SizedBox(width: 14.0)),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    'June 20th 2020, 08:10 AM',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                  Icon(
                                                                                                    FFIcons.kpaperclip,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                    size: 22.0,
                                                                                                  ),
                                                                                                  InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      _model.userEmail = !_model.userEmail;
                                                                                                      safeSetState(() {});
                                                                                                    },
                                                                                                    child: Builder(
                                                                                                      builder: (context) {
                                                                                                        if (_model.userEmail) {
                                                                                                          return Icon(
                                                                                                            FFIcons.kstar,
                                                                                                            color: FlutterFlowTheme.of(context).warning,
                                                                                                            size: 22.0,
                                                                                                          );
                                                                                                        } else {
                                                                                                          return Icon(
                                                                                                            FFIcons.kstar,
                                                                                                            color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                            size: 24.0,
                                                                                                          );
                                                                                                        }
                                                                                                      },
                                                                                                    ),
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
                                                                                                          targetAnchor: AlignmentDirectional(-1.0, 8.0).resolve(Directionality.of(context)),
                                                                                                          followerAnchor: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                          builder: (dialogContext) {
                                                                                                            return Material(
                                                                                                              color: Colors.transparent,
                                                                                                              child: WebViewAware(
                                                                                                                child: GestureDetector(
                                                                                                                  onTap: () {
                                                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                  },
                                                                                                                  child: MailActionsWidget(),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        );
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        FFIcons.kdotsVertical,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                        size: 22.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ].divide(SizedBox(width: 16.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Text(
                                                                                          'Greetings!',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Public Sans',
                                                                                                color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                              ),
                                                                                        ),
                                                                                        Text(
                                                                                          't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\',making it look like readable English.\n\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.\n\nSincerely yours,\nEnvato Design Team',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Public Sans',
                                                                                                color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                fontSize: 15.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.normal,
                                                                                                lineHeight: 1.5,
                                                                                              ),
                                                                                        ),
                                                                                        Divider(
                                                                                          height: 1.0,
                                                                                          thickness: 1.0,
                                                                                          color: FlutterFlowTheme.of(context).lineColor,
                                                                                        ),
                                                                                        Text(
                                                                                          'Attachments',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Public Sans',
                                                                                                color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                fontSize: 15.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Icon(
                                                                                              FFIcons.kfile,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            Text(
                                                                                              'report.xlsx',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                    fontSize: 15.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ].divide(SizedBox(width: 8.0)),
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 20.0)),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 20.0)),
                                                                    );
                                                                  }
                                                                },
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            20.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          'Reply to Ross Geller',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Public Sans',
                                                                                color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            wrapWithModel(
                                                                              model: _model.textStyleModel,
                                                                              updateCallback: () => safeSetState(() {}),
                                                                              child: TextStyleWidget(),
                                                                            ),
                                                                          ].divide(SizedBox(width: 10.0)),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.textController2,
                                                                            focusNode:
                                                                                _model.textFieldFocusNode2,
                                                                            autofocus:
                                                                                true,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelText: 'Write your message...',
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Public Sans',
                                                                                    color: FlutterFlowTheme.of(context).unselectTitle,
                                                                                    fontSize: 15.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontStyle: FontStyle.italic,
                                                                                  ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Public Sans',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              enabledBorder: InputBorder.none,
                                                                              focusedBorder: InputBorder.none,
                                                                              errorBorder: InputBorder.none,
                                                                              focusedErrorBorder: InputBorder.none,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            maxLines:
                                                                                10,
                                                                            minLines:
                                                                                2,
                                                                            validator:
                                                                                _model.textController2Validator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.end,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children:
                                                                              [
                                                                            FFButtonWidget(
                                                                              onPressed: () {
                                                                                print('Button pressed ...');
                                                                              },
                                                                              text: 'Attachments',
                                                                              icon: Icon(
                                                                                FFIcons.kpaperclip,
                                                                                color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                size: 22.0,
                                                                              ),
                                                                              options: FFButtonOptions(
                                                                                height: 40.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: Colors.transparent,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: 'Public Sans',
                                                                                      color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderSide: BorderSide(
                                                                                  color: Colors.transparent,
                                                                                  width: 0.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                            FFButtonWidget(
                                                                              onPressed: () {
                                                                                print('Button pressed ...');
                                                                              },
                                                                              text: 'Send',
                                                                              icon: Icon(
                                                                                FFIcons.ksend2,
                                                                                color: Colors.white,
                                                                                size: 22.0,
                                                                              ),
                                                                              options: FFButtonOptions(
                                                                                height: 40.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: 'Public Sans',
                                                                                      color: Colors.white,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderSide: BorderSide(
                                                                                  color: Colors.transparent,
                                                                                  width: 0.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 12.0)),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 30.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ]
                                                                .divide(SizedBox(
                                                                    height:
                                                                        28.0))
                                                                .addToStart(
                                                                    SizedBox(
                                                                        height:
                                                                            22.0))
                                                                .addToEnd(SizedBox(
                                                                    height:
                                                                        24.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'containerOnPageLoadAnimation']!),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  28.0, 0.0, 28.0, 0.0),
                              child: wrapWithModel(
                                model: _model.footerModel,
                                updateCallback: () => safeSetState(() {}),
                                child: FooterWidget(),
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 28.0))
                              .addToStart(SizedBox(height: 140.0))
                              .addToEnd(SizedBox(height: 28.0)),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.searchBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: SearchBarWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
