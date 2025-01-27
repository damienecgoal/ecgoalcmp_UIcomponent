import '/auth/base_auth_user_provider.dart';
import '/components/drawer/add_user/add_user_widget.dart';
import '/components/list/user_list_card/user_list_card_widget.dart';
import '/components/nodal/export_nodal/export_nodal_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/list_header/list_header_widget.dart';
import '/components_2/list_header2/list_header2_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/users_activity/users_activity_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'users_model.dart';
export 'users_model.dart';

class UsersWidget extends StatefulWidget {
  const UsersWidget({super.key});

  @override
  State<UsersWidget> createState() => _UsersWidgetState();
}

class _UsersWidgetState extends State<UsersWidget> {
  late UsersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsersModel());

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
                child: NavMenuWidget(),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
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
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.usersActivityModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: UsersActivityWidget(
                                            title: 'Session',
                                            count: '21,459',
                                            value: '(+29%)',
                                            valueColor:
                                                FlutterFlowTheme.of(context)
                                                    .success,
                                            description: 'Total Users',
                                            icon: Icon(
                                              FFIcons.kuser,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 24.0,
                                            ),
                                            bg: Color(0x347367F0),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.usersActivityModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: UsersActivityWidget(
                                            title: 'Paid Users',
                                            count: '4,567',
                                            value: '(+18%)',
                                            valueColor:
                                                FlutterFlowTheme.of(context)
                                                    .success,
                                            description: 'Last week analytics',
                                            icon: Icon(
                                              FFIcons.kuserPlus,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              size: 24.0,
                                            ),
                                            bg: Color(0x34EA5455),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.usersActivityModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: UsersActivityWidget(
                                            title: 'Active Users',
                                            count: '19,860',
                                            value: '(-14%)',
                                            valueColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                            description: 'Last week analytics',
                                            icon: Icon(
                                              FFIcons.kuserCheck,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                              size: 24.0,
                                            ),
                                            bg: Color(0x3328C76F),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: wrapWithModel(
                                          model: _model.usersActivityModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: UsersActivityWidget(
                                            title: 'Pending Users',
                                            count: '237',
                                            value: '(+42%)',
                                            valueColor:
                                                FlutterFlowTheme.of(context)
                                                    .success,
                                            description: 'Last week analytics',
                                            icon: Icon(
                                              FFIcons.kuserExclamation,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .warning,
                                              size: 24.0,
                                            ),
                                            bg: Color(0x34FF9F43),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 28.0)),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 34.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            width: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 20.0),
                                              child: Column(
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
                                                                    20.0,
                                                                    0.0,
                                                                    20.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Search Filter',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Public Sans',
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    20.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  MouseRegion(
                                                                opaque: false,
                                                                cursor: MouseCursor
                                                                        .defer ??
                                                                    MouseCursor
                                                                        .defer,
                                                                child:
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                  controller: _model
                                                                          .dropDownValueController1 ??=
                                                                      FormFieldController<
                                                                              String>(
                                                                          null),
                                                                  options: [
                                                                    'Admin',
                                                                    'Author',
                                                                    'Editor',
                                                                    'Maintainer',
                                                                    'Subscriber'
                                                                  ],
                                                                  onChanged: (val) =>
                                                                      safeSetState(() =>
                                                                          _model.dropDownValue1 =
                                                                              val),
                                                                  width: 300.0,
                                                                  height: 40.0,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Public Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintText:
                                                                      'Select Role',
                                                                  icon: Icon(
                                                                    FFIcons
                                                                        .kchevronDown,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryTitle,
                                                                    size: 24.0,
                                                                  ),
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  elevation:
                                                                      0.0,
                                                                  borderColor:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    _model.mouseRegionHovered1!
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .secondaryText
                                                                        : FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                  borderWidth:
                                                                      1.0,
                                                                  borderRadius:
                                                                      8.0,
                                                                  margin: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                  hidesUnderline:
                                                                      true,
                                                                  isOverButton:
                                                                      false,
                                                                  isSearchable:
                                                                      false,
                                                                  isMultiSelect:
                                                                      false,
                                                                ),
                                                                onEnter:
                                                                    ((event) async {
                                                                  safeSetState(() =>
                                                                      _model.mouseRegionHovered1 =
                                                                          true);
                                                                }),
                                                                onExit:
                                                                    ((event) async {
                                                                  safeSetState(() =>
                                                                      _model.mouseRegionHovered1 =
                                                                          false);
                                                                }),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child:
                                                                  MouseRegion(
                                                                opaque: false,
                                                                cursor: MouseCursor
                                                                        .defer ??
                                                                    MouseCursor
                                                                        .defer,
                                                                child:
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                  controller: _model
                                                                          .dropDownValueController2 ??=
                                                                      FormFieldController<
                                                                              String>(
                                                                          null),
                                                                  options: [
                                                                    'Select Plan',
                                                                    'Basic',
                                                                    'Company',
                                                                    'Enterprice',
                                                                    'Team'
                                                                  ],
                                                                  onChanged: (val) =>
                                                                      safeSetState(() =>
                                                                          _model.dropDownValue2 =
                                                                              val),
                                                                  width: 300.0,
                                                                  height: 40.0,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Public Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintText:
                                                                      'Select Plan',
                                                                  icon: Icon(
                                                                    FFIcons
                                                                        .kchevronDown,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryTitle,
                                                                    size: 24.0,
                                                                  ),
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  elevation:
                                                                      0.0,
                                                                  borderColor:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    _model.mouseRegionHovered2!
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .secondaryText
                                                                        : FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                  borderWidth:
                                                                      1.0,
                                                                  borderRadius:
                                                                      8.0,
                                                                  margin: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                  hidesUnderline:
                                                                      true,
                                                                  isOverButton:
                                                                      false,
                                                                  isSearchable:
                                                                      false,
                                                                  isMultiSelect:
                                                                      false,
                                                                ),
                                                                onEnter:
                                                                    ((event) async {
                                                                  safeSetState(() =>
                                                                      _model.mouseRegionHovered2 =
                                                                          true);
                                                                }),
                                                                onExit:
                                                                    ((event) async {
                                                                  safeSetState(() =>
                                                                      _model.mouseRegionHovered2 =
                                                                          false);
                                                                }),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child:
                                                                  MouseRegion(
                                                                opaque: false,
                                                                cursor: MouseCursor
                                                                        .defer ??
                                                                    MouseCursor
                                                                        .defer,
                                                                child:
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                  controller: _model
                                                                          .dropDownValueController3 ??=
                                                                      FormFieldController<
                                                                              String>(
                                                                          null),
                                                                  options: [
                                                                    'Select Status',
                                                                    'Pending',
                                                                    'Active',
                                                                    'Inactive'
                                                                  ],
                                                                  onChanged: (val) =>
                                                                      safeSetState(() =>
                                                                          _model.dropDownValue3 =
                                                                              val),
                                                                  width: 300.0,
                                                                  height: 40.0,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Public Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintText:
                                                                      'Select Status',
                                                                  icon: Icon(
                                                                    FFIcons
                                                                        .kchevronDown,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryTitle,
                                                                    size: 24.0,
                                                                  ),
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  elevation:
                                                                      0.0,
                                                                  borderColor:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    _model.mouseRegionHovered3!
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .secondaryText
                                                                        : FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                  borderWidth:
                                                                      1.0,
                                                                  borderRadius:
                                                                      8.0,
                                                                  margin: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                  hidesUnderline:
                                                                      true,
                                                                  isOverButton:
                                                                      false,
                                                                  isSearchable:
                                                                      false,
                                                                  isMultiSelect:
                                                                      false,
                                                                ),
                                                                onEnter:
                                                                    ((event) async {
                                                                  safeSetState(() =>
                                                                      _model.mouseRegionHovered3 =
                                                                          true);
                                                                }),
                                                                onExit:
                                                                    ((event) async {
                                                                  safeSetState(() =>
                                                                      _model.mouseRegionHovered3 =
                                                                          false);
                                                                }),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 24.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    12.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 1.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .lineColor,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    20.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              flex: 5,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          40.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                    controller: _model
                                                                        .dropDownValueController4 ??= FormFieldController<
                                                                            String>(
                                                                        null),
                                                                    options: [
                                                                      '10',
                                                                      '25',
                                                                      '50',
                                                                      '75',
                                                                      '100'
                                                                    ],
                                                                    onChanged: (val) =>
                                                                        safeSetState(() =>
                                                                            _model.dropDownValue4 =
                                                                                val),
                                                                    width: 80.0,
                                                                    height:
                                                                        40.0,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Public Sans',
                                                                          fontSize:
                                                                              15.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText:
                                                                        '10',
                                                                    icon: Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    elevation:
                                                                        6.0,
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                    borderWidth:
                                                                        1.0,
                                                                    borderRadius:
                                                                        8.0,
                                                                    margin: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                    hidesUnderline:
                                                                        true,
                                                                    isOverButton:
                                                                        false,
                                                                    isSearchable:
                                                                        false,
                                                                    isMultiSelect:
                                                                        false,
                                                                  ),
                                                                  Expanded(
                                                                    flex: 6,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children:
                                                                          [
                                                                        Container(
                                                                          width:
                                                                              200.0,
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.textController,
                                                                            focusNode:
                                                                                _model.textFieldFocusNode,
                                                                            autofocus:
                                                                                false,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              isDense: true,
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Public Sans',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              hintText: 'Search Invoice',
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Public Sans',
                                                                                    fontSize: 15.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).lineColor,
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
                                                                              contentPadding: EdgeInsets.all(14.0),
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  fontSize: 15.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            validator:
                                                                                _model.textControllerValidator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                        Builder(
                                                                          builder: (context) =>
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              showAlignedDialog(
                                                                                context: context,
                                                                                isGlobal: false,
                                                                                avoidOverflow: false,
                                                                                targetAnchor: AlignmentDirectional(0.0, 6.5).resolve(Directionality.of(context)),
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
                                                                                        child: Container(
                                                                                          height: 204.0,
                                                                                          width: 150.0,
                                                                                          child: ExportNodalWidget(),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                            text:
                                                                                'Export',
                                                                            icon:
                                                                                Icon(
                                                                              FFIcons.kscreenShare,
                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                              size: 20.0,
                                                                            ),
                                                                            options:
                                                                                FFButtonOptions(
                                                                              height: 40.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: Color(0x33A8AAAE),
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: 'Public Sans',
                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                    fontSize: 15.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderSide: BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 0.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Builder(
                                                                          builder: (context) =>
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              showDialog(
                                                                                barrierColor: Color(0x34000000),
                                                                                context: context,
                                                                                builder: (dialogContext) {
                                                                                  return Dialog(
                                                                                    elevation: 0,
                                                                                    insetPadding: EdgeInsets.zero,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    alignment: AlignmentDirectional(1.0, 0.0).resolve(Directionality.of(context)),
                                                                                    child: WebViewAware(
                                                                                      child: GestureDetector(
                                                                                        onTap: () {
                                                                                          FocusScope.of(dialogContext).unfocus();
                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                        },
                                                                                        child: AddUserWidget(),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                            text:
                                                                                'Add New User',
                                                                            icon:
                                                                                Icon(
                                                                              FFIcons.kplus,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 22.0,
                                                                            ),
                                                                            options:
                                                                                FFButtonOptions(
                                                                              height: 40.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: 'Public Sans',
                                                                                    color: Colors.white,
                                                                                    fontSize: 15.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                  ),
                                                                              elevation: 2.0,
                                                                              borderSide: BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 14.0)),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        14.0)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 20.0)),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
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
                                                                        8.0,
                                                                        20.0,
                                                                        8.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  flex: 8,
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .listHeaderModel1,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        ListHeaderWidget(
                                                                      title:
                                                                          'USER',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 3,
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .listHeaderModel2,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        ListHeaderWidget(
                                                                      title:
                                                                          'ROLE',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .listHeaderModel3,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        ListHeaderWidget(
                                                                      title:
                                                                          'PLAN',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 3,
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .listHeaderModel4,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        ListHeaderWidget(
                                                                      title:
                                                                          'BILLING',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .listHeaderModel5,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        ListHeaderWidget(
                                                                      title:
                                                                          'STATUS',
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .listHeader2Model,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        ListHeader2Widget(
                                                                      title:
                                                                          'ACTION',
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 24.0)),
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
                                                      wrapWithModel(
                                                        model: _model
                                                            .userListCardModel1,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            UserListCardWidget(
                                                          avatar:
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/mteufgo4w1e1/2.png',
                                                          name:
                                                              'Zsazsa McCleverty',
                                                          mail:
                                                              'zmcclevertye@soundcloud.com',
                                                          role: 'Maintainer',
                                                          roleIcon: Icon(
                                                            FFIcons.kchartPie2,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 24.0,
                                                          ),
                                                          roleBG:
                                                              Color(0x347367F0),
                                                          plan: 'Enterprise',
                                                          billing: 'Auto Debit',
                                                          status: '\tActive',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          bg: Color(0x3328C76F),
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .userListCardModel2,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            UserListCardWidget(
                                                          avatar:
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                                                          name: 'Yoko Pottie',
                                                          mail:
                                                              'ypottiec@privacy.gov.au',
                                                          role: 'Subscriber',
                                                          roleIcon: Icon(
                                                            FFIcons.kuser,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .warning,
                                                            size: 24.0,
                                                          ),
                                                          roleBG:
                                                              Color(0x34FF9F43),
                                                          plan: '\tBasic',
                                                          billing:
                                                              '\tAuto Debit',
                                                          status: 'Inactive',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          bg: Color(0x34A8AAAE),
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .userListCardModel3,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            UserListCardWidget(
                                                          avatar:
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                                                          name:
                                                              'Wesley Burland',
                                                          mail:
                                                              'wburlandj@uiuc.edu',
                                                          role: 'Editor',
                                                          roleIcon: Icon(
                                                            FFIcons.kedit,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            size: 24.0,
                                                          ),
                                                          roleBG:
                                                              Color(0x3300CFE8),
                                                          plan: 'Team',
                                                          billing: 'Auto Debit',
                                                          status: 'Inactive',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          bg: Color(0x34A8AAAE),
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .userListCardModel4,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            UserListCardWidget(
                                                          name:
                                                              'Vladamir Koschek',
                                                          mail:
                                                              'vkoschek17@abc.net.au',
                                                          role: 'Author',
                                                          roleIcon: Icon(
                                                            FFIcons
                                                                .kcircleCheck,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .success,
                                                            size: 24.0,
                                                          ),
                                                          roleBG:
                                                              Color(0x3428C76F),
                                                          plan: 'Team',
                                                          billing:
                                                              'Manual - Paypal',
                                                          status: '\tActive',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          bg: Color(0x3328C76F),
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .userListCardModel5,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            UserListCardWidget(
                                                          name: 'Tyne Widmore',
                                                          mail:
                                                              'twidmore12@bravesites.com',
                                                          role: 'Subscriber',
                                                          roleIcon: Icon(
                                                            FFIcons.kuser,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .warning,
                                                            size: 24.0,
                                                          ),
                                                          roleBG:
                                                              Color(0x33FF9F43),
                                                          plan: '\tTeam',
                                                          billing:
                                                              '\tManual - Cash',
                                                          status: 'Pending',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .warning,
                                                          bg: Color(0x34FF9F43),
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .userListCardModel6,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            UserListCardWidget(
                                                          name:
                                                              'Travus Bruntjen',
                                                          mail:
                                                              'tbruntjeni@sitemeter.com',
                                                          role: 'Admin',
                                                          roleIcon: Icon(
                                                            FFIcons
                                                                .kdeviceLaptop,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            size: 24.0,
                                                          ),
                                                          roleBG:
                                                              Color(0x33A8AAAE),
                                                          plan:
                                                              '\tEnterprise\t',
                                                          billing:
                                                              'Manual - Cash',
                                                          status: '\tActive',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          bg: Color(0x3328C76F),
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .userListCardModel7,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            UserListCardWidget(
                                                          avatar:
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/x4gkpaxl5mr7/1.png',
                                                          name: 'Stu Delamaine',
                                                          mail:
                                                              'sdelamainek@who.int',
                                                          role: 'Author',
                                                          roleIcon: Icon(
                                                            FFIcons
                                                                .kcircleCheck,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .success,
                                                            size: 24.0,
                                                          ),
                                                          roleBG:
                                                              Color(0x3428C76F),
                                                          plan: 'Basic',
                                                          billing:
                                                              '\tAuto Debit',
                                                          status: 'Pending',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .warning,
                                                          bg: Color(0x34FF9F43),
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .userListCardModel8,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            UserListCardWidget(
                                                          name:
                                                              'Saunder Offner',
                                                          mail:
                                                              'soffner19@mac.com',
                                                          role: 'Maintainer',
                                                          roleIcon: Icon(
                                                            FFIcons.kchartPie2,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 24.0,
                                                          ),
                                                          roleBG:
                                                              Color(0x347367F0),
                                                          plan: 'Enterprise',
                                                          billing: 'Auto Debit',
                                                          status: 'Pending',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .warning,
                                                          bg: Color(0x33FF9F43),
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .userListCardModel9,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            UserListCardWidget(
                                                          name:
                                                              'Stephen MacGilfoyle',
                                                          mail:
                                                              'smacgilfoyley@bigcartel.com',
                                                          role: 'Maintainer',
                                                          roleIcon: Icon(
                                                            FFIcons.kchartPie2,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 24.0,
                                                          ),
                                                          roleBG:
                                                              Color(0x347367F0),
                                                          plan: 'Company',
                                                          billing:
                                                              'Manual - Paypal',
                                                          status: 'Pending',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .warning,
                                                          bg: Color(0x34FF9F43),
                                                        ),
                                                      ),
                                                      wrapWithModel(
                                                        model: _model
                                                            .userListCardModel10,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            UserListCardWidget(
                                                          avatar:
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/11g8cygwk8lk/9.png',
                                                          name:
                                                              'Skip Hebblethwaite',
                                                          mail:
                                                              'shebblethwaite10@arizona.edu',
                                                          role: 'Admin',
                                                          roleIcon: Icon(
                                                            FFIcons
                                                                .kdeviceLaptop,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            size: 24.0,
                                                          ),
                                                          roleBG:
                                                              Color(0x33A8AAAE),
                                                          plan: '\tCompany',
                                                          billing:
                                                              'Manual - Cash',
                                                          status: 'Inactive',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          bg: Color(0x34A8AAAE),
                                                        ),
                                                      ),
                                                      ListView(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                          ),
                                                        ],
                                                      ),
                                                      ListView(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Stack(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            children: [
                                                              Text(
                                                                'Showing 1 to 10 of  50 entries',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Public Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    FFButtonWidget(
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'Button pressed ...');
                                                                      },
                                                                      text:
                                                                          'Previous',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        height:
                                                                            44.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            20.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .unselectBox,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Public Sans',
                                                                              color: FlutterFlowTheme.of(context).unselectTitle,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                        elevation:
                                                                            0.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              0.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children:
                                                                          [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () {
                                                                            print('Button pressed ...');
                                                                          },
                                                                          text:
                                                                              '1',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                44.0,
                                                                            height:
                                                                                44.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  color: FlutterFlowTheme.of(context).secondaryHeader,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 0.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () {
                                                                            print('Button pressed ...');
                                                                          },
                                                                          text:
                                                                              '2',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                44.0,
                                                                            height:
                                                                                44.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                Color(0x347983BB),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  color: FlutterFlowTheme.of(context).secondaryHeader,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 0.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () {
                                                                            print('Button pressed ...');
                                                                          },
                                                                          text:
                                                                              '3',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                44.0,
                                                                            height:
                                                                                44.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                Color(0x347983BB),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  color: FlutterFlowTheme.of(context).secondaryHeader,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 0.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () {
                                                                            print('Button pressed ...');
                                                                          },
                                                                          text:
                                                                              '4',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                44.0,
                                                                            height:
                                                                                44.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                Color(0x347983BB),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  color: FlutterFlowTheme.of(context).secondaryHeader,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 0.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () {
                                                                            print('Button pressed ...');
                                                                          },
                                                                          text:
                                                                              '5',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                44.0,
                                                                            height:
                                                                                44.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                Color(0x347983BB),
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  color: FlutterFlowTheme.of(context).secondaryHeader,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 0.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 4.0)),
                                                                    ),
                                                                    FFButtonWidget(
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'Button pressed ...');
                                                                      },
                                                                      text:
                                                                          'Next',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        height:
                                                                            44.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            20.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: Color(
                                                                            0x347983BB),
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Public Sans',
                                                                              color: FlutterFlowTheme.of(context).secondaryHeader,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                        elevation:
                                                                            0.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              0.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          4.0)),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 18.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 28.0)),
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
                              .addToStart(SizedBox(height: 110.0))
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
