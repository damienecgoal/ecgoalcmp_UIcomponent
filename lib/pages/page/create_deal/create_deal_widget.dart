import '/auth/base_auth_user_provider.dart';
import '/components_2/custom_switch/custom_switch_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/icon_box/icon_box_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/select/select_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_deal_model.dart';
export 'create_deal_model.dart';

class CreateDealWidget extends StatefulWidget {
  const CreateDealWidget({super.key});

  @override
  State<CreateDealWidget> createState() => _CreateDealWidgetState();
}

class _CreateDealWidgetState extends State<CreateDealWidget> {
  late CreateDealModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateDealModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().activePage = 'Add Product';
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

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode7 ??= FocusNode();

    _model.textController8 ??= TextEditingController();
    _model.textFieldFocusNode8 ??= FocusNode();

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
                            Align(
                              alignment: AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Wizard examples / ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Public Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 22.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            'Create Deal',
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
                                    Container(
                                      width: double.infinity,
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                                    _model.activeTab =
                                                        'Deal Type';
                                                    safeSetState(() {});
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      wrapWithModel(
                                                        model: _model
                                                            .iconBoxModel1,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: IconBoxWidget(
                                                          icon: Icon(
                                                            FFIcons.kusers,
                                                            color: Color(
                                                                0xFFB0B8DC),
                                                            size: 24.0,
                                                          ),
                                                          bg: valueOrDefault<
                                                              Color>(
                                                            _model.activeTab ==
                                                                    'Deal Type'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .unselectBox,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .unselectBox,
                                                          ),
                                                          size: 44.0,
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Deal Type',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Public Sans',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    _model.activeTab ==
                                                                            'Deal Type'
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryText
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                    FlutterFlowTheme.of(
                                                                            context)
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
                                                          Text(
                                                            'Choose type of deal',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 8.0)),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 20.0)),
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
                                                    _model.activeTab =
                                                        'Deal Details';
                                                    safeSetState(() {});
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      wrapWithModel(
                                                        model: _model
                                                            .iconBoxModel2,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: IconBoxWidget(
                                                          icon: Icon(
                                                            FFIcons.kid,
                                                            color: Color(
                                                                0xFFB0B8DC),
                                                            size: 24.0,
                                                          ),
                                                          bg: valueOrDefault<
                                                              Color>(
                                                            _model.activeTab ==
                                                                    'Deal Details'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .unselectBox,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .unselectBox,
                                                          ),
                                                          size: 44.0,
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Deal Details',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Public Sans',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    _model.activeTab ==
                                                                            'Deal Details'
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryText
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                    FlutterFlowTheme.of(
                                                                            context)
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
                                                          Text(
                                                            'Provide  deal details',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 8.0)),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 20.0)),
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
                                                    _model.activeTab =
                                                        'Deal Usage';
                                                    safeSetState(() {});
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      wrapWithModel(
                                                        model: _model
                                                            .iconBoxModel3,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: IconBoxWidget(
                                                          icon: Icon(
                                                            FFIcons.kcreditCard,
                                                            color: Color(
                                                                0xFFB0B8DC),
                                                            size: 24.0,
                                                          ),
                                                          bg: valueOrDefault<
                                                              Color>(
                                                            _model.activeTab ==
                                                                    'Deal Usage'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .unselectBox,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .unselectBox,
                                                          ),
                                                          size: 44.0,
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Deal Usage',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Public Sans',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    _model.activeTab ==
                                                                            'Deal Usage'
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryText
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                    FlutterFlowTheme.of(
                                                                            context)
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
                                                          Text(
                                                            'Limitations & Offers',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 8.0)),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 20.0)),
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
                                                    _model.activeTab =
                                                        'Review &Complete';
                                                    safeSetState(() {});
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      wrapWithModel(
                                                        model: _model
                                                            .iconBoxModel4,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child: IconBoxWidget(
                                                          icon: Icon(
                                                            FFIcons.kcheckbox,
                                                            color: Color(
                                                                0xFFB0B8DC),
                                                            size: 24.0,
                                                          ),
                                                          bg: valueOrDefault<
                                                              Color>(
                                                            _model.activeTab ==
                                                                    'Review &Complete'
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .unselectBox,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .unselectBox,
                                                          ),
                                                          size: 44.0,
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Review &Complete',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Public Sans',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    _model.activeTab ==
                                                                            'Review &Complete'
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryText
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryTitle,
                                                                    FlutterFlowTheme.of(
                                                                            context)
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
                                                          Text(
                                                            'Launch a deal!',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 8.0)),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 20.0)),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 24.0)),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 16.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  if (_model.activeTab ==
                                                      'Address') {
                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: 460.0,
                                                          child:
                                                              VerticalDivider(
                                                            width: 40.0,
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .lineColor,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        20.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
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
                                                                          children:
                                                                              [
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Deal Title',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  MouseRegion(
                                                                                    opaque: false,
                                                                                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: TextFormField(
                                                                                            controller: _model.textController1,
                                                                                            focusNode: _model.textFieldFocusNode1,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              isDense: true,
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: 'Black friday sale, 25% off',
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).textFiled,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: valueOrDefault<Color>(
                                                                                                    _model.mouseRegionHovered1! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
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
                                                                                              contentPadding: EdgeInsets.all(16.0),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            validator: _model.textController1Validator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    onEnter: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered1 = true);
                                                                                    }),
                                                                                    onExit: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered1 = false);
                                                                                    }),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Deal Code',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  MouseRegion(
                                                                                    opaque: false,
                                                                                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: TextFormField(
                                                                                            controller: _model.textController2,
                                                                                            focusNode: _model.textFieldFocusNode2,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              isDense: true,
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: '25PEROFF',
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).textFiled,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: valueOrDefault<Color>(
                                                                                                    _model.mouseRegionHovered2! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
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
                                                                                              contentPadding: EdgeInsets.all(16.0),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            validator: _model.textController2Validator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    onEnter: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered2 = true);
                                                                                    }),
                                                                                    onExit: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered2 = false);
                                                                                    }),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 28.0)),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Deal Description',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  MouseRegion(
                                                                                    opaque: false,
                                                                                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: TextFormField(
                                                                                            controller: _model.textController3,
                                                                                            focusNode: _model.textFieldFocusNode3,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              isDense: true,
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: 'To sell or distribute something as a business deal',
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).textFiled,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: valueOrDefault<Color>(
                                                                                                    _model.mouseRegionHovered3! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
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
                                                                                              contentPadding: EdgeInsets.all(16.0),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            maxLines: 10,
                                                                                            minLines: 6,
                                                                                            validator: _model.textController3Validator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    onEnter: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered3 = true);
                                                                                    }),
                                                                                    onExit: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered3 = false);
                                                                                    }),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Offered Items',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              fontSize: 15.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                      MouseRegion(
                                                                                        opaque: false,
                                                                                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                        child: FlutterFlowDropDown<String>(
                                                                                          multiSelectController: _model.dropDownValueController1 ??= FormListFieldController<String>(null),
                                                                                          options: [
                                                                                            'Apple iPhone 12 Pro Max (256GB)',
                                                                                            'Apple iPhone 12 Pro  (512GB)',
                                                                                            'Apple iPhone 12 Mini (256GB)',
                                                                                            'Apple iPhone 11 Pro Max (256GB)',
                                                                                            'Apple iPhone 11 Mini (256GB)'
                                                                                          ],
                                                                                          height: 43.0,
                                                                                          searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Public Sans',
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Public Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Public Sans',
                                                                                                color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          hintText: 'Select an offered item',
                                                                                          searchHintText: '',
                                                                                          searchCursorColor: FlutterFlowTheme.of(context).lineColor,
                                                                                          icon: Icon(
                                                                                            FFIcons.kchevronRight,
                                                                                            color: FlutterFlowTheme.of(context).lineColor,
                                                                                            size: 0.0,
                                                                                          ),
                                                                                          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          elevation: 3.0,
                                                                                          borderColor: valueOrDefault<Color>(
                                                                                            _model.mouseRegionHovered4! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
                                                                                            FlutterFlowTheme.of(context).lineColor,
                                                                                          ),
                                                                                          borderWidth: 1.0,
                                                                                          borderRadius: 8.0,
                                                                                          margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                          hidesUnderline: true,
                                                                                          isOverButton: false,
                                                                                          isSearchable: true,
                                                                                          isMultiSelect: true,
                                                                                          onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownValue1 = val),
                                                                                        ),
                                                                                        onEnter: ((event) async {
                                                                                          safeSetState(() => _model.mouseRegionHovered4 = true);
                                                                                        }),
                                                                                        onExit: ((event) async {
                                                                                          safeSetState(() => _model.mouseRegionHovered4 = false);
                                                                                        }),
                                                                                      ),
                                                                                    ].divide(SizedBox(height: 8.0)),
                                                                                  ),
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Cart condition',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Public Sans',
                                                                                              fontSize: 15.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                      MouseRegion(
                                                                                        opaque: false,
                                                                                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                        child: FlutterFlowDropDown<String>(
                                                                                          multiSelectController: _model.dropDownValueController2 ??= FormListFieldController<String>(null),
                                                                                          options: [
                                                                                            'Australi',
                                                                                            'Bangladeng',
                                                                                            'Belarus',
                                                                                            'Brazil',
                                                                                            'Canada',
                                                                                            'China',
                                                                                            'France',
                                                                                            'Germany',
                                                                                            'india',
                                                                                            'Indone',
                                                                                            'Asia',
                                                                                            'Africa',
                                                                                            'Europe',
                                                                                            'North Americaa',
                                                                                            'South America',
                                                                                            'Australia'
                                                                                          ],
                                                                                          height: 43.0,
                                                                                          searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Public Sans',
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Public Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Public Sans',
                                                                                                color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          hintText: 'Cart must contain all selected Downloads',
                                                                                          searchHintText: '',
                                                                                          searchCursorColor: FlutterFlowTheme.of(context).lineColor,
                                                                                          icon: Icon(
                                                                                            FFIcons.kchevronDown,
                                                                                            color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                            size: 22.0,
                                                                                          ),
                                                                                          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          elevation: 3.0,
                                                                                          borderColor: valueOrDefault<Color>(
                                                                                            _model.mouseRegionHovered5! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
                                                                                            FlutterFlowTheme.of(context).lineColor,
                                                                                          ),
                                                                                          borderWidth: 1.0,
                                                                                          borderRadius: 8.0,
                                                                                          margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                          hidesUnderline: true,
                                                                                          isOverButton: false,
                                                                                          isSearchable: true,
                                                                                          isMultiSelect: true,
                                                                                          onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownValue2 = val),
                                                                                        ),
                                                                                        onEnter: ((event) async {
                                                                                          safeSetState(() => _model.mouseRegionHovered5 = true);
                                                                                        }),
                                                                                        onExit: ((event) async {
                                                                                          safeSetState(() => _model.mouseRegionHovered5 = false);
                                                                                        }),
                                                                                      ),
                                                                                    ].divide(SizedBox(height: 8.0)),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 26.0)),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 28.0)),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Deal Duration',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  MouseRegion(
                                                                                    opaque: false,
                                                                                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: TextFormField(
                                                                                            controller: _model.textController4,
                                                                                            focusNode: _model.textFieldFocusNode4,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              isDense: true,
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: 'YYYY-MM-DD to YYYY-MM-DD',
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).textFiled,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: valueOrDefault<Color>(
                                                                                                    _model.mouseRegionHovered6! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
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
                                                                                              contentPadding: EdgeInsets.all(16.0),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            validator: _model.textController4Validator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    onEnter: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered6 = true);
                                                                                    }),
                                                                                    onExit: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered6 = false);
                                                                                    }),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Notify Users',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Row(
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
                                                                                          Text(
                                                                                            'Email',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ].divide(SizedBox(width: 4.0)),
                                                                                      ),
                                                                                      Row(
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
                                                                                          Text(
                                                                                            'SMS',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ].divide(SizedBox(width: 4.0)),
                                                                                      ),
                                                                                      Row(
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
                                                                                          Text(
                                                                                            'Push Notificationmail',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ].divide(SizedBox(width: 4.0)),
                                                                                      ),
                                                                                    ].divide(SizedBox(width: 16.0)),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 12.0)),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 28.0)),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 20.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            _model.activeTab =
                                                                                'Deal Type';
                                                                            safeSetState(() {});
                                                                          },
                                                                          text:
                                                                              'Previous',
                                                                          icon:
                                                                              Icon(
                                                                            FFIcons.karrowLeft,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).unselectText,
                                                                            size:
                                                                                22.0,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                44.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                24.0,
                                                                                0.0,
                                                                                24.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).unselectBox,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  color: FlutterFlowTheme.of(context).unselectText,
                                                                                  letterSpacing: 0.0,
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
                                                                            _model.activeTab =
                                                                                'Deal Usage';
                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                2.0,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Container(
                                                                              height: 44.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Next',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: Colors.white,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                    Icon(
                                                                                      FFIcons.karrowRight,
                                                                                      color: Colors.white,
                                                                                      size: 22.0,
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 8.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          28.0)),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  } else if (_model.activeTab ==
                                                      'Payment') {
                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: 420.0,
                                                          child:
                                                              VerticalDivider(
                                                            width: 40.0,
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .lineColor,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        20.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
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
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Minimum Cart Amount',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  MouseRegion(
                                                                                    opaque: false,
                                                                                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: TextFormField(
                                                                                            controller: _model.textController5,
                                                                                            focusNode: _model.textFieldFocusNode5,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              isDense: true,
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: '\$99',
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).textFiled,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: valueOrDefault<Color>(
                                                                                                    _model.mouseRegionHovered7! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
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
                                                                                              contentPadding: EdgeInsets.all(16.0),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            validator: _model.textController5Validator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    onEnter: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered7 = true);
                                                                                    }),
                                                                                    onExit: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered7 = false);
                                                                                    }),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'User Type',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  MouseRegion(
                                                                                    opaque: false,
                                                                                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                    child: FlutterFlowDropDown<String>(
                                                                                      multiSelectController: _model.dropDownValueController3 ??= FormListFieldController<String>(null),
                                                                                      options: [
                                                                                        'All',
                                                                                        'Registered',
                                                                                        'Unregistered',
                                                                                        'Prime members'
                                                                                      ],
                                                                                      height: 43.0,
                                                                                      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintText: 'Select user type',
                                                                                      searchHintText: '',
                                                                                      searchCursorColor: FlutterFlowTheme.of(context).lineColor,
                                                                                      icon: Icon(
                                                                                        FFIcons.kchevronDown,
                                                                                        color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                        size: 22.0,
                                                                                      ),
                                                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      elevation: 3.0,
                                                                                      borderColor: valueOrDefault<Color>(
                                                                                        _model.mouseRegionHovered8! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
                                                                                        FlutterFlowTheme.of(context).lineColor,
                                                                                      ),
                                                                                      borderWidth: 1.0,
                                                                                      borderRadius: 8.0,
                                                                                      margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                      hidesUnderline: true,
                                                                                      isOverButton: false,
                                                                                      isSearchable: true,
                                                                                      isMultiSelect: true,
                                                                                      onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownValue3 = val),
                                                                                    ),
                                                                                    onEnter: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered8 = true);
                                                                                    }),
                                                                                    onExit: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered8 = false);
                                                                                    }),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 28.0)),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Max Users',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  MouseRegion(
                                                                                    opaque: false,
                                                                                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: TextFormField(
                                                                                            controller: _model.textController6,
                                                                                            focusNode: _model.textFieldFocusNode6,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              isDense: true,
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: '500',
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).textFiled,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: valueOrDefault<Color>(
                                                                                                    _model.mouseRegionHovered9! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
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
                                                                                              contentPadding: EdgeInsets.all(16.0),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            validator: _model.textController6Validator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    onEnter: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered9 = true);
                                                                                    }),
                                                                                    onExit: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered9 = false);
                                                                                    }),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Payment Method',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  MouseRegion(
                                                                                    opaque: false,
                                                                                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                    child: FlutterFlowDropDown<String>(
                                                                                      multiSelectController: _model.dropDownValueController4 ??= FormListFieldController<String>(null),
                                                                                      options: [
                                                                                        'Any',
                                                                                        'Credit Card',
                                                                                        'Net Banking',
                                                                                        'Wallet'
                                                                                      ],
                                                                                      height: 43.0,
                                                                                      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintText: 'Select payment method',
                                                                                      searchHintText: '',
                                                                                      searchCursorColor: FlutterFlowTheme.of(context).lineColor,
                                                                                      icon: Icon(
                                                                                        FFIcons.kchevronDown,
                                                                                        color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                        size: 22.0,
                                                                                      ),
                                                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      elevation: 3.0,
                                                                                      borderColor: valueOrDefault<Color>(
                                                                                        _model.mouseRegionHovered10! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
                                                                                        FlutterFlowTheme.of(context).lineColor,
                                                                                      ),
                                                                                      borderWidth: 1.0,
                                                                                      borderRadius: 8.0,
                                                                                      margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                      hidesUnderline: true,
                                                                                      isOverButton: false,
                                                                                      isSearchable: true,
                                                                                      isMultiSelect: true,
                                                                                      onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownValue4 = val),
                                                                                    ),
                                                                                    onEnter: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered10 = true);
                                                                                    }),
                                                                                    onExit: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered10 = false);
                                                                                    }),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 28.0)),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Promotional Fee',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  MouseRegion(
                                                                                    opaque: false,
                                                                                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: TextFormField(
                                                                                            controller: _model.textController7,
                                                                                            focusNode: _model.textFieldFocusNode7,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              isDense: true,
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: '\$9',
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).textFiled,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: valueOrDefault<Color>(
                                                                                                    _model.mouseRegionHovered11! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
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
                                                                                              contentPadding: EdgeInsets.all(16.0),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            validator: _model.textController7Validator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    onEnter: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered11 = true);
                                                                                    }),
                                                                                    onExit: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered11 = false);
                                                                                    }),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Deal Status',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  MouseRegion(
                                                                                    opaque: false,
                                                                                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                    child: FlutterFlowDropDown<String>(
                                                                                      multiSelectController: _model.dropDownValueController5 ??= FormListFieldController<String>(null),
                                                                                      options: [
                                                                                        'Active',
                                                                                        'inactive',
                                                                                        'Suspend',
                                                                                        'Abandone'
                                                                                      ],
                                                                                      height: 43.0,
                                                                                      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintText: 'Select status',
                                                                                      searchHintText: '',
                                                                                      searchCursorColor: FlutterFlowTheme.of(context).lineColor,
                                                                                      icon: Icon(
                                                                                        FFIcons.kchevronDown,
                                                                                        color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                        size: 22.0,
                                                                                      ),
                                                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      elevation: 3.0,
                                                                                      borderColor: valueOrDefault<Color>(
                                                                                        _model.mouseRegionHovered12! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
                                                                                        FlutterFlowTheme.of(context).lineColor,
                                                                                      ),
                                                                                      borderWidth: 1.0,
                                                                                      borderRadius: 8.0,
                                                                                      margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                      hidesUnderline: true,
                                                                                      isOverButton: false,
                                                                                      isSearchable: true,
                                                                                      isMultiSelect: true,
                                                                                      onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownValue5 = val),
                                                                                    ),
                                                                                    onEnter: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered12 = true);
                                                                                    }),
                                                                                    onExit: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered12 = false);
                                                                                    }),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 28.0)),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 20.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.customSwitchModel1,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              CustomSwitchWidget(
                                                                            switchValue:
                                                                                FFAppState().inStock,
                                                                            toggleAction:
                                                                                () async {
                                                                              FFAppState().inStock = !(FFAppState().inStock ?? true);
                                                                              safeSetState(() {});
                                                                            },
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          'Limit this discount to a single-use per customer?',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Public Sans',
                                                                                color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 8.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            _model.activeTab =
                                                                                'Deal Details';
                                                                            safeSetState(() {});
                                                                          },
                                                                          text:
                                                                              'Previous',
                                                                          icon:
                                                                              Icon(
                                                                            FFIcons.karrowLeft,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).unselectText,
                                                                            size:
                                                                                22.0,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                44.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                24.0,
                                                                                0.0,
                                                                                24.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).unselectBox,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  color: FlutterFlowTheme.of(context).unselectText,
                                                                                  letterSpacing: 0.0,
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
                                                                            _model.activeTab =
                                                                                'Review &Complete';
                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                2.0,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Container(
                                                                              height: 44.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Next',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: Colors.white,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                    Icon(
                                                                                      FFIcons.karrowRight,
                                                                                      color: Colors.white,
                                                                                      size: 22.0,
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 8.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          28.0)),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  } else if (_model.activeTab ==
                                                      'Confirmation') {
                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: 420.0,
                                                          child:
                                                              VerticalDivider(
                                                            width: 40.0,
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .lineColor,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        20.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
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
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Almost done! 🚀',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 28.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    'Confirm your deal details information and submit to create it.',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        flex: 3,
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Deal Type',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              'Amount',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              'Deal Code',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              'Deal Title',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              'Deal Duration',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ].divide(SizedBox(height: 14.0)),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        flex: 4,
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Text(
                                                                                              'Percentage',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                '25%',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Public Sans',
                                                                                                      color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                      fontSize: 16.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                              child: wrapWithModel(
                                                                                                model: _model.statusCardModel,
                                                                                                updateCallback: () => safeSetState(() {}),
                                                                                                child: StatusCardWidget(
                                                                                                  title: '25PEROFF',
                                                                                                  titleColor: FlutterFlowTheme.of(context).warning,
                                                                                                  bgColor: Color(0x33FF9F43),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                'Black friday sale, 25% OFF',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Public Sans',
                                                                                                      color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                      fontSize: 16.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                '2021-07-14 to 2021-07-30',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Public Sans',
                                                                                                      color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                      fontSize: 16.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ].divide(SizedBox(height: 24.0)),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Container(
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).lineColor,
                                                                                  ),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/wizard-create-deal-confirm.png',
                                                                                      width: 300.0,
                                                                                      height: 240.0,
                                                                                      fit: BoxFit.contain,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 28.0)),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 20.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.customSwitchModel2,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              CustomSwitchWidget(
                                                                            switchValue:
                                                                                FFAppState().inStock,
                                                                            toggleAction:
                                                                                () async {
                                                                              FFAppState().inStock = !(FFAppState().inStock ?? true);
                                                                              safeSetState(() {});
                                                                            },
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          'I have confirmed the deal details.',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Public Sans',
                                                                                color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 8.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            _model.activeTab =
                                                                                'Deal Usage';
                                                                            safeSetState(() {});
                                                                          },
                                                                          text:
                                                                              'Previous',
                                                                          icon:
                                                                              Icon(
                                                                            FFIcons.karrowLeft,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).unselectText,
                                                                            size:
                                                                                22.0,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                44.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                24.0,
                                                                                0.0,
                                                                                24.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).unselectBox,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  color: FlutterFlowTheme.of(context).unselectText,
                                                                                  letterSpacing: 0.0,
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
                                                                        Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              2.0,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                44.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).success,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Submit',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          color: Colors.white,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  Icon(
                                                                                    FFIcons.kcheck,
                                                                                    color: Colors.white,
                                                                                    size: 22.0,
                                                                                  ),
                                                                                ].divide(SizedBox(width: 8.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          28.0)),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  } else {
                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          height: 700.0,
                                                          child:
                                                              VerticalDivider(
                                                            width: 40.0,
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .lineColor,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        20.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              240.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).lineColor,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.0, 1.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.asset(
                                                                                    'assets/images/bg-shape-image-dark.png',
                                                                                    width: double.infinity,
                                                                                    height: 100.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/girl-sitting-with-laptop.png',
                                                                                      width: double.infinity,
                                                                                      fit: BoxFit.contain,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Expanded(
                                                                              child: MouseRegion(
                                                                                opaque: false,
                                                                                cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    _model.deal = 'Percentage';
                                                                                    safeSetState(() {});
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 100.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      border: Border.all(
                                                                                        color: valueOrDefault<Color>(
                                                                                          () {
                                                                                            if (_model.deal == 'Percentage') {
                                                                                              return FlutterFlowTheme.of(context).primary;
                                                                                            } else if (_model.mouseRegionHovered13!) {
                                                                                              return FlutterFlowTheme.of(context).secondaryText;
                                                                                            } else {
                                                                                              return FlutterFlowTheme.of(context).lineColor;
                                                                                            }
                                                                                          }(),
                                                                                          FlutterFlowTheme.of(context).lineColor,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.all(20.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Icon(
                                                                                            FFIcons.krosetteDiscountCheck,
                                                                                            color: valueOrDefault<Color>(
                                                                                              _model.deal == 'Percentage' ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondaryTitle,
                                                                                              FlutterFlowTheme.of(context).secondaryTitle,
                                                                                            ),
                                                                                            size: 36.0,
                                                                                          ),
                                                                                          Text(
                                                                                            'Percentage',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Create a deal which offer uses some % off (i.e 5% OFF) on total.',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                  fontSize: 15.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  lineHeight: 1.5,
                                                                                                ),
                                                                                          ),
                                                                                          wrapWithModel(
                                                                                            model: _model.selectModel1,
                                                                                            updateCallback: () => safeSetState(() {}),
                                                                                            child: SelectWidget(
                                                                                              border: valueOrDefault<Color>(
                                                                                                _model.deal == 'Percentage' ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).lineColor,
                                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                                              ),
                                                                                              fill: valueOrDefault<Color>(
                                                                                                _model.deal == 'Percentage' ? FlutterFlowTheme.of(context).primary : Colors.transparent,
                                                                                                Colors.transparent,
                                                                                              ),
                                                                                              white: valueOrDefault<Color>(
                                                                                                _model.deal == 'Percentage' ? Colors.white : Colors.transparent,
                                                                                                Colors.transparent,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ].divide(SizedBox(height: 12.0)),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                onEnter: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionHovered13 = true);
                                                                                }),
                                                                                onExit: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionHovered13 = false);
                                                                                }),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: MouseRegion(
                                                                                opaque: false,
                                                                                cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    _model.deal = 'Flat Amount';
                                                                                    safeSetState(() {});
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 100.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      border: Border.all(
                                                                                        color: valueOrDefault<Color>(
                                                                                          () {
                                                                                            if (_model.deal == 'Flat Amount') {
                                                                                              return FlutterFlowTheme.of(context).primary;
                                                                                            } else if (_model.mouseRegionHovered14!) {
                                                                                              return FlutterFlowTheme.of(context).secondaryText;
                                                                                            } else {
                                                                                              return FlutterFlowTheme.of(context).lineColor;
                                                                                            }
                                                                                          }(),
                                                                                          FlutterFlowTheme.of(context).lineColor,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.all(20.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Icon(
                                                                                            FFIcons.kcreditCard,
                                                                                            color: valueOrDefault<Color>(
                                                                                              _model.deal == 'Flat Amount' ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondaryTitle,
                                                                                              FlutterFlowTheme.of(context).secondaryTitle,
                                                                                            ),
                                                                                            size: 36.0,
                                                                                          ),
                                                                                          Text(
                                                                                            'Flat Amount',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Create a deal which offer uses some % off (i.e 5% OFF) on total.',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                  fontSize: 15.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  lineHeight: 1.5,
                                                                                                ),
                                                                                          ),
                                                                                          wrapWithModel(
                                                                                            model: _model.selectModel2,
                                                                                            updateCallback: () => safeSetState(() {}),
                                                                                            child: SelectWidget(
                                                                                              border: valueOrDefault<Color>(
                                                                                                _model.deal == 'Flat Amount' ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).lineColor,
                                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                                              ),
                                                                                              fill: valueOrDefault<Color>(
                                                                                                _model.deal == 'Flat Amount' ? FlutterFlowTheme.of(context).primary : Colors.transparent,
                                                                                                Colors.transparent,
                                                                                              ),
                                                                                              white: valueOrDefault<Color>(
                                                                                                _model.deal == 'Flat Amount' ? Colors.white : Colors.transparent,
                                                                                                Colors.transparent,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ].divide(SizedBox(height: 12.0)),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                onEnter: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionHovered14 = true);
                                                                                }),
                                                                                onExit: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionHovered14 = false);
                                                                                }),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: MouseRegion(
                                                                                opaque: false,
                                                                                cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    _model.deal = 'Prime Member';
                                                                                    safeSetState(() {});
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 100.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      border: Border.all(
                                                                                        color: valueOrDefault<Color>(
                                                                                          () {
                                                                                            if (_model.deal == 'Prime Member') {
                                                                                              return FlutterFlowTheme.of(context).primary;
                                                                                            } else if (_model.mouseRegionHovered15!) {
                                                                                              return FlutterFlowTheme.of(context).secondaryText;
                                                                                            } else {
                                                                                              return FlutterFlowTheme.of(context).lineColor;
                                                                                            }
                                                                                          }(),
                                                                                          FlutterFlowTheme.of(context).lineColor,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.all(20.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Icon(
                                                                                            Icons.diamond_outlined,
                                                                                            color: valueOrDefault<Color>(
                                                                                              _model.deal == 'Prime Member' ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).secondaryTitle,
                                                                                              FlutterFlowTheme.of(context).secondaryTitle,
                                                                                            ),
                                                                                            size: 36.0,
                                                                                          ),
                                                                                          Text(
                                                                                            'Percentage',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            'Create a deal which offer uses some % off (i.e 5% OFF) on total.',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                                  fontSize: 15.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  lineHeight: 1.5,
                                                                                                ),
                                                                                          ),
                                                                                          wrapWithModel(
                                                                                            model: _model.selectModel3,
                                                                                            updateCallback: () => safeSetState(() {}),
                                                                                            child: SelectWidget(
                                                                                              border: valueOrDefault<Color>(
                                                                                                _model.deal == 'Prime Member' ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).lineColor,
                                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                                              ),
                                                                                              fill: valueOrDefault<Color>(
                                                                                                _model.deal == 'Prime Member' ? FlutterFlowTheme.of(context).primary : Colors.transparent,
                                                                                                Colors.transparent,
                                                                                              ),
                                                                                              white: valueOrDefault<Color>(
                                                                                                _model.deal == 'Prime Member' ? Colors.white : Colors.transparent,
                                                                                                Colors.transparent,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ].divide(SizedBox(height: 12.0)),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                onEnter: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionHovered15 = true);
                                                                                }),
                                                                                onExit: ((event) async {
                                                                                  safeSetState(() => _model.mouseRegionHovered15 = false);
                                                                                }),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 20.0)),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Discount',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  MouseRegion(
                                                                                    opaque: false,
                                                                                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: TextFormField(
                                                                                            controller: _model.textController8,
                                                                                            focusNode: _model.textFieldFocusNode8,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              isDense: true,
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              hintText: '25',
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Public Sans',
                                                                                                    color: FlutterFlowTheme.of(context).textFiled,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: valueOrDefault<Color>(
                                                                                                    _model.mouseRegionHovered16! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
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
                                                                                              contentPadding: EdgeInsets.all(16.0),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Public Sans',
                                                                                                  fontSize: 16.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            validator: _model.textController8Validator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    onEnter: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered16 = true);
                                                                                    }),
                                                                                    onExit: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered16 = false);
                                                                                    }),
                                                                                  ),
                                                                                  Text(
                                                                                    'Enter the discount percentage. 10 = 10%',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Region',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          fontSize: 15.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  MouseRegion(
                                                                                    opaque: false,
                                                                                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                    child: FlutterFlowDropDown<String>(
                                                                                      multiSelectController: _model.dropDownValueController6 ??= FormListFieldController<String>(null),
                                                                                      options: [
                                                                                        'Australi',
                                                                                        'Bangladeng',
                                                                                        'Belarus',
                                                                                        'Brazil',
                                                                                        'Canada',
                                                                                        'China',
                                                                                        'France',
                                                                                        'Germany',
                                                                                        'india',
                                                                                        'Indone',
                                                                                        'Asia',
                                                                                        'Africa',
                                                                                        'Europe',
                                                                                        'North Americaa',
                                                                                        'South America',
                                                                                        'Australia'
                                                                                      ],
                                                                                      height: 43.0,
                                                                                      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintText: 'select an region',
                                                                                      searchHintText: '',
                                                                                      searchCursorColor: FlutterFlowTheme.of(context).lineColor,
                                                                                      icon: Icon(
                                                                                        FFIcons.kchevronRight,
                                                                                        color: FlutterFlowTheme.of(context).lineColor,
                                                                                        size: 0.0,
                                                                                      ),
                                                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      elevation: 3.0,
                                                                                      borderColor: valueOrDefault<Color>(
                                                                                        _model.mouseRegionHovered17! ? FlutterFlowTheme.of(context).secondaryText : FlutterFlowTheme.of(context).lineColor,
                                                                                        FlutterFlowTheme.of(context).lineColor,
                                                                                      ),
                                                                                      borderWidth: 1.0,
                                                                                      borderRadius: 8.0,
                                                                                      margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                      hidesUnderline: true,
                                                                                      isOverButton: false,
                                                                                      isSearchable: true,
                                                                                      isMultiSelect: true,
                                                                                      onMultiSelectChanged: (val) => safeSetState(() => _model.dropDownValue6 = val),
                                                                                    ),
                                                                                    onEnter: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered17 = true);
                                                                                    }),
                                                                                    onExit: ((event) async {
                                                                                      safeSetState(() => _model.mouseRegionHovered17 = false);
                                                                                    }),
                                                                                  ),
                                                                                  Text(
                                                                                    'Select applicable regions for the deal.',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Public Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(SizedBox(height: 8.0)),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 28.0)),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 20.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () {
                                                                            print('Button pressed ...');
                                                                          },
                                                                          text:
                                                                              'Previous',
                                                                          icon:
                                                                              Icon(
                                                                            FFIcons.karrowLeft,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).unselectText,
                                                                            size:
                                                                                22.0,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                44.0,
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                24.0,
                                                                                0.0,
                                                                                24.0,
                                                                                0.0),
                                                                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).unselectBox,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Public Sans',
                                                                                  color: FlutterFlowTheme.of(context).unselectText,
                                                                                  letterSpacing: 0.0,
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
                                                                            _model.activeTab =
                                                                                'Deal Details';
                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                2.0,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Container(
                                                                              height: 44.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Next',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Public Sans',
                                                                                            color: Colors.white,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                    Icon(
                                                                                      FFIcons.karrowRight,
                                                                                      color: Colors.white,
                                                                                      size: 22.0,
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 8.0)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          24.0)),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  }
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
