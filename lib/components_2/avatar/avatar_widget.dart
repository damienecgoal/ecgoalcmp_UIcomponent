import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'avatar_model.dart';
export 'avatar_model.dart';

class AvatarWidget extends StatefulWidget {
  const AvatarWidget({
    super.key,
    required this.diameter,
    required this.image,
    this.status,
    required this.name,
    required this.color,
  });

  final double? diameter;
  final String? image;
  final Status? status;
  final String? name;
  final ColorStruct? color;

  @override
  State<AvatarWidget> createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  late AvatarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvatarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const AlignmentDirectional(1.0, 1.0),
      children: [
        Container(
          width: widget.diameter,
          height: widget.diameter,
          decoration: BoxDecoration(
            color: widget.color?.opacity,
            shape: BoxShape.circle,
          ),
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Builder(
            builder: (context) {
              if (widget.image != null && widget.image != '') {
                return Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: Container(
                      width: widget.diameter,
                      height: widget.diameter,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: CachedNetworkImage(
                        fadeInDuration: const Duration(milliseconds: 500),
                        fadeOutDuration: const Duration(milliseconds: 500),
                        imageUrl: widget.image!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              } else {
                return Text(
                  valueOrDefault<String>(
                    functions.avatarFill(widget.name),
                    'NA',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: widget.color?.opacity,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                );
              }
            },
          ),
        ),
        if (widget.status != null)
          Container(
            width: 14.0,
            height: 14.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                () {
                  if (widget.status == Status.online) {
                    return FlutterFlowTheme.of(context).success;
                  } else if (widget.status == Status.unavailable) {
                    return FlutterFlowTheme.of(context).warning;
                  } else {
                    return FlutterFlowTheme.of(context).error;
                  }
                }(),
                FlutterFlowTheme.of(context).success,
              ),
              shape: BoxShape.circle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                width: 2.0,
              ),
            ),
          ),
      ],
    );
  }
}
