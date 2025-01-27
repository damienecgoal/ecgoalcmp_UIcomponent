import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'user_card_model.dart';
export 'user_card_model.dart';

class UserCardWidget extends StatefulWidget {
  const UserCardWidget({
    super.key,
    required this.avatar,
    required this.name,
    required this.color,
  });

  final String? avatar;
  final String? name;
  final ColorStruct? color;

  @override
  State<UserCardWidget> createState() => _UserCardWidgetState();
}

class _UserCardWidgetState extends State<UserCardWidget> {
  late UserCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserCardModel());

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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 34.0,
            height: 34.0,
            decoration: BoxDecoration(
              color: widget.color?.opacity,
              shape: BoxShape.circle,
            ),
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Builder(
              builder: (context) {
                if (widget.avatar != null && widget.avatar != '') {
                  return Container(
                    width: 42.0,
                    height: 42.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CachedNetworkImage(
                      fadeInDuration: const Duration(milliseconds: 500),
                      fadeOutDuration: const Duration(milliseconds: 500),
                      imageUrl: widget.avatar!,
                      fit: BoxFit.cover,
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
                          color: widget.color?.color,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  );
                }
              },
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.name,
              'Unknown',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(const SizedBox(width: 14.0)),
      ),
    );
  }
}
