import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_box_model.dart';
export 'icon_box_model.dart';

class IconBoxWidget extends StatefulWidget {
  const IconBoxWidget({
    super.key,
    required this.icon,
    required this.bg,
    required this.size,
  });

  final Widget? icon;
  final Color? bg;
  final double? size;

  @override
  State<IconBoxWidget> createState() => _IconBoxWidgetState();
}

class _IconBoxWidgetState extends State<IconBoxWidget> {
  late IconBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconBoxModel());

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
      width: widget!.size,
      height: widget!.size,
      decoration: BoxDecoration(
        color: widget!.bg,
        borderRadius: BorderRadius.circular(8.0),
        shape: BoxShape.rectangle,
      ),
      child: widget!.icon!,
    );
  }
}
