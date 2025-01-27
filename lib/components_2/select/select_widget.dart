import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'select_model.dart';
export 'select_model.dart';

class SelectWidget extends StatefulWidget {
  const SelectWidget({
    super.key,
    required this.border,
    required this.fill,
    required this.white,
  });

  final Color? border;
  final Color? fill;
  final Color? white;

  @override
  State<SelectWidget> createState() => _SelectWidgetState();
}

class _SelectWidgetState extends State<SelectWidget> {
  late SelectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectModel());

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
      width: 22.0,
      height: 22.0,
      decoration: BoxDecoration(
        color: widget.fill,
        shape: BoxShape.circle,
        border: Border.all(
          color: valueOrDefault<Color>(
            widget.border,
            FlutterFlowTheme.of(context).lineColor,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: widget.white,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
