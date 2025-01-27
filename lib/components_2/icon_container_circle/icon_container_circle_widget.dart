import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_container_circle_model.dart';
export 'icon_container_circle_model.dart';

class IconContainerCircleWidget extends StatefulWidget {
  const IconContainerCircleWidget({
    super.key,
    required this.icon,
    required this.bgcolor,
    required this.daimiter,
  });

  final Widget? icon;
  final Color? bgcolor;
  final double? daimiter;

  @override
  State<IconContainerCircleWidget> createState() =>
      _IconContainerCircleWidgetState();
}

class _IconContainerCircleWidgetState extends State<IconContainerCircleWidget> {
  late IconContainerCircleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconContainerCircleModel());

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
      width: widget!.daimiter,
      height: widget!.daimiter,
      decoration: BoxDecoration(
        color: widget!.bgcolor,
        shape: BoxShape.circle,
      ),
      child: widget!.icon!,
    );
  }
}
