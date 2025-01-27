import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'browser_states_model.dart';
export 'browser_states_model.dart';

class BrowserStatesWidget extends StatefulWidget {
  const BrowserStatesWidget({
    super.key,
    required this.image,
    required this.name,
    required this.states,
    double? persentage,
    required this.progrescolor,
  }) : this.persentage = persentage ?? 0.0;

  final String? image;
  final String? name;
  final String? states;
  final double persentage;
  final Color? progrescolor;

  @override
  State<BrowserStatesWidget> createState() => _BrowserStatesWidgetState();
}

class _BrowserStatesWidgetState extends State<BrowserStatesWidget> {
  late BrowserStatesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BrowserStatesModel());

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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 32.0,
            height: 32.0,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              widget!.image!,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget!.name,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget!.states,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          CircularPercentIndicator(
            percent: widget!.persentage,
            radius: 17.0,
            lineWidth: 3.0,
            animation: true,
            animateFromLastPercent: true,
            progressColor: widget!.progrescolor,
            backgroundColor: FlutterFlowTheme.of(context).lineColor,
          ),
        ].divide(SizedBox(width: 16.0)),
      ),
    );
  }
}
