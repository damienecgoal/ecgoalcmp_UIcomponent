import '/components/up_down_text/up_down_text_widget.dart';
import '/components_2/icon_container/icon_container_widget.dart';
import '/components_2/title_subtitle/title_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'earning_reports_model.dart';
export 'earning_reports_model.dart';

class EarningReportsWidget extends StatefulWidget {
  const EarningReportsWidget({
    super.key,
    required this.icon,
    required this.bg,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.cevron,
    required this.text,
    required this.color,
  });

  final Widget? icon;
  final Color? bg;
  final String? title;
  final String? subtitle;
  final String? amount;
  final Widget? cevron;
  final String? text;
  final Color? color;

  @override
  State<EarningReportsWidget> createState() => _EarningReportsWidgetState();
}

class _EarningReportsWidgetState extends State<EarningReportsWidget> {
  late EarningReportsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EarningReportsModel());

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
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          wrapWithModel(
            model: _model.iconContainerModel,
            updateCallback: () => safeSetState(() {}),
            child: IconContainerWidget(
              icon: widget.icon!,
              bgcolor: widget.bg!,
            ),
          ),
          Expanded(
            child: wrapWithModel(
              model: _model.titleSubtitleModel,
              updateCallback: () => safeSetState(() {}),
              child: TitleSubtitleWidget(
                title: widget.title!,
                subtitle: widget.subtitle!,
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.amount,
                  'na',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Public Sans',
                      color: FlutterFlowTheme.of(context).secondaryTitle,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                    ),
              ),
              wrapWithModel(
                model: _model.upDownTextModel,
                updateCallback: () => safeSetState(() {}),
                child: UpDownTextWidget(
                  chavron: widget.cevron!,
                  text: widget.text!,
                  color: widget.color!,
                ),
              ),
            ].divide(const SizedBox(width: 16.0)),
          ),
        ].divide(const SizedBox(width: 14.0)),
      ),
    );
  }
}
