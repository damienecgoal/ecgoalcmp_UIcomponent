import '/auth/base_auth_user_provider.dart';
import '/components/about_card/about_card_widget.dart';
import '/components/avatar_name/avatar_name_widget.dart';
import '/components/nodal/profile_action/profile_action_widget.dart';
import '/components/nodal/project_action/project_action_widget.dart';
import '/components_2/connections/connections_widget.dart';
import '/components_2/connections_card/connections_card_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/icon_text/icon_text_widget.dart';
import '/components_2/list_header/list_header_widget.dart';
import '/components_2/list_header2/list_header2_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/project/project_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/teams_card/teams_card_widget.dart';
import '/components_2/teams_card2/teams_card2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

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
                      alignment: const AlignmentDirectional(0.0, 0.0),
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
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'User Profile / ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Public Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 22.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        if (_model.activeTab == 'Profile')
                                          Text(
                                            'Profile',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Public Sans',
                                                  fontSize: 22.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        if (_model.activeTab == 'Teams')
                                          Text(
                                            'Teams',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Public Sans',
                                                  fontSize: 22.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        if (_model.activeTab == 'Projects')
                                          Text(
                                            'Projects',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Public Sans',
                                                  fontSize: 22.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        if (_model.activeTab == 'Connections')
                                          Text(
                                            'Connections',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Public Sans',
                                                  fontSize: 22.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 370.0,
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
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.asset(
                                              'assets/images/profile-banner.png',
                                              width: double.infinity,
                                              height: 250.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      32.0, 0.0, 32.0, 32.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            13.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(13.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          width: 5.0,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/14.png',
                                                        width: 120.0,
                                                        height: 120.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'John Doe',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Public Sans',
                                                                fontSize: 22.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .iconTextModel1,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      IconTextWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kcolorSwatch,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'UX Designer',
                                                                  ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .iconTextModel2,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      IconTextWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kmapPin,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Vatican City',
                                                                  ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .iconTextModel3,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      IconTextWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kcalendar,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Joined April 2021',
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 16.0)),
                                                            ),
                                                            FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Connected',
                                                              icon: const Icon(
                                                                FFIcons.kcheck,
                                                                color: Colors
                                                                    .white,
                                                                size: 22.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 40.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Public Sans',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 0.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 0.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 4.0)),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 28.0)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      MouseRegion(
                                        opaque: false,
                                        cursor: MouseCursor.defer ??
                                            MouseCursor.defer,
                                        onEnter: ((event) async {
                                          safeSetState(() => _model
                                              .mouseRegionHovered1 = true);
                                        }),
                                        onExit: ((event) async {
                                          safeSetState(() => _model
                                              .mouseRegionHovered1 = false);
                                        }),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.activeTab = 'Profile';
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: valueOrDefault<Color>(
                                                _model.activeTab == 'Profile'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primary
                                                    : Colors.transparent,
                                                Colors.transparent,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    FFIcons.kuserCheck,
                                                    color:
                                                        valueOrDefault<Color>(
                                                      _model.mouseRegionHovered1
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                    ),
                                                    size: 22.0,
                                                  ),
                                                  Text(
                                                    'Profile',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Public Sans',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.mouseRegionHovered1
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ].divide(const SizedBox(width: 8.0)),
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
                                              .mouseRegionHovered2 = true);
                                        }),
                                        onExit: ((event) async {
                                          safeSetState(() => _model
                                              .mouseRegionHovered2 = false);
                                        }),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.activeTab = 'Teams';
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: valueOrDefault<Color>(
                                                _model.activeTab == 'Teams'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primary
                                                    : Colors.transparent,
                                                Colors.transparent,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    FFIcons.kusers,
                                                    color:
                                                        valueOrDefault<Color>(
                                                      _model.mouseRegionHovered2
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                    ),
                                                    size: 22.0,
                                                  ),
                                                  Text(
                                                    'Teams',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Public Sans',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.mouseRegionHovered2
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ].divide(const SizedBox(width: 8.0)),
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
                                              .mouseRegionHovered3 = true);
                                        }),
                                        onExit: ((event) async {
                                          safeSetState(() => _model
                                              .mouseRegionHovered3 = false);
                                        }),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.activeTab = 'Projects';
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: valueOrDefault<Color>(
                                                _model.activeTab == 'Projects'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primary
                                                    : Colors.transparent,
                                                Colors.transparent,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    FFIcons.klayoutGrid,
                                                    color:
                                                        valueOrDefault<Color>(
                                                      _model.mouseRegionHovered3
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                    ),
                                                    size: 22.0,
                                                  ),
                                                  Text(
                                                    'Projects',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Public Sans',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.mouseRegionHovered3
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ].divide(const SizedBox(width: 8.0)),
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
                                              .mouseRegionHovered4 = true);
                                        }),
                                        onExit: ((event) async {
                                          safeSetState(() => _model
                                              .mouseRegionHovered4 = false);
                                        }),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.activeTab = 'Connections';
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: valueOrDefault<Color>(
                                                _model.activeTab ==
                                                        'Connections'
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primary
                                                    : Colors.transparent,
                                                Colors.transparent,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    FFIcons.klink,
                                                    color:
                                                        valueOrDefault<Color>(
                                                      _model.mouseRegionHovered4
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                    ),
                                                    size: 22.0,
                                                  ),
                                                  Text(
                                                    'Connections',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Public Sans',
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.mouseRegionHovered4
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ].divide(const SizedBox(width: 8.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (_model.activeTab == 'Teams') {
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 40.0),
                                          child: Wrap(
                                            spacing: 28.0,
                                            runSpacing: 28.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .teamsCard2Model1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: TeamsCard2Widget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/nj1cbx3q2nne/react-label.png',
                                                        title:
                                                            'React Developers',
                                                        description:
                                                            'We don’t make assumptions about the rest of your technology stack, so you can develop new features in React.',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/zl0fmg8vmvvf/5.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/tswoevfrr7vw/12.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                        number: '+8',
                                                        status: 'React',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        bg: const Color(0x347367F0),
                                                        status2: 'Vue.JS',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .warning,
                                                        bg2: const Color(0x34FF9F43),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .teamsCard2Model2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: TeamsCard2Widget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/yc4zc8913ekc/vue-label.png',
                                                        title:
                                                            'Vue.js Dev Team',
                                                        description:
                                                            'The development of Vue and its ecosystem is guided by an international team, some of whom have chosen to be featured below.',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/iaaszpz5jz7j/3.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/9xxbzkk61vxj/13.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                                                        number: '+8',
                                                        status: 'Developer',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        bg: const Color(0x34EA5455),
                                                        status2: 'Email',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        bg2: const Color(0x3428C76F),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .teamsCard2Model3,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: TeamsCard2Widget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/5sxpa5i1z7e3/xd-label.png',
                                                        title:
                                                            'Creative Designers',
                                                        description:
                                                            'A design or product team is more than just the people on it. A team includes the people, the roles they play.',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/iaaszpz5jz7j/3.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/tswoevfrr7vw/12.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/7ckx3b9ny8hc/8.png',
                                                        number: '+8',
                                                        status: 'XD',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        bg: const Color(0x34EA5455),
                                                        status2: 'Sketch',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .warning,
                                                        bg2: const Color(0x34FF9F43),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 28.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .teamsCard2Model4,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: TeamsCard2Widget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/axj0t7axskfl/support-label.png',
                                                        title: 'Support Team',
                                                        description:
                                                            'Support your team. Your customer support team is fielding the good, the bad, and the ugly day in and day out.',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/jkj07rl56yax/4.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/tswoevfrr7vw/12.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/7ckx3b9ny8hc/8.png',
                                                        number: '+8',
                                                        status: 'Hubilo',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        bg: const Color(0x3428C76F),
                                                        status2: 'Zendesk',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        bg2: const Color(0x3300CFE8),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .teamsCard2Model5,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: TeamsCard2Widget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/06mt7l7nx9as/social-label.png',
                                                        title:
                                                            'Digital Marketing',
                                                        description:
                                                            'Digital marketing refers to advertising delivered through digital channels such as search engines, websites…',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/mteufgo4w1e1/2.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                        number: '+8',
                                                        status: 'Twitter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        bg: const Color(0x347367F0),
                                                        status2: 'Email',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        bg2: const Color(0x3328C76F),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .teamsCard2Model6,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: TeamsCard2Widget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/pv28xhpvxxdw/event-label.png',
                                                        title: 'Event',
                                                        description:
                                                            'Event is defined as a particular contest which is part of a program of contests. An example of an event is the long…',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/11g8cygwk8lk/9.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/7ckx3b9ny8hc/8.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                                                        number: '+8',
                                                        status: 'Hubilo',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        bg: const Color(0x3328C76F),
                                                        status2: 'Vue.JS',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .warning,
                                                        bg2: const Color(0x34FF9F43),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 28.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .teamsCard2Model7,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: TeamsCard2Widget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/7gczhqifodwe/figma-label.png',
                                                        title:
                                                            'Figma Resources',
                                                        description:
                                                            'Explore, install, use, and remix thousands of plugins and files published to the Figma Community by designers and developers.',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/zl0fmg8vmvvf/5.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/x4gkpaxl5mr7/1.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                        number: '+8',
                                                        status: 'UI/UX',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        bg: const Color(0x347367F0),
                                                        status2: 'Figma',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        bg2: const Color(0x33A8AAAE),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .teamsCard2Model8,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: TeamsCard2Widget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/kcigtid7egyu/html-label.png',
                                                        title: 'Only Beginners',
                                                        description:
                                                            'Learn the basics of how websites work, front-end vs back-end, and using a code editor. Learn basic HTML, CSS, and…',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/l893u9yxsc4v/10.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/9xxbzkk61vxj/13.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/zl0fmg8vmvvf/5.png',
                                                        number: '+8',
                                                        status: 'CSS',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        bg: const Color(0x3300CFE8),
                                                        status2: 'HTML',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .warning,
                                                        bg2: const Color(0x34FF9F43),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 28.0)),
                                              ),
                                            ],
                                          ),
                                        );
                                      } else if (_model.activeTab ==
                                          'Projects') {
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 40.0),
                                          child: Wrap(
                                            spacing: 28.0,
                                            runSpacing: 28.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model:
                                                          _model.projectModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ProjectWidget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/06mt7l7nx9as/social-label.png',
                                                        title: 'Social Banner',
                                                        client:
                                                            'Christian Jimenez',
                                                        totalBudget: '\$24.8k',
                                                        budget: '/ \$\$18.2k',
                                                        startDate: '14/2/21',
                                                        deadline: '28/2/22',
                                                        description:
                                                            'we are Counsulting, Software Development and Web Developmennt Services..',
                                                        allHourse: '380/244',
                                                        status: '28 Days left',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        bg: const Color(0x3328C76F),
                                                        task: 'Task: 290/344',
                                                        completed:
                                                            '95% Completed',
                                                        members: '280 Members',
                                                        comment: '236',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/9xxbzkk61vxj/13.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model:
                                                          _model.projectModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ProjectWidget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/nj1cbx3q2nne/react-label.png',
                                                        title: 'Admin Template',
                                                        client:
                                                            'Christian Jimenez',
                                                        totalBudget: '\$24.8k',
                                                        budget: '/ \$\$18.2k',
                                                        startDate: '14/2/21',
                                                        deadline: '28/2/22',
                                                        description:
                                                            'we are Counsulting, Software Development and Web Developmennt Services..',
                                                        allHourse: '380/244',
                                                        status: '28 Days left',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        bg: const Color(0x3328C76F),
                                                        task: 'Task: 290/344',
                                                        completed:
                                                            '95% Completed',
                                                        members: '280 Members',
                                                        comment: '236',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/9xxbzkk61vxj/13.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model:
                                                          _model.projectModel3,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ProjectWidget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/yc4zc8913ekc/vue-label.png',
                                                        title: 'App Design',
                                                        client:
                                                            'Christian Jimenez',
                                                        totalBudget: '\$24.8k',
                                                        budget: '/ \$\$18.2k',
                                                        startDate: '14/2/21',
                                                        deadline: '28/2/22',
                                                        description:
                                                            'we are Counsulting, Software Development and Web Developmennt Services..',
                                                        allHourse: '380/244',
                                                        status: '28 Days left',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        bg: const Color(0x3328C76F),
                                                        task: 'Task: 290/344',
                                                        completed:
                                                            '95% Completed',
                                                        members: '280 Members',
                                                        comment: '236',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/9xxbzkk61vxj/13.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 28.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model:
                                                          _model.projectModel4,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ProjectWidget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/axj0t7axskfl/support-label.png',
                                                        title: 'Create Website',
                                                        client:
                                                            'Christian Jimenez',
                                                        totalBudget: '\$24.8k',
                                                        budget: '/ \$\$18.2k',
                                                        startDate: '14/2/21',
                                                        deadline: '28/2/22',
                                                        description:
                                                            'we are Counsulting, Software Development and Web Developmennt Services..',
                                                        allHourse: '380/244',
                                                        status: '28 Days left',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        bg: const Color(0x3328C76F),
                                                        task: 'Task: 290/344',
                                                        completed:
                                                            '95% Completed',
                                                        members: '280 Members',
                                                        comment: '236',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/9xxbzkk61vxj/13.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model:
                                                          _model.projectModel5,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ProjectWidget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/7gczhqifodwe/figma-label.png',
                                                        title:
                                                            'Figma Dashboard',
                                                        client:
                                                            'Christian Jimenez',
                                                        totalBudget: '\$24.8k',
                                                        budget: '/ \$\$18.2k',
                                                        startDate: '14/2/21',
                                                        deadline: '28/2/22',
                                                        description:
                                                            'we are Counsulting, Software Development and Web Developmennt Services..',
                                                        allHourse: '380/244',
                                                        status: '28 Days left',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        bg: const Color(0x3328C76F),
                                                        task: 'Task: 290/344',
                                                        completed:
                                                            '95% Completed',
                                                        members: '280 Members',
                                                        comment: '236',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/9xxbzkk61vxj/13.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model:
                                                          _model.projectModel6,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ProjectWidget(
                                                        logo:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/5sxpa5i1z7e3/xd-label.png',
                                                        title: 'Logo Design',
                                                        client:
                                                            'Christian Jimenez',
                                                        totalBudget: '\$24.8k',
                                                        budget: '/ \$\$18.2k',
                                                        startDate: '14/2/21',
                                                        deadline: '28/2/22',
                                                        description:
                                                            'we are Counsulting, Software Development and Web Developmennt Services..',
                                                        allHourse: '380/244',
                                                        status: '28 Days left',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        bg: const Color(0x3328C76F),
                                                        task: 'Task: 290/344',
                                                        completed:
                                                            '95% Completed',
                                                        members: '280 Members',
                                                        comment: '236',
                                                        avatar1:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                                                        avatar2:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/9xxbzkk61vxj/13.png',
                                                        avatar3:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 28.0)),
                                              ),
                                            ],
                                          ),
                                        );
                                      } else if (_model.activeTab ==
                                          'Connections') {
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 40.0),
                                          child: Wrap(
                                            spacing: 28.0,
                                            runSpacing: 28.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .connectionsModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ConnectionsWidget(
                                                        avatar:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/3zy49ozc45km/3.png',
                                                        name: 'Mark Gilbert',
                                                        profetion:
                                                            'UI Designer',
                                                        status: 'Figma',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        bg: const Color(0x34A8AAAE),
                                                        status2: 'Sketch',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .warning,
                                                        bg2: const Color(0x33FF9F43),
                                                        project: '18',
                                                        task: '834',
                                                        connection: '129',
                                                        connect: 'Connected',
                                                        icon: const Icon(
                                                          FFIcons.kuserCheck,
                                                          color: Colors.white,
                                                          size: 20.0,
                                                        ),
                                                        bgConnect:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textColor: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .connectionsModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ConnectionsWidget(
                                                        avatar:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/tswoevfrr7vw/12.png',
                                                        name: 'Eugenia Parsons',
                                                        profetion: 'Developer',
                                                        status: 'Angular',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        bg: const Color(0x33EA5455),
                                                        status2: 'React',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        bg2: const Color(0x3300CFE8),
                                                        project: '112',
                                                        task: '23.1k',
                                                        connection: '1.28k',
                                                        connect: 'Connect',
                                                        icon: Icon(
                                                          FFIcons.kuserPlus,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 20.0,
                                                        ),
                                                        bgConnect:
                                                            const Color(0x347367F0),
                                                        textColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .connectionsModel3,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ConnectionsWidget(
                                                        avatar:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/zl0fmg8vmvvf/5.png',
                                                        name: 'Francis Byrd',
                                                        profetion: 'Developer',
                                                        status: 'React',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        bg: const Color(0x3300CFE8),
                                                        status2: 'HTML',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        bg2: const Color(0x347367F0),
                                                        project: '32',
                                                        task: '1.25k',
                                                        connection: '890',
                                                        connect: 'Connect',
                                                        icon: Icon(
                                                          FFIcons.kuserPlus,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 20.0,
                                                        ),
                                                        bgConnect:
                                                            const Color(0x337367F0),
                                                        textColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 28.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .connectionsModel4,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ConnectionsWidget(
                                                        avatar:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/7ckx3b9ny8hc/8.png',
                                                        name: 'Leon Lucas',
                                                        profetion:
                                                            'UI/UX Designer',
                                                        status: 'Figma',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        bg: const Color(0x34A8AAAE),
                                                        status2: 'Photoshop',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        bg2: const Color(0x337367F0),
                                                        project: '86',
                                                        task: '12.4k',
                                                        connection: '890',
                                                        connect: 'Connect',
                                                        icon: Icon(
                                                          FFIcons.kuserPlus,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 20.0,
                                                        ),
                                                        bgConnect:
                                                            const Color(0x347367F0),
                                                        textColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .connectionsModel5,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ConnectionsWidget(
                                                        avatar:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/11g8cygwk8lk/9.png',
                                                        name: 'Jayden Rogers',
                                                        profetion:
                                                            'Full Stack Developer',
                                                        status: 'Angular',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        bg: const Color(0x34EA5455),
                                                        status2: 'React',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        bg2: const Color(0x3400CFE8),
                                                        project: '244',
                                                        task: '23.8k',
                                                        connection: '2.14k',
                                                        connect: 'Connected',
                                                        icon: const Icon(
                                                          FFIcons.kuserCheck,
                                                          color: Colors.white,
                                                          size: 20.0,
                                                        ),
                                                        bgConnect:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textColor: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .connectionsModel6,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: ConnectionsWidget(
                                                        avatar:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/l893u9yxsc4v/10.png',
                                                        name: 'Jeanette Powell',
                                                        profetion: 'SEO',
                                                        status: 'Analysis',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        bg: const Color(0x34A8AAAE),
                                                        status2: 'Writing',
                                                        color2:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        bg2: const Color(0x3328C76F),
                                                        project: '32',
                                                        task: '1.28k',
                                                        connection: '1.27k',
                                                        connect: 'Connected',
                                                        icon: Icon(
                                                          FFIcons.kuserCheck,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 20.0,
                                                        ),
                                                        bgConnect:
                                                            const Color(0x337367F0),
                                                        textColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 28.0)),
                                              ),
                                            ],
                                          ),
                                        );
                                      } else {
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 34.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 12.0,
                                                            color: Color(
                                                                0x14000000),
                                                            offset: Offset(
                                                              0.0,
                                                              0.0,
                                                            ),
                                                            spreadRadius: 2.0,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            20.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'ABOUT',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Public Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .aboutCardModel1,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      AboutCardWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kuser,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Full Name:',
                                                                    title2:
                                                                        'John Doe',
                                                                  ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .aboutCardModel2,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      AboutCardWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kcheck,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Status:',
                                                                    title2:
                                                                        'Active',
                                                                  ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .aboutCardModel3,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      AboutCardWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kcrown,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Role:',
                                                                    title2:
                                                                        'Developer',
                                                                  ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .aboutCardModel4,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      AboutCardWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kflag,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Country:',
                                                                    title2:
                                                                        'USA',
                                                                  ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .aboutCardModel5,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      AboutCardWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kfileDescription,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Languages:',
                                                                    title2:
                                                                        'English',
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height:
                                                                      18.0)),
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'CONTACTS',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Public Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .aboutCardModel6,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      AboutCardWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kphoneCall,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Contact:',
                                                                    title2:
                                                                        '(123) 456-7890',
                                                                  ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .aboutCardModel7,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      AboutCardWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kbrandSkype,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Skype:',
                                                                    title2:
                                                                        'john.doe',
                                                                  ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .aboutCardModel8,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      AboutCardWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kmail,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Email:',
                                                                    title2:
                                                                        'john.doe@example.com',
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height:
                                                                      18.0)),
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'TEAMS',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Public Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .aboutCardModel9,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      AboutCardWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kbrandAngular,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Backend Developer',
                                                                    title2:
                                                                        '(126 Members)',
                                                                  ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .aboutCardModel10,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      AboutCardWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kbrandReactNative,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'React Developer',
                                                                    title2:
                                                                        '(98 Members)',
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height:
                                                                      18.0)),
                                                            ),
                                                          ]
                                                              .divide(const SizedBox(
                                                                  height: 28.0))
                                                              .addToEnd(
                                                                  const SizedBox(
                                                                      height:
                                                                          8.0)),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 12.0,
                                                            color: Color(
                                                                0x14000000),
                                                            offset: Offset(
                                                              0.0,
                                                              0.0,
                                                            ),
                                                            spreadRadius: 2.0,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            20.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'OVERVIEW',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Public Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .aboutCardModel11,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      AboutCardWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kcheck,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Task Compiled:',
                                                                    title2:
                                                                        '13.5k',
                                                                  ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .aboutCardModel12,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      AboutCardWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .klayoutGrid,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Projects Compiled:',
                                                                    title2:
                                                                        '146',
                                                                  ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .aboutCardModel13,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      AboutCardWidget(
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .kusers,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryTitle,
                                                                      size:
                                                                          22.0,
                                                                    ),
                                                                    title:
                                                                        'Connections:',
                                                                    title2:
                                                                        '897',
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height:
                                                                      18.0)),
                                                            ),
                                                          ]
                                                              .divide(const SizedBox(
                                                                  height: 28.0))
                                                              .addToEnd(
                                                                  const SizedBox(
                                                                      height:
                                                                          8.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 28.0)),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                blurRadius:
                                                                    12.0,
                                                                color: Color(
                                                                    0x14000000),
                                                                offset: Offset(
                                                                  0.0,
                                                                  0.0,
                                                                ),
                                                                spreadRadius:
                                                                    2.0,
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        24.0,
                                                                        20.0,
                                                                        24.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Activity Timeline',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Public Sans',
                                                                            fontSize:
                                                                                18.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
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
                                                                            barrierColor:
                                                                                Colors.transparent,
                                                                            context:
                                                                                context,
                                                                            isGlobal:
                                                                                false,
                                                                            avoidOverflow:
                                                                                false,
                                                                            targetAnchor:
                                                                                const AlignmentDirectional(-1.0, 6.0).resolve(Directionality.of(context)),
                                                                            followerAnchor:
                                                                                const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
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
                                                                                    child: const ProfileActionWidget(),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          FFIcons
                                                                              .kdotsVertical,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Stack(
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          18.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          SizedBox(
                                                                            height:
                                                                                315.0,
                                                                            child:
                                                                                VerticalDivider(
                                                                              width: 22.0,
                                                                              thickness: 1.0,
                                                                              color: FlutterFlowTheme.of(context).lineColor,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Container(
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              decoration: const BoxDecoration(
                                                                                color: Color(0x347367F0),
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(3.0),
                                                                                child: Container(
                                                                                  width: 100.0,
                                                                                  height: 100.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Client Meeting',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        'Today',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Text(
                                                                                    'Project meeting with john @10:15am',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  wrapWithModel(
                                                                                    model: _model.avatarNameModel,
                                                                                    updateCallback: () => safeSetState(() {}),
                                                                                    child: const AvatarNameWidget(
                                                                                      avatar: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/3zy49ozc45km/3.png',
                                                                                      name: 'Lester McCarthy (Client)',
                                                                                      title: 'CEO of Pixinvent',
                                                                                      size: 40.0,
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 40.0)),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Container(
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              decoration: const BoxDecoration(
                                                                                color: Color(0x3328C76F),
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(3.0),
                                                                                child: Container(
                                                                                  width: 100.0,
                                                                                  height: 100.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).success,
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Create a new project for client',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        '2 Day Ago',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Text(
                                                                                    'Add files to new design folder',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 40.0)),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Container(
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              decoration: const BoxDecoration(
                                                                                color: Color(0x34EA5455),
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(3.0),
                                                                                child: Container(
                                                                                  width: 100.0,
                                                                                  height: 100.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Shared 2 New Project Files',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        '6 Day Ago',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Sent by Mollie Dixon',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 28.0,
                                                                                        height: 28.0,
                                                                                        clipBehavior: Clip.antiAlias,
                                                                                        decoration: const BoxDecoration(
                                                                                          shape: BoxShape.circle,
                                                                                        ),
                                                                                        child: Image.network(
                                                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/jkj07rl56yax/4.png',
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ].divide(const SizedBox(width: 6.0)),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Image.network(
                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/pxzve05iw3av/doc.png',
                                                                                              width: 20.0,
                                                                                              height: 24.0,
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            ' App Guidelines',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 12.0)),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: Image.network(
                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/3d4w55ykfmqd/xls.png',
                                                                                              width: 20.0,
                                                                                              height: 24.0,
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Testing Results',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 12.0)),
                                                                                      ),
                                                                                    ].divide(const SizedBox(width: 20.0)),
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 40.0)),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Container(
                                                                              width: 20.0,
                                                                              height: 20.0,
                                                                              decoration: const BoxDecoration(
                                                                                color: Color(0x3300CFE8),
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(3.0),
                                                                                child: Container(
                                                                                  width: 100.0,
                                                                                  height: 100.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).info,
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Project status updated',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        '10 Day Ago',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Text(
                                                                                    'Woocommerce iOS App Completed',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(const SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 40.0)),
                                                                        ),
                                                                      ].divide(const SizedBox(height: 32.0)).addToEnd(
                                                                              const SizedBox(height: 24.0)),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height:
                                                                      28.0)),
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              flex: 2,
                                                              child: Container(
                                                                width: 100.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: const [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          12.0,
                                                                      color: Color(
                                                                          0x14000000),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        0.0,
                                                                      ),
                                                                      spreadRadius:
                                                                          2.0,
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              20.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            'Connections',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                          Builder(
                                                                            builder: (context) =>
                                                                                InkWell(
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
                                                                                  targetAnchor: const AlignmentDirectional(-1.0, 6.0).resolve(Directionality.of(context)),
                                                                                  followerAnchor: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                  builder: (dialogContext) {
                                                                                    return Material(
                                                                                      color: Colors.transparent,
                                                                                      child: WebViewAware(
                                                                                        child: GestureDetector(
                                                                                          onTap: () {
                                                                                            FocusScope.of(dialogContext).unfocus();
                                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                                          },
                                                                                          child: const ProfileActionWidget(),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                FFIcons.kdotsVertical,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.connectionsCardModel1,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                ConnectionsCardWidget(
                                                                              avatar: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/mteufgo4w1e1/2.png',
                                                                              name: 'Cecilia Payne',
                                                                              description: '45 Connections',
                                                                              icon: Icon(
                                                                                FFIcons.kuserCheck,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 20.0,
                                                                              ),
                                                                              bg: const Color(0x337367F0),
                                                                            ),
                                                                          ),
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.connectionsCardModel2,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                ConnectionsCardWidget(
                                                                              avatar: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/iaaszpz5jz7j/3.png',
                                                                              name: 'Curtis Fletcher',
                                                                              description: '1.32k Connections',
                                                                              icon: const Icon(
                                                                                FFIcons.kuserX,
                                                                                color: Colors.white,
                                                                                size: 20.0,
                                                                              ),
                                                                              bg: FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.connectionsCardModel3,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                ConnectionsCardWidget(
                                                                              avatar: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/l893u9yxsc4v/10.png',
                                                                              name: 'Alice Stone',
                                                                              description: '125 Connections',
                                                                              icon: const Icon(
                                                                                FFIcons.kuserX,
                                                                                color: Colors.white,
                                                                                size: 20.0,
                                                                              ),
                                                                              bg: FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.connectionsCardModel4,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                ConnectionsCardWidget(
                                                                              avatar: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                                                                              name: 'Darrell Barnes',
                                                                              description: '456 Connections',
                                                                              icon: Icon(
                                                                                FFIcons.kuserCheck,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 20.0,
                                                                              ),
                                                                              bg: const Color(0x337367F0),
                                                                            ),
                                                                          ),
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.connectionsCardModel5,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                ConnectionsCardWidget(
                                                                              avatar: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/tswoevfrr7vw/12.png',
                                                                              name: 'Eugenia Moore',
                                                                              description: '1.2k Connections',
                                                                              icon: Icon(
                                                                                FFIcons.kuserCheck,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 20.0,
                                                                              ),
                                                                              bg: const Color(0x337367F0),
                                                                            ),
                                                                          ),
                                                                        ].divide(const SizedBox(height: 18.0)),
                                                                      ),
                                                                      FFButtonWidget(
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'Button pressed ...');
                                                                        },
                                                                        text:
                                                                            'View all connections',
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              30.0,
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              24.0,
                                                                              0.0,
                                                                              24.0,
                                                                              0.0),
                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              Colors.transparent,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: 'Public Sans',
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          elevation:
                                                                              0.0,
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                            width:
                                                                                0.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            20.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 2,
                                                              child: Container(
                                                                width: 100.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  boxShadow: const [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          12.0,
                                                                      color: Color(
                                                                          0x14000000),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        0.0,
                                                                      ),
                                                                      spreadRadius:
                                                                          2.0,
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              20.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            'Connections',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                          Builder(
                                                                            builder: (context) =>
                                                                                InkWell(
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
                                                                                  targetAnchor: const AlignmentDirectional(-1.0, 6.0).resolve(Directionality.of(context)),
                                                                                  followerAnchor: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                  builder: (dialogContext) {
                                                                                    return Material(
                                                                                      color: Colors.transparent,
                                                                                      child: WebViewAware(
                                                                                        child: GestureDetector(
                                                                                          onTap: () {
                                                                                            FocusScope.of(dialogContext).unfocus();
                                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                                          },
                                                                                          child: const ProfileActionWidget(),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: Icon(
                                                                                FFIcons.kdotsVertical,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.teamsCardModel1,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                TeamsCardWidget(
                                                                              avatar: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/nj1cbx3q2nne/react-label.png',
                                                                              name: 'React Developers',
                                                                              description: '72 Members',
                                                                              status: 'Developer',
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              bg: const Color(0x33EA5455),
                                                                            ),
                                                                          ),
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.teamsCardModel2,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                TeamsCardWidget(
                                                                              avatar: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/axj0t7axskfl/support-label.png',
                                                                              name: 'Support Team',
                                                                              description: '122 Members',
                                                                              status: 'Support',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              bg: const Color(0x347367F0),
                                                                            ),
                                                                          ),
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.teamsCardModel3,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                TeamsCardWidget(
                                                                              avatar: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/7gczhqifodwe/figma-label.png',
                                                                              name: 'UI Designers',
                                                                              description: '7 Members',
                                                                              status: 'Designer',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              bg: const Color(0x3400CFE8),
                                                                            ),
                                                                          ),
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.teamsCardModel4,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                TeamsCardWidget(
                                                                              avatar: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/yc4zc8913ekc/vue-label.png',
                                                                              name: 'Vue.js Developers',
                                                                              description: '289 Members',
                                                                              status: 'Developer',
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              bg: const Color(0x33EA5455),
                                                                            ),
                                                                          ),
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.teamsCardModel5,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                TeamsCardWidget(
                                                                              avatar: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/bgg3waiqnlxo/twitter-label.png',
                                                                              name: 'Digital Marketing',
                                                                              description: '24 Members',
                                                                              status: 'Marketing',
                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                              bg: const Color(0x34A8AAAE),
                                                                            ),
                                                                          ),
                                                                        ].divide(const SizedBox(height: 18.0)),
                                                                      ),
                                                                      FFButtonWidget(
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'Button pressed ...');
                                                                        },
                                                                        text:
                                                                            'View all teams',
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              30.0,
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              24.0,
                                                                              0.0,
                                                                              24.0,
                                                                              0.0),
                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              Colors.transparent,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: 'Public Sans',
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          elevation:
                                                                              0.0,
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                            width:
                                                                                0.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            20.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              width: 28.0)),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      34.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                flex: 2,
                                                                child:
                                                                    Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            12.0,
                                                                        color: Color(
                                                                            0x14000000),
                                                                        offset:
                                                                            Offset(
                                                                          0.0,
                                                                          0.0,
                                                                        ),
                                                                        spreadRadius:
                                                                            2.0,
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            20.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              20.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Text(
                                                                                  'Projects',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Public Sans',
                                                                                        fontSize: 20.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Search:',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  MouseRegion(
                                                                                    opaque: false,
                                                                                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                    onEnter: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered5 = true);
                                                                                    }),
                                                                                    onExit: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered5 = false);
                                                                                    }),
                                                                                    child: SizedBox(
                                                                                      width: 250.0,
                                                                                      child: TextFormField(
                                                                                        controller: _model.textController,
                                                                                        focusNode: _model.textFieldFocusNode,
                                                                                        autofocus: false,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          isDense: true,
                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Public Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Public Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          enabledBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: valueOrDefault<Color>(
                                                                                                _model.mouseRegionHovered5 ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
                                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                                              ),
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          errorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          focusedErrorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          contentPadding: const EdgeInsets.all(16.0),
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        validator: _model.textControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 14.0)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Divider(
                                                                                  height: 1.0,
                                                                                  thickness: 1.0,
                                                                                  color: FlutterFlowTheme.of(context).lineColor,
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(14.0, 4.0, 20.0, 4.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Theme(
                                                                                        data: ThemeData(
                                                                                          checkboxTheme: CheckboxThemeData(
                                                                                            visualDensity: VisualDensity.compact,
                                                                                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(4.0),
                                                                                            ),
                                                                                          ),
                                                                                          unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                        ),
                                                                                        child: Checkbox(
                                                                                          value: _model.checkboxValue1 ??= false,
                                                                                          onChanged: (newValue) async {
                                                                                            safeSetState(() => _model.checkboxValue1 = newValue!);
                                                                                          },
                                                                                          side: BorderSide(
                                                                                            width: 2,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          ),
                                                                                          activeColor: FlutterFlowTheme.of(context).primary,
                                                                                          checkColor: Colors.white,
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        flex: 5,
                                                                                        child: wrapWithModel(
                                                                                          model: _model.listHeaderModel1,
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: const ListHeaderWidget(
                                                                                            title: 'NAME',
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        flex: 2,
                                                                                        child: wrapWithModel(
                                                                                          model: _model.listHeaderModel2,
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: const ListHeaderWidget(
                                                                                            title: 'LEADER',
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        flex: 3,
                                                                                        child: wrapWithModel(
                                                                                          model: _model.listHeader2Model1,
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: const ListHeader2Widget(
                                                                                            title: 'TEAM',
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        flex: 5,
                                                                                        child: wrapWithModel(
                                                                                          model: _model.listHeaderModel3,
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: const ListHeaderWidget(
                                                                                            title: 'STATUS',
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        flex: 2,
                                                                                        child: wrapWithModel(
                                                                                          model: _model.listHeader2Model2,
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: const ListHeader2Widget(
                                                                                            title: 'ACTIONS',
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ].divide(const SizedBox(width: 24.0)),
                                                                                  ),
                                                                                ),
                                                                                Divider(
                                                                                  height: 1.0,
                                                                                  thickness: 1.0,
                                                                                  color: FlutterFlowTheme.of(context).lineColor,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 20.0, 10.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Theme(
                                                                                            data: ThemeData(
                                                                                              checkboxTheme: CheckboxThemeData(
                                                                                                visualDensity: VisualDensity.compact,
                                                                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                shape: RoundedRectangleBorder(
                                                                                                  borderRadius: BorderRadius.circular(4.0),
                                                                                                ),
                                                                                              ),
                                                                                              unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            ),
                                                                                            child: Checkbox(
                                                                                              value: _model.checkboxValue2 ??= false,
                                                                                              onChanged: (newValue) async {
                                                                                                safeSetState(() => _model.checkboxValue2 = newValue!);
                                                                                              },
                                                                                              side: BorderSide(
                                                                                                width: 2,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              ),
                                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                                              checkColor: Colors.white,
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 190.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 36.0,
                                                                                                    height: 36.0,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: const BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwZkZRsSxc_qZhPHcBMbHfJQLK3a81LXyPltqgT8DJzQPsi8id',
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Website SEO',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                              fontSize: 15.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Text(
                                                                                                        '10 May 2021',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 14.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ].divide(const SizedBox(height: 4.0)),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    'Eileen',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 3,
                                                                                            child: Container(
                                                                                              width: 110.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Stack(
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        width: 32.0,
                                                                                                        height: 32.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          shape: BoxShape.circle,
                                                                                                          border: Border.all(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                          decoration: const BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                          ),
                                                                                                          child: Image.network(
                                                                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/l893u9yxsc4v/10.png',
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      MouseRegion(
                                                                                                        opaque: false,
                                                                                                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                                        onEnter: ((event) async {
                                                                                                          safeSetState(() => _model.mouseRegionHovered6 = true);
                                                                                                        }),
                                                                                                        onExit: ((event) async {
                                                                                                          safeSetState(() => _model.mouseRegionHovered6 = false);
                                                                                                        }),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                                                              20.0,
                                                                                                              0.0,
                                                                                                              0.0,
                                                                                                              valueOrDefault<double>(
                                                                                                                _model.mouseRegionHovered6 ? 12.0 : 0.0,
                                                                                                                0.0,
                                                                                                              )),
                                                                                                          child: Material(
                                                                                                            color: Colors.transparent,
                                                                                                            elevation: valueOrDefault<double>(
                                                                                                              _model.mouseRegionHovered6 ? 3.0 : 0.0,
                                                                                                              0.0,
                                                                                                            ),
                                                                                                            shape: const CircleBorder(),
                                                                                                            child: Container(
                                                                                                              width: 32.0,
                                                                                                              height: 32.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                shape: BoxShape.circle,
                                                                                                                border: Border.all(
                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  width: 2.0,
                                                                                                                ),
                                                                                                              ),
                                                                                                              child: Container(
                                                                                                                width: 36.0,
                                                                                                                height: 36.0,
                                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                                decoration: const BoxDecoration(
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                                child: Image.network(
                                                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/iaaszpz5jz7j/3.png',
                                                                                                                  fit: BoxFit.cover,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          child: Container(
                                                                                                            width: 36.0,
                                                                                                            height: 36.0,
                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                            decoration: const BoxDecoration(
                                                                                                              shape: BoxShape.circle,
                                                                                                            ),
                                                                                                            child: Image.network(
                                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/mteufgo4w1e1/2.png',
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          child: Container(
                                                                                                            width: 36.0,
                                                                                                            height: 36.0,
                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                            decoration: const BoxDecoration(
                                                                                                              shape: BoxShape.circle,
                                                                                                            ),
                                                                                                            child: Image.network(
                                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/7ckx3b9ny8hc/8.png',
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              constraints: const BoxConstraints(
                                                                                                maxWidth: 300.0,
                                                                                              ),
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: LinearPercentIndicator(
                                                                                                      percent: 0.38,
                                                                                                      lineHeight: 8.0,
                                                                                                      animation: true,
                                                                                                      animateFromLastPercent: true,
                                                                                                      progressColor: FlutterFlowTheme.of(context).primary,
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                      barRadius: const Radius.circular(50.0),
                                                                                                      padding: EdgeInsets.zero,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    '38%',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 16.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 70.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Builder(
                                                                                                    builder: (context) => InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        showAlignedDialog(
                                                                                                          barrierColor: const Color(0x34000000),
                                                                                                          context: context,
                                                                                                          isGlobal: false,
                                                                                                          avoidOverflow: false,
                                                                                                          targetAnchor: const AlignmentDirectional(-1.0, 6.0).resolve(Directionality.of(context)),
                                                                                                          followerAnchor: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                          builder: (dialogContext) {
                                                                                                            return Material(
                                                                                                              color: Colors.transparent,
                                                                                                              child: WebViewAware(
                                                                                                                child: GestureDetector(
                                                                                                                  onTap: () {
                                                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                  },
                                                                                                                  child: const ProjectActionWidget(),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        );
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        FFIcons.kdotsVertical,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 22.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 24.0)),
                                                                                      ),
                                                                                    ),
                                                                                    Divider(
                                                                                      height: 1.0,
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).lineColor,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 20.0, 10.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Theme(
                                                                                            data: ThemeData(
                                                                                              checkboxTheme: CheckboxThemeData(
                                                                                                visualDensity: VisualDensity.compact,
                                                                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                shape: RoundedRectangleBorder(
                                                                                                  borderRadius: BorderRadius.circular(4.0),
                                                                                                ),
                                                                                              ),
                                                                                              unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            ),
                                                                                            child: Checkbox(
                                                                                              value: _model.checkboxValue3 ??= false,
                                                                                              onChanged: (newValue) async {
                                                                                                safeSetState(() => _model.checkboxValue3 = newValue!);
                                                                                              },
                                                                                              side: BorderSide(
                                                                                                width: 2,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              ),
                                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                                              checkColor: Colors.white,
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 190.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 36.0,
                                                                                                    height: 36.0,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: const BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/06mt7l7nx9as/social-label.png',
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Social Banners',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                              fontSize: 15.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Text(
                                                                                                        '03 Jan 2021',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 14.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ].divide(const SizedBox(height: 4.0)),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    'Owen',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 3,
                                                                                            child: Container(
                                                                                              width: 110.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Stack(
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        width: 32.0,
                                                                                                        height: 32.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          shape: BoxShape.circle,
                                                                                                          border: Border.all(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                          decoration: const BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                          ),
                                                                                                          child: Image.network(
                                                                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/zl0fmg8vmvvf/5.png',
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                        child: MouseRegion(
                                                                                                          opaque: false,
                                                                                                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                                          onEnter: ((event) async {
                                                                                                            safeSetState(() => _model.mouseRegionHovered7 = true);
                                                                                                          }),
                                                                                                          onExit: ((event) async {
                                                                                                            safeSetState(() => _model.mouseRegionHovered7 = false);
                                                                                                          }),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                                                0.0,
                                                                                                                0.0,
                                                                                                                0.0,
                                                                                                                valueOrDefault<double>(
                                                                                                                  _model.mouseRegionHovered7 ? 12.0 : 0.0,
                                                                                                                  0.0,
                                                                                                                )),
                                                                                                            child: Material(
                                                                                                              color: Colors.transparent,
                                                                                                              elevation: valueOrDefault<double>(
                                                                                                                _model.mouseRegionHovered7 ? 3.0 : 0.0,
                                                                                                                0.0,
                                                                                                              ),
                                                                                                              shape: const CircleBorder(),
                                                                                                              child: Container(
                                                                                                                width: 32.0,
                                                                                                                height: 32.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  shape: BoxShape.circle,
                                                                                                                  border: Border.all(
                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                    width: 2.0,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Container(
                                                                                                                  width: 36.0,
                                                                                                                  height: 36.0,
                                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                                  decoration: const BoxDecoration(
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: Image.network(
                                                                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/jkj07rl56yax/4.png',
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              constraints: const BoxConstraints(
                                                                                                maxWidth: 300.0,
                                                                                              ),
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: LinearPercentIndicator(
                                                                                                      percent: 0.45,
                                                                                                      lineHeight: 8.0,
                                                                                                      animation: true,
                                                                                                      animateFromLastPercent: true,
                                                                                                      progressColor: FlutterFlowTheme.of(context).primary,
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                      barRadius: const Radius.circular(50.0),
                                                                                                      padding: EdgeInsets.zero,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    '45%',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 16.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 70.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Builder(
                                                                                                    builder: (context) => InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        showAlignedDialog(
                                                                                                          barrierColor: const Color(0x34000000),
                                                                                                          context: context,
                                                                                                          isGlobal: false,
                                                                                                          avoidOverflow: false,
                                                                                                          targetAnchor: const AlignmentDirectional(-1.0, 6.0).resolve(Directionality.of(context)),
                                                                                                          followerAnchor: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                          builder: (dialogContext) {
                                                                                                            return Material(
                                                                                                              color: Colors.transparent,
                                                                                                              child: WebViewAware(
                                                                                                                child: GestureDetector(
                                                                                                                  onTap: () {
                                                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                  },
                                                                                                                  child: const ProjectActionWidget(),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        );
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        FFIcons.kdotsVertical,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 22.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 24.0)),
                                                                                      ),
                                                                                    ),
                                                                                    Divider(
                                                                                      height: 1.0,
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).lineColor,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 20.0, 10.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Theme(
                                                                                            data: ThemeData(
                                                                                              checkboxTheme: CheckboxThemeData(
                                                                                                visualDensity: VisualDensity.compact,
                                                                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                shape: RoundedRectangleBorder(
                                                                                                  borderRadius: BorderRadius.circular(4.0),
                                                                                                ),
                                                                                              ),
                                                                                              unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            ),
                                                                                            child: Checkbox(
                                                                                              value: _model.checkboxValue4 ??= false,
                                                                                              onChanged: (newValue) async {
                                                                                                safeSetState(() => _model.checkboxValue4 = newValue!);
                                                                                              },
                                                                                              side: BorderSide(
                                                                                                width: 2,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              ),
                                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                                              checkColor: Colors.white,
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 190.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 36.0,
                                                                                                    height: 36.0,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: const BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/k5g9vhxgg8cr/sketch-label.png',
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Logo Designs',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                              fontSize: 15.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Text(
                                                                                                        '12 Aug 2021',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 14.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ].divide(const SizedBox(height: 4.0)),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    'Keith',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 3,
                                                                                            child: Container(
                                                                                              width: 110.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Stack(
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        width: 32.0,
                                                                                                        height: 32.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          shape: BoxShape.circle,
                                                                                                          border: Border.all(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                          decoration: const BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                          ),
                                                                                                          child: Image.network(
                                                                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/l893u9yxsc4v/10.png',
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      MouseRegion(
                                                                                                        opaque: false,
                                                                                                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                                        onEnter: ((event) async {
                                                                                                          safeSetState(() => _model.mouseRegionHovered8 = true);
                                                                                                        }),
                                                                                                        onExit: ((event) async {
                                                                                                          safeSetState(() => _model.mouseRegionHovered8 = false);
                                                                                                        }),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                                                              20.0,
                                                                                                              0.0,
                                                                                                              0.0,
                                                                                                              valueOrDefault<double>(
                                                                                                                _model.mouseRegionHovered8 ? 12.0 : 0.0,
                                                                                                                0.0,
                                                                                                              )),
                                                                                                          child: Material(
                                                                                                            color: Colors.transparent,
                                                                                                            elevation: valueOrDefault<double>(
                                                                                                              _model.mouseRegionHovered8 ? 3.0 : 0.0,
                                                                                                              0.0,
                                                                                                            ),
                                                                                                            shape: const CircleBorder(),
                                                                                                            child: Container(
                                                                                                              width: 32.0,
                                                                                                              height: 32.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                shape: BoxShape.circle,
                                                                                                                border: Border.all(
                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  width: 2.0,
                                                                                                                ),
                                                                                                              ),
                                                                                                              child: Container(
                                                                                                                width: 36.0,
                                                                                                                height: 36.0,
                                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                                decoration: const BoxDecoration(
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                                child: Image.network(
                                                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/11g8cygwk8lk/9.png',
                                                                                                                  fit: BoxFit.cover,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          child: Container(
                                                                                                            width: 36.0,
                                                                                                            height: 36.0,
                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                            decoration: const BoxDecoration(
                                                                                                              shape: BoxShape.circle,
                                                                                                            ),
                                                                                                            child: Image.network(
                                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/mteufgo4w1e1/2.png',
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Align(
                                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Padding(
                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                                                                                                          child: Container(
                                                                                                            width: 32.0,
                                                                                                            height: 32.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              shape: BoxShape.circle,
                                                                                                              border: Border.all(
                                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                width: 2.0,
                                                                                                              ),
                                                                                                            ),
                                                                                                            child: Container(
                                                                                                              width: 36.0,
                                                                                                              height: 36.0,
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              decoration: const BoxDecoration(
                                                                                                                shape: BoxShape.circle,
                                                                                                              ),
                                                                                                              child: Image.network(
                                                                                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/tswoevfrr7vw/12.png',
                                                                                                                fit: BoxFit.cover,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              constraints: const BoxConstraints(
                                                                                                maxWidth: 300.0,
                                                                                              ),
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: LinearPercentIndicator(
                                                                                                      percent: 0.92,
                                                                                                      lineHeight: 8.0,
                                                                                                      animation: true,
                                                                                                      animateFromLastPercent: true,
                                                                                                      progressColor: FlutterFlowTheme.of(context).primary,
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                      barRadius: const Radius.circular(50.0),
                                                                                                      padding: EdgeInsets.zero,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    '92%',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 16.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 70.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Builder(
                                                                                                    builder: (context) => InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        showAlignedDialog(
                                                                                                          barrierColor: const Color(0x34000000),
                                                                                                          context: context,
                                                                                                          isGlobal: false,
                                                                                                          avoidOverflow: false,
                                                                                                          targetAnchor: const AlignmentDirectional(-1.0, 6.0).resolve(Directionality.of(context)),
                                                                                                          followerAnchor: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                          builder: (dialogContext) {
                                                                                                            return Material(
                                                                                                              color: Colors.transparent,
                                                                                                              child: WebViewAware(
                                                                                                                child: GestureDetector(
                                                                                                                  onTap: () {
                                                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                  },
                                                                                                                  child: const ProjectActionWidget(),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        );
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        FFIcons.kdotsVertical,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 22.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 24.0)),
                                                                                      ),
                                                                                    ),
                                                                                    Divider(
                                                                                      height: 1.0,
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).lineColor,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 20.0, 10.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Theme(
                                                                                            data: ThemeData(
                                                                                              checkboxTheme: CheckboxThemeData(
                                                                                                visualDensity: VisualDensity.compact,
                                                                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                shape: RoundedRectangleBorder(
                                                                                                  borderRadius: BorderRadius.circular(4.0),
                                                                                                ),
                                                                                              ),
                                                                                              unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            ),
                                                                                            child: Checkbox(
                                                                                              value: _model.checkboxValue5 ??= false,
                                                                                              onChanged: (newValue) async {
                                                                                                safeSetState(() => _model.checkboxValue5 = newValue!);
                                                                                              },
                                                                                              side: BorderSide(
                                                                                                width: 2,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              ),
                                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                                              checkColor: Colors.white,
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 190.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 36.0,
                                                                                                    height: 36.0,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: const BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/k5g9vhxgg8cr/sketch-label.png',
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'IOS App Design',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                              fontSize: 15.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Text(
                                                                                                        '19 Apr 2021',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 14.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ].divide(const SizedBox(height: 4.0)),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    'Merline',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 3,
                                                                                            child: Container(
                                                                                              width: 110.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Stack(
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        width: 32.0,
                                                                                                        height: 32.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          shape: BoxShape.circle,
                                                                                                          border: Border.all(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                          decoration: const BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                          ),
                                                                                                          child: Image.network(
                                                                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/l893u9yxsc4v/10.png',
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      MouseRegion(
                                                                                                        opaque: false,
                                                                                                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                                        onEnter: ((event) async {
                                                                                                          safeSetState(() => _model.mouseRegionHovered9 = true);
                                                                                                        }),
                                                                                                        onExit: ((event) async {
                                                                                                          safeSetState(() => _model.mouseRegionHovered9 = false);
                                                                                                        }),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                                                              20.0,
                                                                                                              0.0,
                                                                                                              0.0,
                                                                                                              valueOrDefault<double>(
                                                                                                                _model.mouseRegionHovered9 ? 12.0 : 0.0,
                                                                                                                0.0,
                                                                                                              )),
                                                                                                          child: Material(
                                                                                                            color: Colors.transparent,
                                                                                                            elevation: valueOrDefault<double>(
                                                                                                              _model.mouseRegionHovered9 ? 3.0 : 0.0,
                                                                                                              0.0,
                                                                                                            ),
                                                                                                            shape: const CircleBorder(),
                                                                                                            child: Container(
                                                                                                              width: 32.0,
                                                                                                              height: 32.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                shape: BoxShape.circle,
                                                                                                                border: Border.all(
                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  width: 2.0,
                                                                                                                ),
                                                                                                              ),
                                                                                                              child: Container(
                                                                                                                width: 36.0,
                                                                                                                height: 36.0,
                                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                                decoration: const BoxDecoration(
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                                child: Image.network(
                                                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                                                                                  fit: BoxFit.cover,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          child: Container(
                                                                                                            width: 36.0,
                                                                                                            height: 36.0,
                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                            decoration: const BoxDecoration(
                                                                                                              shape: BoxShape.circle,
                                                                                                            ),
                                                                                                            child: Image.network(
                                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/9xxbzkk61vxj/13.png',
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          child: Container(
                                                                                                            width: 36.0,
                                                                                                            height: 36.0,
                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                            decoration: const BoxDecoration(
                                                                                                              shape: BoxShape.circle,
                                                                                                            ),
                                                                                                            child: Image.network(
                                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              constraints: const BoxConstraints(
                                                                                                maxWidth: 300.0,
                                                                                              ),
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: LinearPercentIndicator(
                                                                                                      percent: 0.56,
                                                                                                      lineHeight: 8.0,
                                                                                                      animation: true,
                                                                                                      animateFromLastPercent: true,
                                                                                                      progressColor: FlutterFlowTheme.of(context).primary,
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                      barRadius: const Radius.circular(50.0),
                                                                                                      padding: EdgeInsets.zero,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    '\n56%',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 16.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 70.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Icon(
                                                                                                    FFIcons.kdotsVertical,
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    size: 22.0,
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 24.0)),
                                                                                      ),
                                                                                    ),
                                                                                    Divider(
                                                                                      height: 1.0,
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).lineColor,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 20.0, 10.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Theme(
                                                                                            data: ThemeData(
                                                                                              checkboxTheme: CheckboxThemeData(
                                                                                                visualDensity: VisualDensity.compact,
                                                                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                shape: RoundedRectangleBorder(
                                                                                                  borderRadius: BorderRadius.circular(4.0),
                                                                                                ),
                                                                                              ),
                                                                                              unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            ),
                                                                                            child: Checkbox(
                                                                                              value: _model.checkboxValue6 ??= false,
                                                                                              onChanged: (newValue) async {
                                                                                                safeSetState(() => _model.checkboxValue6 = newValue!);
                                                                                              },
                                                                                              side: BorderSide(
                                                                                                width: 2,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              ),
                                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                                              checkColor: Colors.white,
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 190.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 36.0,
                                                                                                    height: 36.0,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: const BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/7gczhqifodwe/figma-label.png',
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Figma Dashboards',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                              fontSize: 15.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Text(
                                                                                                        '08 Apr 2021',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 14.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ].divide(const SizedBox(height: 4.0)),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    'Harmonia',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 3,
                                                                                            child: Container(
                                                                                              width: 110.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Stack(
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        width: 32.0,
                                                                                                        height: 32.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          shape: BoxShape.circle,
                                                                                                          border: Border.all(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                          decoration: const BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                          ),
                                                                                                          child: Image.network(
                                                                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/tswoevfrr7vw/12.png',
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                        child: MouseRegion(
                                                                                                          opaque: false,
                                                                                                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                                          onEnter: ((event) async {
                                                                                                            safeSetState(() => _model.mouseRegionHovered10 = true);
                                                                                                          }),
                                                                                                          onExit: ((event) async {
                                                                                                            safeSetState(() => _model.mouseRegionHovered10 = false);
                                                                                                          }),
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                                                0.0,
                                                                                                                0.0,
                                                                                                                0.0,
                                                                                                                valueOrDefault<double>(
                                                                                                                  _model.mouseRegionHovered10 ? 12.0 : 0.0,
                                                                                                                  0.0,
                                                                                                                )),
                                                                                                            child: Material(
                                                                                                              color: Colors.transparent,
                                                                                                              elevation: valueOrDefault<double>(
                                                                                                                _model.mouseRegionHovered10 ? 3.0 : 0.0,
                                                                                                                0.0,
                                                                                                              ),
                                                                                                              shape: const CircleBorder(),
                                                                                                              child: Container(
                                                                                                                width: 32.0,
                                                                                                                height: 32.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  shape: BoxShape.circle,
                                                                                                                  border: Border.all(
                                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                    width: 2.0,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Container(
                                                                                                                  width: 36.0,
                                                                                                                  height: 36.0,
                                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                                  decoration: const BoxDecoration(
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: Image.network(
                                                                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/x4gkpaxl5mr7/1.png',
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          child: Container(
                                                                                                            width: 36.0,
                                                                                                            height: 36.0,
                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                            decoration: const BoxDecoration(
                                                                                                              shape: BoxShape.circle,
                                                                                                            ),
                                                                                                            child: Image.network(
                                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/jkj07rl56yax/4.png',
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              constraints: const BoxConstraints(
                                                                                                maxWidth: 300.0,
                                                                                              ),
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: LinearPercentIndicator(
                                                                                                      percent: 0.25,
                                                                                                      lineHeight: 8.0,
                                                                                                      animation: true,
                                                                                                      animateFromLastPercent: true,
                                                                                                      progressColor: FlutterFlowTheme.of(context).primary,
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                      barRadius: const Radius.circular(50.0),
                                                                                                      padding: EdgeInsets.zero,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    '25%',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 16.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 70.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Builder(
                                                                                                    builder: (context) => InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        showAlignedDialog(
                                                                                                          barrierColor: const Color(0x34000000),
                                                                                                          context: context,
                                                                                                          isGlobal: false,
                                                                                                          avoidOverflow: false,
                                                                                                          targetAnchor: const AlignmentDirectional(-1.0, 6.0).resolve(Directionality.of(context)),
                                                                                                          followerAnchor: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                          builder: (dialogContext) {
                                                                                                            return Material(
                                                                                                              color: Colors.transparent,
                                                                                                              child: WebViewAware(
                                                                                                                child: GestureDetector(
                                                                                                                  onTap: () {
                                                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                  },
                                                                                                                  child: const ProjectActionWidget(),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        );
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        FFIcons.kdotsVertical,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 22.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 24.0)),
                                                                                      ),
                                                                                    ),
                                                                                    Divider(
                                                                                      height: 1.0,
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).lineColor,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 20.0, 10.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Theme(
                                                                                            data: ThemeData(
                                                                                              checkboxTheme: CheckboxThemeData(
                                                                                                visualDensity: VisualDensity.compact,
                                                                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                shape: RoundedRectangleBorder(
                                                                                                  borderRadius: BorderRadius.circular(4.0),
                                                                                                ),
                                                                                              ),
                                                                                              unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            ),
                                                                                            child: Checkbox(
                                                                                              value: _model.checkboxValue7 ??= false,
                                                                                              onChanged: (newValue) async {
                                                                                                safeSetState(() => _model.checkboxValue7 = newValue!);
                                                                                              },
                                                                                              side: BorderSide(
                                                                                                width: 2,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              ),
                                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                                              checkColor: Colors.white,
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 190.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 36.0,
                                                                                                    height: 36.0,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: const BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/kcigtid7egyu/html-label.png',
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Crypto Admin',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                              fontSize: 15.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Text(
                                                                                                        '29 Sept 2021',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 14.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ].divide(const SizedBox(height: 4.0)),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    '\tAllyson',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 3,
                                                                                            child: Container(
                                                                                              width: 110.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Stack(
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        width: 32.0,
                                                                                                        height: 32.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          shape: BoxShape.circle,
                                                                                                          border: Border.all(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                          decoration: const BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                          ),
                                                                                                          child: Image.network(
                                                                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/l893u9yxsc4v/10.png',
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      MouseRegion(
                                                                                                        opaque: false,
                                                                                                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                                        onEnter: ((event) async {
                                                                                                          safeSetState(() => _model.mouseRegionHovered11 = true);
                                                                                                        }),
                                                                                                        onExit: ((event) async {
                                                                                                          safeSetState(() => _model.mouseRegionHovered11 = false);
                                                                                                        }),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                                                              20.0,
                                                                                                              0.0,
                                                                                                              0.0,
                                                                                                              valueOrDefault<double>(
                                                                                                                _model.mouseRegionHovered11 ? 12.0 : 0.0,
                                                                                                                0.0,
                                                                                                              )),
                                                                                                          child: Material(
                                                                                                            color: Colors.transparent,
                                                                                                            elevation: valueOrDefault<double>(
                                                                                                              _model.mouseRegionHovered11 ? 3.0 : 0.0,
                                                                                                              0.0,
                                                                                                            ),
                                                                                                            shape: const CircleBorder(),
                                                                                                            child: Container(
                                                                                                              width: 32.0,
                                                                                                              height: 32.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                shape: BoxShape.circle,
                                                                                                                border: Border.all(
                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  width: 2.0,
                                                                                                                ),
                                                                                                              ),
                                                                                                              child: Container(
                                                                                                                width: 36.0,
                                                                                                                height: 36.0,
                                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                                decoration: const BoxDecoration(
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                                child: Image.network(
                                                                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/9xxbzkk61vxj/13.png',
                                                                                                                  fit: BoxFit.cover,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          child: Container(
                                                                                                            width: 36.0,
                                                                                                            height: 36.0,
                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                            decoration: const BoxDecoration(
                                                                                                              shape: BoxShape.circle,
                                                                                                            ),
                                                                                                            child: Image.network(
                                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/mteufgo4w1e1/2.png',
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          child: Container(
                                                                                                            width: 36.0,
                                                                                                            height: 36.0,
                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                            decoration: const BoxDecoration(
                                                                                                              shape: BoxShape.circle,
                                                                                                            ),
                                                                                                            child: Image.network(
                                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              constraints: const BoxConstraints(
                                                                                                maxWidth: 300.0,
                                                                                              ),
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: LinearPercentIndicator(
                                                                                                      percent: 0.36,
                                                                                                      lineHeight: 8.0,
                                                                                                      animation: true,
                                                                                                      animateFromLastPercent: true,
                                                                                                      progressColor: FlutterFlowTheme.of(context).primary,
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                      barRadius: const Radius.circular(50.0),
                                                                                                      padding: EdgeInsets.zero,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    '36%',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 16.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 70.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Builder(
                                                                                                    builder: (context) => InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        showAlignedDialog(
                                                                                                          barrierColor: const Color(0x34000000),
                                                                                                          context: context,
                                                                                                          isGlobal: false,
                                                                                                          avoidOverflow: false,
                                                                                                          targetAnchor: const AlignmentDirectional(-1.0, 6.0).resolve(Directionality.of(context)),
                                                                                                          followerAnchor: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                          builder: (dialogContext) {
                                                                                                            return Material(
                                                                                                              color: Colors.transparent,
                                                                                                              child: WebViewAware(
                                                                                                                child: GestureDetector(
                                                                                                                  onTap: () {
                                                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                  },
                                                                                                                  child: const ProjectActionWidget(),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        );
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        FFIcons.kdotsVertical,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 22.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 24.0)),
                                                                                      ),
                                                                                    ),
                                                                                    Divider(
                                                                                      height: 1.0,
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).lineColor,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 20.0, 10.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Theme(
                                                                                            data: ThemeData(
                                                                                              checkboxTheme: CheckboxThemeData(
                                                                                                visualDensity: VisualDensity.compact,
                                                                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                                shape: RoundedRectangleBorder(
                                                                                                  borderRadius: BorderRadius.circular(4.0),
                                                                                                ),
                                                                                              ),
                                                                                              unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                            ),
                                                                                            child: Checkbox(
                                                                                              value: _model.checkboxValue8 ??= false,
                                                                                              onChanged: (newValue) async {
                                                                                                safeSetState(() => _model.checkboxValue8 = newValue!);
                                                                                              },
                                                                                              side: BorderSide(
                                                                                                width: 2,
                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              ),
                                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                                              checkColor: Colors.white,
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 190.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 36.0,
                                                                                                    height: 36.0,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: const BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/nj1cbx3q2nne/react-label.png',
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        'Create Website',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                              fontSize: 15.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                            ),
                                                                                                      ),
                                                                                                      Text(
                                                                                                        '20 Mar 2021',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Public Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 14.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ].divide(const SizedBox(height: 4.0)),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    '\tGeorgie',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                          fontSize: 15.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 3,
                                                                                            child: Container(
                                                                                              width: 110.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Stack(
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        width: 32.0,
                                                                                                        height: 32.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          shape: BoxShape.circle,
                                                                                                          border: Border.all(
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            width: 2.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                          decoration: const BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                          ),
                                                                                                          child: Image.network(
                                                                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/l893u9yxsc4v/10.png',
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          child: Container(
                                                                                                            width: 36.0,
                                                                                                            height: 36.0,
                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                            decoration: const BoxDecoration(
                                                                                                              shape: BoxShape.circle,
                                                                                                            ),
                                                                                                            child: Image.network(
                                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/11g8cygwk8lk/9.png',
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          child: Container(
                                                                                                            width: 36.0,
                                                                                                            height: 36.0,
                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                            decoration: const BoxDecoration(
                                                                                                              shape: BoxShape.circle,
                                                                                                            ),
                                                                                                            child: Image.network(
                                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/mteufgo4w1e1/2.png',
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                                                                                                        child: Container(
                                                                                                          width: 32.0,
                                                                                                          height: 32.0,
                                                                                                          decoration: BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                            border: Border.all(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              width: 2.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          child: Container(
                                                                                                            width: 36.0,
                                                                                                            height: 36.0,
                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                            decoration: const BoxDecoration(
                                                                                                              shape: BoxShape.circle,
                                                                                                            ),
                                                                                                            child: Image.network(
                                                                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 5,
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              constraints: const BoxConstraints(
                                                                                                maxWidth: 300.0,
                                                                                              ),
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: LinearPercentIndicator(
                                                                                                      percent: 0.72,
                                                                                                      lineHeight: 8.0,
                                                                                                      animation: true,
                                                                                                      animateFromLastPercent: true,
                                                                                                      progressColor: FlutterFlowTheme.of(context).primary,
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                      barRadius: const Radius.circular(50.0),
                                                                                                      padding: EdgeInsets.zero,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    '72%',
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Public Sans',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                          fontSize: 16.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            flex: 2,
                                                                                            child: Container(
                                                                                              width: 70.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Builder(
                                                                                                    builder: (context) => InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        showAlignedDialog(
                                                                                                          barrierColor: const Color(0x34000000),
                                                                                                          context: context,
                                                                                                          isGlobal: false,
                                                                                                          avoidOverflow: false,
                                                                                                          targetAnchor: const AlignmentDirectional(-1.0, 6.0).resolve(Directionality.of(context)),
                                                                                                          followerAnchor: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                          builder: (dialogContext) {
                                                                                                            return Material(
                                                                                                              color: Colors.transparent,
                                                                                                              child: WebViewAware(
                                                                                                                child: GestureDetector(
                                                                                                                  onTap: () {
                                                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                                  },
                                                                                                                  child: const ProjectActionWidget(),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        );
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        FFIcons.kdotsVertical,
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        size: 22.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ].divide(const SizedBox(width: 24.0)),
                                                                                      ),
                                                                                    ),
                                                                                    Divider(
                                                                                      height: 1.0,
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).lineColor,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              0.0,
                                                                              20.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Text(
                                                                                  'Showing 1 to 7 of 10 entries',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Public Sans',
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  FFButtonWidget(
                                                                                    onPressed: () {
                                                                                      print('Button pressed ...');
                                                                                    },
                                                                                    text: 'Previous',
                                                                                    options: FFButtonOptions(
                                                                                      height: 44.0,
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).unselectBox,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: FlutterFlowTheme.of(context).unselectTitle,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                          ),
                                                                                      elevation: 0.0,
                                                                                      borderSide: const BorderSide(
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
                                                                                    text: '1',
                                                                                    options: FFButtonOptions(
                                                                                      width: 44.0,
                                                                                      height: 44.0,
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: FlutterFlowTheme.of(context).secondaryHeader,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                          ),
                                                                                      elevation: 0.0,
                                                                                      borderSide: const BorderSide(
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
                                                                                    text: '2',
                                                                                    options: FFButtonOptions(
                                                                                      width: 44.0,
                                                                                      height: 44.0,
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: const Color(0x347983BB),
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: FlutterFlowTheme.of(context).secondaryHeader,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                          ),
                                                                                      elevation: 0.0,
                                                                                      borderSide: const BorderSide(
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
                                                                                    text: 'Next',
                                                                                    options: FFButtonOptions(
                                                                                      height: 44.0,
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                      color: const Color(0x347983BB),
                                                                                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: FlutterFlowTheme.of(context).secondaryHeader,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                          ),
                                                                                      elevation: 0.0,
                                                                                      borderSide: const BorderSide(
                                                                                        color: Colors.transparent,
                                                                                        width: 0.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 4.0)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              height: 16.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 28.0)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 28.0)),
                                          ),
                                        );
                                      }
                                    },
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
