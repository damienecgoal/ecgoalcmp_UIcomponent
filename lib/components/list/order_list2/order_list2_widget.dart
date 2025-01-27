import '/components/avatar_2/avatar2_widget.dart';
import '/components/nodal/order_list_nodal/order_list_nodal_widget.dart';
import '/components_2/payment_status/payment_status_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'order_list2_model.dart';
export 'order_list2_model.dart';

class OrderList2Widget extends StatefulWidget {
  const OrderList2Widget({
    super.key,
    required this.id,
    required this.date,
    this.avatar,
    required this.name,
    required this.email,
    required this.paymentStatus,
    required this.paymentcolor,
    required this.status,
    required this.statusColor,
    required this.statusBG,
    required this.methodImage,
    required this.number,
  });

  final String? id;
  final String? date;
  final String? avatar;
  final String? name;
  final String? email;
  final String? paymentStatus;
  final Color? paymentcolor;
  final String? status;
  final Color? statusColor;
  final Color? statusBG;
  final String? methodImage;
  final String? number;

  @override
  State<OrderList2Widget> createState() => _OrderList2WidgetState();
}

class _OrderList2WidgetState extends State<OrderList2Widget> {
  late OrderList2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderList2Model());

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 12.0),
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
                    unselectedWidgetColor:
                        FlutterFlowTheme.of(context).secondaryText,
                  ),
                  child: Checkbox(
                    value: _model.checkboxValue ??= false,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.checkboxValue = newValue!);
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
                  flex: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget!.id,
                          'na',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget!.date,
                          'na',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              color:
                                  FlutterFlowTheme.of(context).secondaryTitle,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.avatar2Model,
                        updateCallback: () => safeSetState(() {}),
                        child: Avatar2Widget(
                          diameter: 40.0,
                          image: widget!.avatar!,
                          name: widget!.name!,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            child: Text(
                              valueOrDefault<String>(
                                widget!.name,
                                'na',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Public Sans',
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered!
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      FlutterFlowTheme.of(context).primaryText,
                                    ),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegionHovered = false);
                            }),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget!.email,
                              'na',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Public Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.paymentStatusModel,
                        updateCallback: () => safeSetState(() {}),
                        child: PaymentStatusWidget(
                          status: widget!.paymentStatus!,
                          color: widget!.paymentcolor!,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.statusCardModel,
                        updateCallback: () => safeSetState(() {}),
                        child: StatusCardWidget(
                          title: widget!.status!,
                          titleColor: widget!.statusColor!,
                          bgColor: widget!.statusBG!,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          widget!.methodImage!,
                          width: 20.0,
                          height: 20.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        '***',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              color:
                                  FlutterFlowTheme.of(context).secondaryTitle,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget!.number,
                          'na',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              color:
                                  FlutterFlowTheme.of(context).secondaryTitle,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ].divide(SizedBox(width: 10.0)),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Builder(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showAlignedDialog(
                              context: context,
                              isGlobal: false,
                              avoidOverflow: false,
                              targetAnchor: AlignmentDirectional(-1.0, 1.0)
                                  .resolve(Directionality.of(context)),
                              followerAnchor: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              builder: (dialogContext) {
                                return Material(
                                  color: Colors.transparent,
                                  child: WebViewAware(
                                    child: OrderListNodalWidget(),
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
                    ].divide(SizedBox(width: 6.0)),
                  ),
                ),
              ].divide(SizedBox(width: 24.0)),
            ),
          ),
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).lineColor,
          ),
        ],
      ),
    );
  }
}
