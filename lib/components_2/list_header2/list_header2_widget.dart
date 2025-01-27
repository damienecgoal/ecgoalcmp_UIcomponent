import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_header2_model.dart';
export 'list_header2_model.dart';

class ListHeader2Widget extends StatefulWidget {
  const ListHeader2Widget({
    super.key,
    this.title,
  });

  final String? title;

  @override
  State<ListHeader2Widget> createState() => _ListHeader2WidgetState();
}

class _ListHeader2WidgetState extends State<ListHeader2Widget> {
  late ListHeader2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListHeader2Model());

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
      width: 190.0,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            valueOrDefault<String>(
              widget.title,
              'na',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  color: FlutterFlowTheme.of(context).secondaryHeader,
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                ),
          ),
        ],
      ),
    );
  }
}
