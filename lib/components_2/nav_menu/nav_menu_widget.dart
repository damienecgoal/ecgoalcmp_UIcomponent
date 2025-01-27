import '/components_2/menu_option/menu_option_widget.dart';
import '/components_2/menu_option_sub/menu_option_sub_widget.dart';
import '/components_2/menu_option_x/menu_option_x_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'nav_menu_model.dart';
export 'nav_menu_model.dart';

class NavMenuWidget extends StatefulWidget {
  const NavMenuWidget({super.key});

  @override
  State<NavMenuWidget> createState() => _NavMenuWidgetState();
}

class _NavMenuWidgetState extends State<NavMenuWidget> {
  late NavMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavMenuModel());

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController3 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController4 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController5 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController6 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController7 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController8 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController9 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController10 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController11 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController12 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController13 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController14 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController15 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController16 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController17 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController18 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController19 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController20 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController21 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController22 =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
        tabletLandscape: false,
      ),
      child: Container(
        width: 260.0,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 64.0,
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Image.asset(
                              'assets/images/logo.png',
                              height: 36.0,
                              fit: BoxFit.cover,
                            ),
                          Image.asset(
                            Theme.of(context).brightness == Brightness.dark
                                ? 'assets/images/logo-dark.png'
                                : 'assets/images/logo-light.png',
                            height: 26.0,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primaryText,
                          width: 2.0,
                        ),
                      ),
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 4.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryText,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      color: const Color(0x00000000),
                      child: ExpandableNotifier(
                        controller: _model.expandableExpandableController1,
                        child: ExpandablePanel(
                          header: wrapWithModel(
                            model: _model.menuOptionXModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: MenuOptionXWidget(
                              title: 'Dashboards',
                              iconActive: const Icon(
                                FFIcons.ksmartHome,
                                color: Colors.white,
                                size: 22.0,
                              ),
                              iconInactive: Icon(
                                FFIcons.ksmartHome,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 22.0,
                              ),
                              active: false,
                            ),
                          ),
                          collapsed: Container(
                            width: 0.0,
                            height: 0.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          expanded: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.menuOptionSubModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: MenuOptionSubWidget(
                                  title: 'Analytics',
                                  active:
                                      FFAppState().activePage == 'Analytics',
                                  navigateAction: () async {
                                    context.goNamed(
                                      'Analytics',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                              wrapWithModel(
                                model: _model.menuOptionSubModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: MenuOptionSubWidget(
                                  title: 'CRM',
                                  active: FFAppState().activePage == 'CRM',
                                  navigateAction: () async {
                                    context.goNamed(
                                      'CRM',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                              wrapWithModel(
                                model: _model.menuOptionSubModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: MenuOptionSubWidget(
                                  title: 'eCommerce',
                                  active:
                                      FFAppState().activePage == 'eCommerce',
                                  navigateAction: () async {
                                    context.goNamed(
                                      'eCommerce',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                              wrapWithModel(
                                model: _model.menuOptionSubModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: MenuOptionSubWidget(
                                  title: 'Logistics',
                                  active:
                                      FFAppState().activePage == 'Logistics',
                                  navigateAction: () async {
                                    context.goNamed(
                                      'Logistics',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                              wrapWithModel(
                                model: _model.menuOptionSubModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: MenuOptionSubWidget(
                                  title: 'Academy',
                                  active: FFAppState().activePage == 'Academy',
                                  navigateAction: () async {
                                    context.goNamed(
                                      'Academy',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                            ].addToStart(const SizedBox(height: 4.0)),
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                            expandIcon: FFIcons.kchevronRight,
                            collapseIcon: FFIcons.kchevronDown,
                            iconSize: 22.0,
                            iconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 0.0, 12.0),
                          child: Text(
                            'APPS & PAGES',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Public Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuOptionWidget(
                            title: 'Email',
                            iconActive: const Icon(
                              FFIcons.kmail,
                              color: Colors.white,
                              size: 22.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kmail,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 22.0,
                            ),
                            active: FFAppState().activePage == 'Email',
                            navigateAction: () async {
                              context.pushNamed(
                                'Email',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuOptionWidget(
                            title: 'Chat',
                            iconActive: const Icon(
                              FFIcons.kmessages,
                              color: Colors.white,
                              size: 22.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kmessages,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 22.0,
                            ),
                            active: FFAppState().activePage == 'Chat',
                            navigateAction: () async {
                              context.pushNamed(
                                'Chat',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuOptionWidget(
                            title: 'Calendar',
                            iconActive: const Icon(
                              FFIcons.kcalendar,
                              color: Colors.white,
                              size: 22.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kcalendar,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 22.0,
                            ),
                            active: FFAppState().activePage == 'Calendar',
                            navigateAction: () async {
                              context.pushNamed(
                                'Calender',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuOptionWidget(
                            title: 'Kanban',
                            iconActive: const Icon(
                              FFIcons.klayoutKanban,
                              color: Colors.white,
                              size: 22.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.klayoutKanban,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 22.0,
                            ),
                            active: FFAppState().activePage == 'Kanban',
                            navigateAction: () async {
                              context.pushNamed('Kanban');
                            },
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          color: const Color(0x00000000),
                          child: ExpandableNotifier(
                            controller: _model.expandableExpandableController2,
                            child: ExpandablePanel(
                              header: wrapWithModel(
                                model: _model.menuOptionXModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: MenuOptionXWidget(
                                  title: 'eCommerce',
                                  iconActive: const Icon(
                                    FFIcons.kshoppingCart,
                                    color: Colors.white,
                                    size: 22.0,
                                  ),
                                  iconInactive: Icon(
                                    FFIcons.kshoppingCart,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 22.0,
                                  ),
                                  active: false,
                                ),
                              ),
                              collapsed: Container(
                                width: 0.0,
                                height: 0.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              expanded: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  wrapWithModel(
                                    model: _model.menuOptionSubModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: MenuOptionSubWidget(
                                      title: 'Dashboard',
                                      active: FFAppState().activePage ==
                                          'eCommerce',
                                      navigateAction: () async {
                                        context.goNamed(
                                          'eCommerce',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: Container(
                                      width: double.infinity,
                                      color: const Color(0x00000000),
                                      child: ExpandableNotifier(
                                        controller: _model
                                            .expandableExpandableController3,
                                        child: ExpandablePanel(
                                          header: wrapWithModel(
                                            model: _model.menuOptionXModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: MenuOptionXWidget(
                                              title: 'Products',
                                              iconActive: const Icon(
                                                FFIcons.kpoint,
                                                color: Colors.white,
                                                size: 22.0,
                                              ),
                                              iconInactive: Icon(
                                                FFIcons.kpoint,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 22.0,
                                              ),
                                              active: false,
                                            ),
                                          ),
                                          collapsed: Container(
                                            width: 0.0,
                                            height: 0.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                          ),
                                          expanded: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              wrapWithModel(
                                                model:
                                                    _model.menuOptionSubModel7,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: MenuOptionSubWidget(
                                                  title: 'Product List',
                                                  active:
                                                      FFAppState().activePage ==
                                                          'Product_List',
                                                  navigateAction: () async {
                                                    context.goNamed(
                                                      'Product_List',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.menuOptionSubModel8,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: MenuOptionSubWidget(
                                                  title: 'Add Product',
                                                  active:
                                                      FFAppState().activePage ==
                                                          'Add_Product',
                                                  navigateAction: () async {
                                                    context.goNamed(
                                                      'Add_Product',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.menuOptionSubModel9,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: MenuOptionSubWidget(
                                                  title: 'Category List',
                                                  active:
                                                      FFAppState().activePage ==
                                                          'Category_List',
                                                  navigateAction: () async {
                                                    context.goNamed(
                                                      'Categories',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ].addToStart(const SizedBox(height: 4.0)),
                                          ),
                                          theme: ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            hasIcon: true,
                                            expandIcon: FFIcons.kchevronRight,
                                            collapseIcon: FFIcons.kchevronDown,
                                            iconSize: 22.0,
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: Container(
                                      width: double.infinity,
                                      color: const Color(0x00000000),
                                      child: ExpandableNotifier(
                                        controller: _model
                                            .expandableExpandableController4,
                                        child: ExpandablePanel(
                                          header: wrapWithModel(
                                            model: _model.menuOptionXModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: MenuOptionXWidget(
                                              title: 'Order',
                                              iconActive: const Icon(
                                                FFIcons.kpoint,
                                                color: Colors.white,
                                                size: 22.0,
                                              ),
                                              iconInactive: Icon(
                                                FFIcons.kpoint,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 22.0,
                                              ),
                                              active: false,
                                            ),
                                          ),
                                          collapsed: Container(
                                            width: 0.0,
                                            height: 0.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                          ),
                                          expanded: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              wrapWithModel(
                                                model:
                                                    _model.menuOptionSubModel10,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: MenuOptionSubWidget(
                                                  title: 'Order List',
                                                  active:
                                                      FFAppState().activePage ==
                                                          'Order List',
                                                  navigateAction: () async {
                                                    context.goNamed(
                                                      'Order_List',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.menuOptionSubModel11,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: MenuOptionSubWidget(
                                                  title: 'Order Details',
                                                  active:
                                                      FFAppState().activePage ==
                                                          'Order Details',
                                                  navigateAction: () async {
                                                    context.goNamed(
                                                      'Order_Details',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ].addToStart(const SizedBox(height: 4.0)),
                                          ),
                                          theme: ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            hasIcon: true,
                                            expandIcon: FFIcons.kchevronRight,
                                            collapseIcon: FFIcons.kchevronDown,
                                            iconSize: 22.0,
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: Container(
                                      width: double.infinity,
                                      color: const Color(0x00000000),
                                      child: ExpandableNotifier(
                                        controller: _model
                                            .expandableExpandableController5,
                                        child: ExpandablePanel(
                                          header: wrapWithModel(
                                            model: _model.menuOptionXModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: MenuOptionXWidget(
                                              title: 'Customer',
                                              iconActive: const Icon(
                                                FFIcons.kpoint,
                                                color: Colors.white,
                                                size: 22.0,
                                              ),
                                              iconInactive: Icon(
                                                FFIcons.kpoint,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 22.0,
                                              ),
                                              active: false,
                                            ),
                                          ),
                                          collapsed: Container(
                                            width: 0.0,
                                            height: 0.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                          ),
                                          expanded: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              wrapWithModel(
                                                model:
                                                    _model.menuOptionSubModel12,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: MenuOptionSubWidget(
                                                  title: 'All Customers',
                                                  active:
                                                      FFAppState().activePage ==
                                                          'All Customers',
                                                  navigateAction: () async {
                                                    context.goNamed(
                                                      'All_Customer',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              Container(
                                                decoration: const BoxDecoration(),
                                                child: Container(
                                                  width: double.infinity,
                                                  color: const Color(0x00000000),
                                                  child: ExpandableNotifier(
                                                    controller: _model
                                                        .expandableExpandableController6,
                                                    child: ExpandablePanel(
                                                      header: wrapWithModel(
                                                        model: _model
                                                            .menuOptionXModel6,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            MenuOptionXWidget(
                                                          title:
                                                              'Customer details',
                                                          iconActive: const Icon(
                                                            FFIcons.kpoint,
                                                            color: Colors.white,
                                                            size: 22.0,
                                                          ),
                                                          iconInactive: Icon(
                                                            FFIcons.kpoint,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 22.0,
                                                          ),
                                                          active: false,
                                                        ),
                                                      ),
                                                      collapsed: Container(
                                                        width: 0.0,
                                                        height: 0.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                      ),
                                                      expanded: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          wrapWithModel(
                                                            model: _model
                                                                .menuOptionSubModel13,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                MenuOptionSubWidget(
                                                              title: 'Overview',
                                                              active: FFAppState()
                                                                      .activePage ==
                                                                  'Overview',
                                                              navigateAction:
                                                                  () async {
                                                                context.goNamed(
                                                                  'Customer_Details',
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        const TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                    ),
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ].addToStart(const SizedBox(
                                                            height: 4.0)),
                                                      ),
                                                      theme:
                                                          ExpandableThemeData(
                                                        tapHeaderToExpand: true,
                                                        tapBodyToExpand: false,
                                                        tapBodyToCollapse:
                                                            false,
                                                        headerAlignment:
                                                            ExpandablePanelHeaderAlignment
                                                                .center,
                                                        hasIcon: true,
                                                        expandIcon: FFIcons
                                                            .kchevronRight,
                                                        collapseIcon: FFIcons
                                                            .kchevronDown,
                                                        iconSize: 22.0,
                                                        iconColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ].addToStart(const SizedBox(height: 4.0)),
                                          ),
                                          theme: ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            hasIcon: true,
                                            expandIcon: FFIcons.kchevronRight,
                                            collapseIcon: FFIcons.kchevronDown,
                                            iconSize: 22.0,
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.menuOptionSubModel14,
                                    updateCallback: () => safeSetState(() {}),
                                    child: MenuOptionSubWidget(
                                      title: 'Manage Reviews',
                                      active: FFAppState().activePage ==
                                          'Manage Reviews',
                                      navigateAction: () async {
                                        context.goNamed(
                                          'Manage_Reviews',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.menuOptionSubModel15,
                                    updateCallback: () => safeSetState(() {}),
                                    child: MenuOptionSubWidget(
                                      title: 'Referrals',
                                      active: FFAppState().activePage ==
                                          'Referrals',
                                      navigateAction: () async {
                                        context.goNamed(
                                          'Referrals',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: Container(
                                      width: double.infinity,
                                      color: const Color(0x00000000),
                                      child: ExpandableNotifier(
                                        controller: _model
                                            .expandableExpandableController7,
                                        child: ExpandablePanel(
                                          header: wrapWithModel(
                                            model: _model.menuOptionXModel7,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: MenuOptionXWidget(
                                              title: 'Settings',
                                              iconActive: const Icon(
                                                FFIcons.kpoint,
                                                color: Colors.white,
                                                size: 22.0,
                                              ),
                                              iconInactive: Icon(
                                                FFIcons.kpoint,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 22.0,
                                              ),
                                              active: false,
                                            ),
                                          ),
                                          collapsed: Container(
                                            width: 0.0,
                                            height: 0.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                          ),
                                          expanded: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              wrapWithModel(
                                                model:
                                                    _model.menuOptionSubModel16,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: MenuOptionSubWidget(
                                                  title: 'Settings',
                                                  active:
                                                      FFAppState().activePage ==
                                                          'Settings',
                                                  navigateAction: () async {
                                                    context.goNamed(
                                                      'Settings',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.menuOptionSubModel17,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: MenuOptionSubWidget(
                                                  title: 'Payments',
                                                  active:
                                                      FFAppState().activePage ==
                                                          'Payments',
                                                  navigateAction: () async {
                                                    context.goNamed(
                                                      'Settings',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.menuOptionSubModel18,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: MenuOptionSubWidget(
                                                  title: 'Checkout',
                                                  active:
                                                      FFAppState().activePage ==
                                                          'Checkout',
                                                  navigateAction: () async {
                                                    context.goNamed(
                                                      'Settings',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.menuOptionSubModel19,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: MenuOptionSubWidget(
                                                  title: 'Shipping & Delivery',
                                                  active:
                                                      FFAppState().activePage ==
                                                          'Shipping & Delivery',
                                                  navigateAction: () async {
                                                    context.goNamed(
                                                      'Settings',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.menuOptionSubModel20,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: MenuOptionSubWidget(
                                                  title: 'Locations',
                                                  active:
                                                      FFAppState().activePage ==
                                                          'Locations',
                                                  navigateAction: () async {
                                                    context.goNamed(
                                                      'Settings',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.menuOptionSubModel21,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: MenuOptionSubWidget(
                                                  title: 'Notifications',
                                                  active:
                                                      FFAppState().activePage ==
                                                          'Notifications',
                                                  navigateAction: () async {
                                                    context.goNamed(
                                                      'Settings',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            const TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ].addToStart(const SizedBox(height: 4.0)),
                                          ),
                                          theme: ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            hasIcon: true,
                                            expandIcon: FFIcons.kchevronRight,
                                            collapseIcon: FFIcons.kchevronDown,
                                            iconSize: 22.0,
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].addToStart(const SizedBox(height: 4.0)),
                              ),
                              theme: ExpandableThemeData(
                                tapHeaderToExpand: true,
                                tapBodyToExpand: false,
                                tapBodyToCollapse: false,
                                headerAlignment:
                                    ExpandablePanelHeaderAlignment.center,
                                hasIcon: true,
                                expandIcon: FFIcons.kchevronRight,
                                collapseIcon: FFIcons.kchevronDown,
                                iconSize: 22.0,
                                iconColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Container(
                            width: double.infinity,
                            color: const Color(0x00000000),
                            child: ExpandableNotifier(
                              controller:
                                  _model.expandableExpandableController8,
                              child: ExpandablePanel(
                                header: wrapWithModel(
                                  model: _model.menuOptionXModel8,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuOptionXWidget(
                                    title: 'Academy',
                                    iconActive: const Icon(
                                      FFIcons.kbook,
                                      color: Colors.white,
                                      size: 22.0,
                                    ),
                                    iconInactive: Icon(
                                      FFIcons.kbook,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 22.0,
                                    ),
                                    active: false,
                                  ),
                                ),
                                collapsed: Container(
                                  width: 0.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel22,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Dashboard',
                                        active: FFAppState().activePage ==
                                            'Academy',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Academy',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel23,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'My Courses',
                                        active: FFAppState().activePage ==
                                            'My Courses',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'MyCourses',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel24,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Course Details',
                                        active: FFAppState().activePage ==
                                            'Course Details',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Course_Details',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ].addToStart(const SizedBox(height: 4.0)),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: FFIcons.kchevronRight,
                                  collapseIcon: FFIcons.kchevronDown,
                                  iconSize: 22.0,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Container(
                            width: double.infinity,
                            color: const Color(0x00000000),
                            child: ExpandableNotifier(
                              controller:
                                  _model.expandableExpandableController9,
                              child: ExpandablePanel(
                                header: wrapWithModel(
                                  model: _model.menuOptionXModel9,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuOptionXWidget(
                                    title: 'Logistics',
                                    iconActive: const Icon(
                                      FFIcons.ktruck,
                                      color: Colors.white,
                                      size: 22.0,
                                    ),
                                    iconInactive: Icon(
                                      FFIcons.ktruck,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 22.0,
                                    ),
                                    active: false,
                                  ),
                                ),
                                collapsed: Container(
                                  width: 0.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel25,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Dashboard',
                                        active: FFAppState().activePage ==
                                            'Academy',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Logistics',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel26,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Fleet',
                                        active:
                                            FFAppState().activePage == 'Fleet',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Logistics_Fleet',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ].addToStart(const SizedBox(height: 4.0)),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: FFIcons.kchevronRight,
                                  collapseIcon: FFIcons.kchevronDown,
                                  iconSize: 22.0,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Container(
                            width: double.infinity,
                            color: const Color(0x00000000),
                            child: ExpandableNotifier(
                              controller:
                                  _model.expandableExpandableController10,
                              child: ExpandablePanel(
                                header: wrapWithModel(
                                  model: _model.menuOptionXModel10,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuOptionXWidget(
                                    title: 'Invoice',
                                    iconActive: const Icon(
                                      FFIcons.kfileDollar,
                                      color: Colors.white,
                                      size: 22.0,
                                    ),
                                    iconInactive: Icon(
                                      FFIcons.kfileDollar,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 22.0,
                                    ),
                                    active: false,
                                  ),
                                ),
                                collapsed: Container(
                                  width: 0.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel27,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'List',
                                        active:
                                            FFAppState().activePage == 'List',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'lnvoice_List',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel28,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Preview',
                                        active: FFAppState().activePage ==
                                            'Preview',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Invoice_Preview',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel29,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Edit',
                                        active:
                                            FFAppState().activePage == 'Edit',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Invoice_Edit',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel30,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Add',
                                        active:
                                            FFAppState().activePage == 'Add',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Invoice_Add',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ].addToStart(const SizedBox(height: 4.0)),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: FFIcons.kchevronRight,
                                  collapseIcon: FFIcons.kchevronDown,
                                  iconSize: 22.0,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Container(
                            width: double.infinity,
                            color: const Color(0x00000000),
                            child: ExpandableNotifier(
                              controller:
                                  _model.expandableExpandableController11,
                              child: ExpandablePanel(
                                header: wrapWithModel(
                                  model: _model.menuOptionXModel11,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuOptionXWidget(
                                    title: 'Users',
                                    iconActive: const Icon(
                                      FFIcons.kusers,
                                      color: Colors.white,
                                      size: 22.0,
                                    ),
                                    iconInactive: Icon(
                                      FFIcons.kusers,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 22.0,
                                    ),
                                    active: false,
                                  ),
                                ),
                                collapsed: Container(
                                  width: 0.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel31,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'List',
                                        active:
                                            FFAppState().activePage == 'List',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Users',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel32,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Account',
                                        active: FFAppState().activePage ==
                                            'Account',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Users_Account',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ].addToStart(const SizedBox(height: 4.0)),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: FFIcons.kchevronRight,
                                  collapseIcon: FFIcons.kchevronDown,
                                  iconSize: 22.0,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Container(
                            width: double.infinity,
                            color: const Color(0x00000000),
                            child: ExpandableNotifier(
                              controller:
                                  _model.expandableExpandableController12,
                              child: ExpandablePanel(
                                header: wrapWithModel(
                                  model: _model.menuOptionXModel12,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuOptionXWidget(
                                    title: 'Roles & Permissions',
                                    iconActive: const Icon(
                                      FFIcons.ksettings,
                                      color: Colors.white,
                                      size: 22.0,
                                    ),
                                    iconInactive: Icon(
                                      FFIcons.ksettings,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 22.0,
                                    ),
                                    active: false,
                                  ),
                                ),
                                collapsed: Container(
                                  width: 0.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel33,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Roles',
                                        active:
                                            FFAppState().activePage == 'Roles',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Roles',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel34,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Permission',
                                        active: FFAppState().activePage ==
                                            'Permission',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Permissions',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ].addToStart(const SizedBox(height: 4.0)),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: FFIcons.kchevronRight,
                                  collapseIcon: FFIcons.kchevronDown,
                                  iconSize: 22.0,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Container(
                            width: double.infinity,
                            color: const Color(0x00000000),
                            child: ExpandableNotifier(
                              controller:
                                  _model.expandableExpandableController13,
                              child: ExpandablePanel(
                                header: wrapWithModel(
                                  model: _model.menuOptionXModel13,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuOptionXWidget(
                                    title: 'Pages',
                                    iconActive: const Icon(
                                      FFIcons.kfile,
                                      color: Colors.white,
                                      size: 22.0,
                                    ),
                                    iconInactive: Icon(
                                      FFIcons.kfile,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 22.0,
                                    ),
                                    active: false,
                                  ),
                                ),
                                collapsed: Container(
                                  width: 0.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel35,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'User Profile',
                                        active: FFAppState().activePage ==
                                            'User Profile',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Profile',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel36,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Account',
                                        active: FFAppState().activePage ==
                                            'Account',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Account',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel37,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'FAQ',
                                        active:
                                            FFAppState().activePage == 'FAQ',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'FAQ',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel38,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Pricing',
                                        active: FFAppState().activePage ==
                                            'Pricing',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Pricing',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        color: const Color(0x00000000),
                                        child: ExpandableNotifier(
                                          controller: _model
                                              .expandableExpandableController14,
                                          child: ExpandablePanel(
                                            header: wrapWithModel(
                                              model: _model.menuOptionXModel14,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MenuOptionXWidget(
                                                title: 'Misc',
                                                iconActive: const Icon(
                                                  FFIcons.kpoint,
                                                  color: Colors.white,
                                                  size: 22.0,
                                                ),
                                                iconInactive: Icon(
                                                  FFIcons.kpoint,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                                active: false,
                                              ),
                                            ),
                                            collapsed: Container(
                                              width: 0.0,
                                              height: 0.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                            expanded: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel39,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Error',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Error',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'ErrorPage',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel40,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Under Maintenance',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Under Maintenance',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'Under_Maintenance',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel41,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Not Authorized',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Not Authorized',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'Not_Authorized',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ].addToStart(
                                                  const SizedBox(height: 4.0)),
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                              expandIcon: FFIcons.kchevronRight,
                                              collapseIcon:
                                                  FFIcons.kchevronDown,
                                              iconSize: 22.0,
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].addToStart(const SizedBox(height: 4.0)),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: FFIcons.kchevronRight,
                                  collapseIcon: FFIcons.kchevronDown,
                                  iconSize: 22.0,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Container(
                            width: double.infinity,
                            color: const Color(0x00000000),
                            child: ExpandableNotifier(
                              controller:
                                  _model.expandableExpandableController15,
                              child: ExpandablePanel(
                                header: wrapWithModel(
                                  model: _model.menuOptionXModel15,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuOptionXWidget(
                                    title: 'Authentications',
                                    iconActive: const Icon(
                                      FFIcons.klock,
                                      color: Colors.white,
                                      size: 22.0,
                                    ),
                                    iconInactive: Icon(
                                      FFIcons.klock,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 22.0,
                                    ),
                                    active: false,
                                  ),
                                ),
                                collapsed: Container(
                                  width: 0.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        color: const Color(0x00000000),
                                        child: ExpandableNotifier(
                                          controller: _model
                                              .expandableExpandableController16,
                                          child: ExpandablePanel(
                                            header: wrapWithModel(
                                              model: _model.menuOptionXModel16,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MenuOptionXWidget(
                                                title: 'Login',
                                                iconActive: const Icon(
                                                  FFIcons.kpoint,
                                                  color: Colors.white,
                                                  size: 22.0,
                                                ),
                                                iconInactive: Icon(
                                                  FFIcons.kpoint,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                                active: false,
                                              ),
                                            ),
                                            collapsed: Container(
                                              width: 0.0,
                                              height: 0.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                            expanded: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel42,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Basic',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Basic',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'Login',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel43,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Cover',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Cover',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'LoginCover',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ].addToStart(
                                                  const SizedBox(height: 4.0)),
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                              expandIcon: FFIcons.kchevronRight,
                                              collapseIcon:
                                                  FFIcons.kchevronDown,
                                              iconSize: 22.0,
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        color: const Color(0x00000000),
                                        child: ExpandableNotifier(
                                          controller: _model
                                              .expandableExpandableController17,
                                          child: ExpandablePanel(
                                            header: wrapWithModel(
                                              model: _model.menuOptionXModel17,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MenuOptionXWidget(
                                                title: 'Register',
                                                iconActive: const Icon(
                                                  FFIcons.kpoint,
                                                  color: Colors.white,
                                                  size: 22.0,
                                                ),
                                                iconInactive: Icon(
                                                  FFIcons.kpoint,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                                active: false,
                                              ),
                                            ),
                                            collapsed: Container(
                                              width: 0.0,
                                              height: 0.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                            expanded: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel44,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Basic',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Basic',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'Register',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel45,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Cover',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Cover',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'RegisterCover',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel46,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Multi-steps',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Multi-steps',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'Register_MultiStep',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ].addToStart(
                                                  const SizedBox(height: 4.0)),
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                              expandIcon: FFIcons.kchevronRight,
                                              collapseIcon:
                                                  FFIcons.kchevronDown,
                                              iconSize: 22.0,
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        color: const Color(0x00000000),
                                        child: ExpandableNotifier(
                                          controller: _model
                                              .expandableExpandableController18,
                                          child: ExpandablePanel(
                                            header: wrapWithModel(
                                              model: _model.menuOptionXModel18,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MenuOptionXWidget(
                                                title: 'Verify Email',
                                                iconActive: const Icon(
                                                  FFIcons.kpoint,
                                                  color: Colors.white,
                                                  size: 22.0,
                                                ),
                                                iconInactive: Icon(
                                                  FFIcons.kpoint,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                                active: false,
                                              ),
                                            ),
                                            collapsed: Container(
                                              width: 0.0,
                                              height: 0.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                            expanded: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel47,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Basic',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Basic',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'Verify_Email',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel48,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Cover',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Cover',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'VerifyEmail_Cover',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ].addToStart(
                                                  const SizedBox(height: 4.0)),
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                              expandIcon: FFIcons.kchevronRight,
                                              collapseIcon:
                                                  FFIcons.kchevronDown,
                                              iconSize: 22.0,
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        color: const Color(0x00000000),
                                        child: ExpandableNotifier(
                                          controller: _model
                                              .expandableExpandableController19,
                                          child: ExpandablePanel(
                                            header: wrapWithModel(
                                              model: _model.menuOptionXModel19,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MenuOptionXWidget(
                                                title: 'Reset Password',
                                                iconActive: const Icon(
                                                  FFIcons.kpoint,
                                                  color: Colors.white,
                                                  size: 22.0,
                                                ),
                                                iconInactive: Icon(
                                                  FFIcons.kpoint,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                                active: false,
                                              ),
                                            ),
                                            collapsed: Container(
                                              width: 0.0,
                                              height: 0.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                            expanded: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel49,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Basic',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Basic',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'ResetPassword',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel50,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Cover',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Cover',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'ResetPassword_Cover',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ].addToStart(
                                                  const SizedBox(height: 4.0)),
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                              expandIcon: FFIcons.kchevronRight,
                                              collapseIcon:
                                                  FFIcons.kchevronDown,
                                              iconSize: 22.0,
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        color: const Color(0x00000000),
                                        child: ExpandableNotifier(
                                          controller: _model
                                              .expandableExpandableController20,
                                          child: ExpandablePanel(
                                            header: wrapWithModel(
                                              model: _model.menuOptionXModel20,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MenuOptionXWidget(
                                                title: 'Forgot Password',
                                                iconActive: const Icon(
                                                  FFIcons.kpoint,
                                                  color: Colors.white,
                                                  size: 22.0,
                                                ),
                                                iconInactive: Icon(
                                                  FFIcons.kpoint,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                                active: false,
                                              ),
                                            ),
                                            collapsed: Container(
                                              width: 0.0,
                                              height: 0.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                            expanded: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel51,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Basic',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Basic',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'ForgotPassword',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel52,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Cover',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Cover',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'ForgotPassword_Cover',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ].addToStart(
                                                  const SizedBox(height: 4.0)),
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                              expandIcon: FFIcons.kchevronRight,
                                              collapseIcon:
                                                  FFIcons.kchevronDown,
                                              iconSize: 22.0,
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        color: const Color(0x00000000),
                                        child: ExpandableNotifier(
                                          controller: _model
                                              .expandableExpandableController21,
                                          child: ExpandablePanel(
                                            header: wrapWithModel(
                                              model: _model.menuOptionXModel21,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: MenuOptionXWidget(
                                                title: 'Tow Steps',
                                                iconActive: const Icon(
                                                  FFIcons.kpoint,
                                                  color: Colors.white,
                                                  size: 22.0,
                                                ),
                                                iconInactive: Icon(
                                                  FFIcons.kpoint,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22.0,
                                                ),
                                                active: false,
                                              ),
                                            ),
                                            collapsed: Container(
                                              width: 0.0,
                                              height: 0.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                            expanded: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel53,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Basic',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Basic',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'TowStepVerification',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .menuOptionSubModel54,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: MenuOptionSubWidget(
                                                    title: 'Cover',
                                                    active: FFAppState()
                                                            .activePage ==
                                                        'Cover',
                                                    navigateAction: () async {
                                                      context.goNamed(
                                                        'TwoStepVerrication_Cover',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ].addToStart(
                                                  const SizedBox(height: 4.0)),
                                            ),
                                            theme: ExpandableThemeData(
                                              tapHeaderToExpand: true,
                                              tapBodyToExpand: false,
                                              tapBodyToCollapse: false,
                                              headerAlignment:
                                                  ExpandablePanelHeaderAlignment
                                                      .center,
                                              hasIcon: true,
                                              expandIcon: FFIcons.kchevronRight,
                                              collapseIcon:
                                                  FFIcons.kchevronDown,
                                              iconSize: 22.0,
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].addToStart(const SizedBox(height: 4.0)),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: FFIcons.kchevronRight,
                                  collapseIcon: FFIcons.kchevronDown,
                                  iconSize: 22.0,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Container(
                            width: double.infinity,
                            color: const Color(0x00000000),
                            child: ExpandableNotifier(
                              controller:
                                  _model.expandableExpandableController22,
                              child: ExpandablePanel(
                                header: wrapWithModel(
                                  model: _model.menuOptionXModel22,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuOptionXWidget(
                                    title: 'Wizard Examples',
                                    iconActive: const Icon(
                                      FFIcons.kfile,
                                      color: Colors.white,
                                      size: 22.0,
                                    ),
                                    iconInactive: Icon(
                                      FFIcons.kfile,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 22.0,
                                    ),
                                    active: false,
                                  ),
                                ),
                                collapsed: Container(
                                  width: 0.0,
                                  height: 0.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel55,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Checkout',
                                        active: FFAppState().activePage ==
                                            'Checkout',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Checkout',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.menuOptionSubModel56,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuOptionSubWidget(
                                        title: 'Create Deal',
                                        active: FFAppState().activePage ==
                                            'Create Deal',
                                        navigateAction: () async {
                                          context.goNamed(
                                            'Account',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ].addToStart(const SizedBox(height: 4.0)),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: FFIcons.kchevronRight,
                                  collapseIcon: FFIcons.kchevronDown,
                                  iconSize: 22.0,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'MISC',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Public Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuOptionWidget(
                            title: 'Support',
                            iconActive: const Icon(
                              FFIcons.klifebuoy,
                              color: Colors.white,
                              size: 22.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.klifebuoy,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 22.0,
                            ),
                            active: FFAppState().activePage == 'Email',
                            navigateAction: () async {},
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel6,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuOptionWidget(
                            title: 'Documentation',
                            iconActive: const Icon(
                              FFIcons.kfileDescription,
                              color: Colors.white,
                              size: 22.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kfileDescription,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 22.0,
                            ),
                            active: FFAppState().activePage == 'Email',
                            navigateAction: () async {},
                          ),
                        ),
                      ],
                    ),
                  ].divide(const SizedBox(height: 24.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
