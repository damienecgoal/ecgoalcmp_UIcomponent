import '/components_2/icon_container/icon_container_widget.dart';
import '/components_2/title_subtitle/title_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'transactions_model.dart';
export 'transactions_model.dart';

class TransactionsWidget extends StatefulWidget {
  const TransactionsWidget({
    super.key,
    required this.icon,
    required this.bg,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.color,
  });

  final Widget? icon;
  final Color? bg;
  final String? title;
  final String? subtitle;
  final String? amount;
  final Color? color;

  @override
  State<TransactionsWidget> createState() => _TransactionsWidgetState();
}

class _TransactionsWidgetState extends State<TransactionsWidget> {
  late TransactionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionsModel());

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
          Text(
            valueOrDefault<String>(
              widget.amount,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: widget.color,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ].divide(const SizedBox(width: 14.0)),
      ),
    );
  }
}
