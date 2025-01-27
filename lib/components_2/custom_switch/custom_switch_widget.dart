import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'custom_switch_model.dart';
export 'custom_switch_model.dart';

class CustomSwitchWidget extends StatefulWidget {
  const CustomSwitchWidget({
    super.key,
    bool? switchValue,
    required this.toggleAction,
  }) : switchValue = switchValue ?? false;

  final bool switchValue;
  final Future Function()? toggleAction;

  @override
  State<CustomSwitchWidget> createState() => _CustomSwitchWidgetState();
}

class _CustomSwitchWidgetState extends State<CustomSwitchWidget>
    with TickerProviderStateMixin {
  late CustomSwitchModel _model;

  var hasContainerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomSwitchModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(-18.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(-1.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.toggleAction?.call();
          if (widget.switchValue) {
            if (animationsMap['containerOnActionTriggerAnimation'] != null) {
              safeSetState(() => hasContainerTriggered = true);
              SchedulerBinding.instance.addPostFrameCallback((_) async =>
                  await animationsMap['containerOnActionTriggerAnimation']!
                      .controller
                      .forward(from: 0.0));
            }
          } else {
            if (animationsMap['containerOnActionTriggerAnimation'] != null) {
              safeSetState(() => hasContainerTriggered = true);
              SchedulerBinding.instance.addPostFrameCallback((_) async =>
                  await animationsMap['containerOnActionTriggerAnimation']!
                      .controller
                      .forward(from: 0.0)
                      .whenComplete(
                          animationsMap['containerOnActionTriggerAnimation']!
                              .controller
                              .reverse));
            }
          }
        },
        child: Container(
          width: 36.0,
          height: 20.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              widget.switchValue
                  ? FlutterFlowTheme.of(context).primary
                  : Colors.transparent,
              Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(50.0),
            border: Border.all(
              color: valueOrDefault<Color>(
                widget.switchValue
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryText,
                FlutterFlowTheme.of(context).secondaryText,
              ),
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(
                valueOrDefault<double>(
                  widget.switchValue ? 1.0 : -1.0,
                  -1.0,
                ),
                0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 3.0, 0.0),
              child: Container(
                width: 12.0,
                height: 12.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    widget.switchValue
                        ? Colors.white
                        : FlutterFlowTheme.of(context).secondaryText,
                    FlutterFlowTheme.of(context).secondaryText,
                  ),
                  shape: BoxShape.circle,
                ),
              ).animateOnActionTrigger(
                  animationsMap['containerOnActionTriggerAnimation']!,
                  hasBeenTriggered: hasContainerTriggered),
            ),
          ),
        ),
      ),
    );
  }
}
