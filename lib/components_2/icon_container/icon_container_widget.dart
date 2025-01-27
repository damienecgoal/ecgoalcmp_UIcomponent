import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_container_model.dart';
export 'icon_container_model.dart';

class IconContainerWidget extends StatefulWidget {
  const IconContainerWidget({
    super.key,
    required this.icon,
    required this.bgcolor,
  });

  final Widget? icon;
  final Color? bgcolor;

  @override
  State<IconContainerWidget> createState() => _IconContainerWidgetState();
}

class _IconContainerWidgetState extends State<IconContainerWidget> {
  late IconContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconContainerModel());

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
      width: 46.0,
      height: 46.0,
      decoration: BoxDecoration(
        color: widget!.bgcolor,
        borderRadius: BorderRadius.circular(8.0),
        shape: BoxShape.rectangle,
      ),
      child: widget!.icon!,
    );
  }
}
