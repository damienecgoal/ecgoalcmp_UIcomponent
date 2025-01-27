import '/auth/base_auth_user_provider.dart';
import '/components_2/f_a_q_header/f_a_q_header_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/help_card/help_card_widget.dart';
import '/components_2/help_contant/help_contant_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'faq_model.dart';
export 'faq_model.dart';

class FaqWidget extends StatefulWidget {
  const FaqWidget({super.key});

  @override
  State<FaqWidget> createState() => _FaqWidgetState();
}

class _FaqWidgetState extends State<FaqWidget> {
  late FaqModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FaqModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().activePage = 'Add Product';
      safeSetState(() {});
      if (!loggedIn) {
        context.pushNamed(
          'Register',
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
            ),
          },
        );
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
                child: const NavMenuWidget(),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  28.0, 0.0, 28.0, 0.0),
                              child: Wrap(
                                spacing: 28.0,
                                runSpacing: 28.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 300.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: const [
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Stack(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/vhxhnh5lntxp/header.png',
                                              width: double.infinity,
                                              height: double.infinity,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Hello, how can we help?',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Public Sans',
                                                          fontSize: 28.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              MouseRegion(
                                                opaque: false,
                                                cursor: MouseCursor.defer ??
                                                    MouseCursor.defer,
                                                onEnter: ((event) async {
                                                  safeSetState(() => _model
                                                          .mouseRegionHovered1 =
                                                      true);
                                                }),
                                                onExit: ((event) async {
                                                  safeSetState(() => _model
                                                          .mouseRegionHovered1 =
                                                      false);
                                                }),
                                                child: SizedBox(
                                                  width: 700.0,
                                                  child: TextFormField(
                                                    controller:
                                                        _model.textController,
                                                    focusNode: _model
                                                        .textFieldFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Public Sans',
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText: 'Search',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Public Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.mouseRegionHovered1
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                          ),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      contentPadding:
                                                          const EdgeInsets.all(18.0),
                                                      prefixIcon: Icon(
                                                        FFIcons.ksearch,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryTitle,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Public Sans',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    validator: _model
                                                        .textControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'or choose a category to quicly fiend thee help you need',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Public Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryTitle,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ].divide(const SizedBox(height: 20.0)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 40.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  MouseRegion(
                                                    opaque: false,
                                                    cursor: MouseCursor.defer ??
                                                        MouseCursor.defer,
                                                    onEnter: ((event) async {
                                                      safeSetState(() => _model
                                                              .mouseRegionHovered2 =
                                                          true);
                                                    }),
                                                    onExit: ((event) async {
                                                      safeSetState(() => _model
                                                              .mouseRegionHovered2 =
                                                          false);
                                                    }),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.activeTab =
                                                            'Payment';
                                                        safeSetState(() {});
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 44.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.activeTab ==
                                                                    'Payment'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : Colors
                                                                    .transparent,
                                                            Colors.transparent,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                FFIcons
                                                                    .kcreditCard,
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  () {
                                                                    if (_model
                                                                            .activeTab ==
                                                                        'Payment') {
                                                                      return Colors
                                                                          .white;
                                                                    } else if (_model
                                                                        .mouseRegionHovered2) {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary;
                                                                    } else {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle;
                                                                    }
                                                                  }(),
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryTitle,
                                                                ),
                                                                size: 24.0,
                                                              ),
                                                              Text(
                                                                'Payment',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Public Sans',
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        () {
                                                                          if (_model.activeTab ==
                                                                              'Payment') {
                                                                            return Colors.white;
                                                                          } else if (_model
                                                                              .mouseRegionHovered2) {
                                                                            return FlutterFlowTheme.of(context).primary;
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).secondaryTitle;
                                                                          }
                                                                        }(),
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                      ),
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  MouseRegion(
                                                    opaque: false,
                                                    cursor: MouseCursor.defer ??
                                                        MouseCursor.defer,
                                                    onEnter: ((event) async {
                                                      safeSetState(() => _model
                                                              .mouseRegionHovered3 =
                                                          true);
                                                    }),
                                                    onExit: ((event) async {
                                                      safeSetState(() => _model
                                                              .mouseRegionHovered3 =
                                                          false);
                                                    }),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.activeTab =
                                                            'Delivery';
                                                        safeSetState(() {});
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 44.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.activeTab ==
                                                                    'Delivery'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : Colors
                                                                    .transparent,
                                                            Colors.transparent,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                FFIcons
                                                                    .kbriefcase,
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  () {
                                                                    if (_model
                                                                            .activeTab ==
                                                                        'Delivery') {
                                                                      return Colors
                                                                          .white;
                                                                    } else if (_model
                                                                        .mouseRegionHovered3) {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary;
                                                                    } else {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle;
                                                                    }
                                                                  }(),
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryTitle,
                                                                ),
                                                                size: 24.0,
                                                              ),
                                                              Text(
                                                                'Delivery',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Public Sans',
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        () {
                                                                          if (_model.activeTab ==
                                                                              'Delivery') {
                                                                            return Colors.white;
                                                                          } else if (_model
                                                                              .mouseRegionHovered3) {
                                                                            return FlutterFlowTheme.of(context).primary;
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).secondaryTitle;
                                                                          }
                                                                        }(),
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                      ),
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  MouseRegion(
                                                    opaque: false,
                                                    cursor: MouseCursor.defer ??
                                                        MouseCursor.defer,
                                                    onEnter: ((event) async {
                                                      safeSetState(() => _model
                                                              .mouseRegionHovered4 =
                                                          true);
                                                    }),
                                                    onExit: ((event) async {
                                                      safeSetState(() => _model
                                                              .mouseRegionHovered4 =
                                                          false);
                                                    }),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.activeTab =
                                                            'Cancellation & Return';
                                                        safeSetState(() {});
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 44.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.activeTab ==
                                                                    'Cancellation & Return'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : Colors
                                                                    .transparent,
                                                            Colors.transparent,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                FFIcons
                                                                    .krotateClockwise2,
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  () {
                                                                    if (_model
                                                                            .activeTab ==
                                                                        'Cancellation & Return') {
                                                                      return Colors
                                                                          .white;
                                                                    } else if (_model
                                                                        .mouseRegionHovered4) {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary;
                                                                    } else {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle;
                                                                    }
                                                                  }(),
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryTitle,
                                                                ),
                                                                size: 24.0,
                                                              ),
                                                              Text(
                                                                'Cancellation & Return',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Public Sans',
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        () {
                                                                          if (_model.activeTab ==
                                                                              'Cancellation & Return') {
                                                                            return Colors.white;
                                                                          } else if (_model
                                                                              .mouseRegionHovered4) {
                                                                            return FlutterFlowTheme.of(context).primary;
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).secondaryTitle;
                                                                          }
                                                                        }(),
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                      ),
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  MouseRegion(
                                                    opaque: false,
                                                    cursor: MouseCursor.defer ??
                                                        MouseCursor.defer,
                                                    onEnter: ((event) async {
                                                      safeSetState(() => _model
                                                              .mouseRegionHovered5 =
                                                          true);
                                                    }),
                                                    onExit: ((event) async {
                                                      safeSetState(() => _model
                                                              .mouseRegionHovered5 =
                                                          false);
                                                    }),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.activeTab =
                                                            'My Orders';
                                                        safeSetState(() {});
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 44.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.activeTab ==
                                                                    'My Orders'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : Colors
                                                                    .transparent,
                                                            Colors.transparent,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                FFIcons.kcube,
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  () {
                                                                    if (_model
                                                                            .activeTab ==
                                                                        'My Orders') {
                                                                      return Colors
                                                                          .white;
                                                                    } else if (_model
                                                                        .mouseRegionHovered5) {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary;
                                                                    } else {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle;
                                                                    }
                                                                  }(),
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryTitle,
                                                                ),
                                                                size: 24.0,
                                                              ),
                                                              Text(
                                                                'My Orders',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Public Sans',
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        () {
                                                                          if (_model.activeTab ==
                                                                              'My Orders') {
                                                                            return Colors.white;
                                                                          } else if (_model
                                                                              .mouseRegionHovered5) {
                                                                            return FlutterFlowTheme.of(context).primary;
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).secondaryTitle;
                                                                          }
                                                                        }(),
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                      ),
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  MouseRegion(
                                                    opaque: false,
                                                    cursor: MouseCursor.defer ??
                                                        MouseCursor.defer,
                                                    onEnter: ((event) async {
                                                      safeSetState(() => _model
                                                              .mouseRegionHovered6 =
                                                          true);
                                                    }),
                                                    onExit: ((event) async {
                                                      safeSetState(() => _model
                                                              .mouseRegionHovered6 =
                                                          false);
                                                    }),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.activeTab =
                                                            'Product & Services';
                                                        safeSetState(() {});
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 44.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.activeTab ==
                                                                    'Product & Services'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : Colors
                                                                    .transparent,
                                                            Colors.transparent,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Icon(
                                                                FFIcons
                                                                    .ksettings,
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  () {
                                                                    if (_model
                                                                            .activeTab ==
                                                                        'Product & Services') {
                                                                      return Colors
                                                                          .white;
                                                                    } else if (_model
                                                                        .mouseRegionHovered6) {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary;
                                                                    } else {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle;
                                                                    }
                                                                  }(),
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryTitle,
                                                                ),
                                                                size: 24.0,
                                                              ),
                                                              Text(
                                                                'Product & Services',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Public Sans',
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        () {
                                                                          if (_model.activeTab ==
                                                                              'Product & Services') {
                                                                            return Colors.white;
                                                                          } else if (_model
                                                                              .mouseRegionHovered6) {
                                                                            return FlutterFlowTheme.of(context).primary;
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).secondaryTitle;
                                                                          }
                                                                        }(),
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                      ),
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/1u8jn61g7458/girl-sitting-with-laptop.png',
                                                  width: double.infinity,
                                                  height: 260.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ].divide(const SizedBox(height: 40.0)),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 7,
                                        child: Builder(
                                          builder: (context) {
                                            if (_model.activeTab == 'Payment') {
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .fAQHeaderModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: FAQHeaderWidget(
                                                        icon: Icon(
                                                          FFIcons.kbriefcase,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 32.0,
                                                        ),
                                                        title: 'Delivery',
                                                        description:
                                                            'Lorem ipsum, dolor sit amet.',
                                                      ),
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel1,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'How would you ship my order?',
                                                      comment1:
                                                          'For large products, we deliver your product via a third party logistics company offering you the “room of choice” scheduled delivery service. For small products, we offer free parcel delivery.',
                                                      comment2: ' ',
                                                      comment3: ' ',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel2,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'What is the delivery cost of my order?',
                                                      comment1:
                                                          'The cost of scheduled delivery is \$69 or \$99 per order, depending on the destination postal code. The parcel delivery is free.',
                                                      comment2: ' ',
                                                      comment3: ' ',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel3,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'What to do if my product arrives damaged?',
                                                      comment1:
                                                          'We will promptly replace any product that is damaged in transit. Just contact our',
                                                      comment2: ' support team',
                                                      comment3:
                                                          ', to notify us of the situation within 48 hours of product arrival.',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                ].divide(
                                                    const SizedBox(height: 12.0)),
                                              );
                                            } else if (_model.activeTab ==
                                                'Cancellation & Return') {
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .fAQHeaderModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: FAQHeaderWidget(
                                                        icon: Icon(
                                                          FFIcons
                                                              .krotateClockwise2,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 32.0,
                                                        ),
                                                        title:
                                                            'Cancellation & Return',
                                                        description:
                                                            'Lorem ipsum, dolor sit amet.',
                                                      ),
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel4,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'Can I cancel my order?',
                                                      comment1:
                                                          'Scheduled delivery orders can be cancelled 72 hours prior to your selected delivery date for full refund.\n\nParcel delivery orders cannot be cancelled, however a free return label can be provided upon request.',
                                                      comment2: ' ',
                                                      comment3: ' ',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel5,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'Can I return my product?',
                                                      comment1:
                                                          'You can return your product within 15 days of delivery, by contacting our ',
                                                      comment2: ' support team',
                                                      comment3:
                                                          ', All merchandise returned must be in the original packaging with all original items.',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel6,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'Where can I view status of return?',
                                                      comment1:
                                                          'Locate the item from Your',
                                                      comment2: ' Orders',
                                                      comment3:
                                                          '\n\nSelect Return/Refund status',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                ].divide(
                                                    const SizedBox(height: 12.0)),
                                              );
                                            } else if (_model.activeTab ==
                                                'My Orders') {
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .fAQHeaderModel3,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: FAQHeaderWidget(
                                                        icon: Icon(
                                                          FFIcons.kcube,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 32.0,
                                                        ),
                                                        title: 'My Orders',
                                                        description:
                                                            'Lorem ipsum, dolor sit amet.',
                                                      ),
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel7,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'Has my order been successful?',
                                                      comment1:
                                                          'All successful order transactions will receive an order confirmation email once the order has been processed. If you have not received your order confirmation email within 24 hours, check your junk email or spam folder.\n\nAlternatively, log in to your account to check your order summary. If you do not have a account, you can contact our Customer Care Team on 1-000-000-000.',
                                                      comment2: ' ',
                                                      comment3: ' ',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel8,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'My Promotion Code is not working, what can I do?',
                                                      comment1:
                                                          'If you are having issues with a promotion code, please contact us at 1 000 000 000 for assistance.',
                                                      comment2: ' ',
                                                      comment3: ' ',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel9,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'How do I track my Orders?',
                                                      comment1:
                                                          'If you have an account just sign into your account from ',
                                                      comment2: 'here',
                                                      comment3:
                                                          ' and select “My Orders”.\n\nIf you have a a guest account track your order from here using the order number and the email address.',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                ].divide(
                                                    const SizedBox(height: 12.0)),
                                              );
                                            } else if (_model.activeTab ==
                                                'Product & Services') {
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .fAQHeaderModel4,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: FAQHeaderWidget(
                                                        icon: Icon(
                                                          FFIcons.kcamera,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 32.0,
                                                        ),
                                                        title:
                                                            'Product & Services',
                                                        description:
                                                            'Lorem ipsum, dolor sit amet.',
                                                      ),
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel10,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'Will I be notified once my order has shipped?',
                                                      comment1:
                                                          'Yes, We will send you an email once your order has been shipped. This email will contain tracking and order information.',
                                                      comment2: ' ',
                                                      comment3: ' ',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel11,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'Where can I find warranty information?',
                                                      comment1:
                                                          'We are committed to quality products. For information on warranty period and warranty services, visit our Warranty section',
                                                      comment2: ' here',
                                                      comment3: ' .',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel12,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'How can I purchase additional warranty coverage?',
                                                      comment1:
                                                          'For the peace of your mind, we offer extended warranty plans that add additional year(s) of protection to the standard manufacturer’s warranty provided by us. To purchase or find out more about the extended warranty program, visit Extended Warranty section ',
                                                      comment2: 'here',
                                                      comment3: '.',
                                                      comment4: '  ',
                                                    ),
                                                  ),
                                                ].divide(
                                                    const SizedBox(height: 12.0)),
                                              );
                                            } else {
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .fAQHeaderModel5,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: FAQHeaderWidget(
                                                        icon: Icon(
                                                          FFIcons.kcreditCard,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 32.0,
                                                        ),
                                                        title: 'Payment',
                                                        description:
                                                            'Get help with payment',
                                                      ),
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel13,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'When is payment taken for my order?',
                                                      comment1:
                                                          'Payment is taken during the checkout process when you pay for your order. The order number that appears on the confirmation screen indicates payment has been successfully processed.',
                                                      comment2: ' ',
                                                      comment3: ' ',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel14,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'How do I pay for my order?',
                                                      comment1:
                                                          'We accept Visa®, MasterCard®, American Express®, and PayPal®. Our servers encrypt all information submitted to them, so you can be confident that your credit card information will be kept safe and secure.',
                                                      comment2: ' ',
                                                      comment3: ' ',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel15,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'What should I do if I\'m having trouble placing an order?',
                                                      comment1:
                                                          'For any technical difficulties you are experiencing with our website, please contact us at our',
                                                      comment2:
                                                          ' support portal',
                                                      comment3:
                                                          ' , or you can call us toll-free at 1-000-000-000, or email us at ',
                                                      comment4:
                                                          ' order@companymail.com',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel16,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'Which license do I need for an end product that is only accessible to paying users?',
                                                      comment1:
                                                          'If you have paying users or you are developing any SaaS products then you need an Extended License. For each products, you need a license. You can get free lifetime updates as well.',
                                                      comment2: ' ',
                                                      comment3: ' ',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .helpContantModel17,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: const HelpContantWidget(
                                                      title:
                                                          'Does my subscription automatically renew?',
                                                      comment1:
                                                          'No, This is not subscription based item.Pastry pudding cookie toffee bonbon jujubes jujubes powder topping. Jelly beans gummi bears sweet roll bonbon muffin liquorice. Wafer lollipop sesame snaps.',
                                                      comment2: ' ',
                                                      comment3: ' ',
                                                      comment4: ' ',
                                                    ),
                                                  ),
                                                ].divide(
                                                    const SizedBox(height: 12.0)),
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.statusCardModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: StatusCardWidget(
                                              title: 'Question?',
                                              titleColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              bgColor: const Color(0x347367F0),
                                            ),
                                          ),
                                          Text(
                                            'You still have a question?',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Public Sans',
                                                  fontSize: 24.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Text(
                                            'If you can\'t find question in our FAQ, you can contact us. We\'ll answer you shortly!',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Public Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryTitle,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ].divide(const SizedBox(height: 16.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: wrapWithModel(
                                              model: _model.helpCardModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: HelpCardWidget(
                                                icon: Icon(
                                                  FFIcons.kphone,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 28.0,
                                                ),
                                                title: '+ (810) 2548 2568',
                                                description:
                                                    'We are always happy to help',
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: wrapWithModel(
                                              model: _model.helpCardModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: HelpCardWidget(
                                                icon: Icon(
                                                  FFIcons.kmail,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 28.0,
                                                ),
                                                title: 'help@help.com',
                                                description:
                                                    'Best way to get a quick answer',
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 28.0)),
                                      ),
                                    ]
                                        .divide(const SizedBox(height: 40.0))
                                        .addToEnd(const SizedBox(height: 40.0)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  28.0, 0.0, 28.0, 0.0),
                              child: wrapWithModel(
                                model: _model.footerModel,
                                updateCallback: () => safeSetState(() {}),
                                child: const FooterWidget(),
                              ),
                            ),
                          ]
                              .divide(const SizedBox(height: 28.0))
                              .addToStart(const SizedBox(height: 110.0))
                              .addToEnd(const SizedBox(height: 28.0)),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.searchBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const SearchBarWidget(),
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
