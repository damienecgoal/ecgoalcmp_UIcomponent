import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'up_down_text_model.dart';
export 'up_down_text_model.dart';

class UpDownTextWidget extends StatefulWidget {
  const UpDownTextWidget({
    super.key,
    required this.chavron,
    required this.text,
    required this.color,
  });

  final Widget? chavron;
  final String? text;
  final Color? color;

  @override
  State<UpDownTextWidget> createState() => _UpDownTextWidgetState();
}

class _UpDownTextWidgetState extends State<UpDownTextWidget> {
  late UpDownTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpDownTextModel());

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
          widget.chavron!,
          Text(
            valueOrDefault<String>(
              widget.text,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: widget.color,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(const SizedBox(width: 6.0)),
      ),
    );
  }
}
