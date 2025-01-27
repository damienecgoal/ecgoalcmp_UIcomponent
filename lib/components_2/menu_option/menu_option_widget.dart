import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menu_option_model.dart';
export 'menu_option_model.dart';

class MenuOptionWidget extends StatefulWidget {
  const MenuOptionWidget({
    super.key,
    required this.title,
    required this.iconActive,
    required this.iconInactive,
    required this.active,
    required this.navigateAction,
  });

  final String? title;
  final Widget? iconActive;
  final Widget? iconInactive;
  final bool? active;
  final Future Function()? navigateAction;

  @override
  State<MenuOptionWidget> createState() => _MenuOptionWidgetState();
}

class _MenuOptionWidgetState extends State<MenuOptionWidget> {
  late MenuOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuOptionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await widget.navigateAction?.call();
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeInOut,
            width: double.infinity,
            height: 48.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                () {
                  if (widget.active!) {
                    return FlutterFlowTheme.of(context).primary;
                  } else if (_model.mouseRegionHovered) {
                    return const Color(0xFF343951);
                  } else {
                    return FlutterFlowTheme.of(context).secondaryBackground;
                  }
                }(),
                FlutterFlowTheme.of(context).secondaryBackground,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                widget.active! ? widget.iconActive! : widget.iconInactive!,
                Text(
                  widget.title!,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Noto Sans HK',
                        color: valueOrDefault<Color>(
                          widget.active!
                              ? Colors.white
                              : FlutterFlowTheme.of(context).secondaryText,
                          FlutterFlowTheme.of(context).secondaryText,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ]
                  .divide(const SizedBox(width: 12.0))
                  .addToStart(const SizedBox(width: 16.0))
                  .addToEnd(const SizedBox(width: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
