import '/components_2/icon_container_circle/icon_container_circle_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'on_route_vehicles_model.dart';
export 'on_route_vehicles_model.dart';

class OnRouteVehiclesWidget extends StatefulWidget {
  const OnRouteVehiclesWidget({
    super.key,
    required this.location,
    required this.startingroute,
    required this.endinhRoute,
    required this.warning,
    required this.warrcolor,
    required this.warbg,
    required this.persentage,
    required this.progress,
  });

  final String? location;
  final String? startingroute;
  final String? endinhRoute;
  final String? warning;
  final Color? warrcolor;
  final Color? warbg;
  final String? persentage;
  final double? progress;

  @override
  State<OnRouteVehiclesWidget> createState() => _OnRouteVehiclesWidgetState();
}

class _OnRouteVehiclesWidgetState extends State<OnRouteVehiclesWidget> {
  late OnRouteVehiclesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnRouteVehiclesModel());

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
                  flex: 6,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.iconContainerCircleModel,
                        updateCallback: () => safeSetState(() {}),
                        child: IconContainerCircleWidget(
                          icon: Icon(
                            FFIcons.ktruck,
                            color: FlutterFlowTheme.of(context).secondaryTitle,
                            size: 22.0,
                          ),
                          bgcolor: Color(0x33A8AAAE),
                          daimiter: 40.0,
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget!.location,
                          'na',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              color:
                                  FlutterFlowTheme.of(context).secondaryTitle,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget!.startingroute,
                          'na',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              color:
                                  FlutterFlowTheme.of(context).secondaryTitle,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget!.endinhRoute,
                          'na',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              color:
                                  FlutterFlowTheme.of(context).secondaryTitle,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.statusCardModel,
                        updateCallback: () => safeSetState(() {}),
                        child: StatusCardWidget(
                          title: widget!.warning!,
                          titleColor: widget!.warrcolor!,
                          bgColor: widget!.warbg!,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: LinearPercentIndicator(
                          percent: widget!.progress!,
                          lineHeight: 8.0,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: FlutterFlowTheme.of(context).primary,
                          backgroundColor:
                              FlutterFlowTheme.of(context).lineColor,
                          barRadius: Radius.circular(50.0),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget!.persentage,
                          'na',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
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
