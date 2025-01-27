import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'avatar2_model.dart';
export 'avatar2_model.dart';

class Avatar2Widget extends StatefulWidget {
  const Avatar2Widget({
    super.key,
    required this.diameter,
    required this.image,
    required this.name,
  });

  final double? diameter;
  final String? image;
  final String? name;

  @override
  State<Avatar2Widget> createState() => _Avatar2WidgetState();
}

class _Avatar2WidgetState extends State<Avatar2Widget> {
  late Avatar2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Avatar2Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.color = functions.randomColor();
      safeSetState(() {});
    });

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
      alignment: AlignmentDirectional(1.0, 1.0),
      children: [
        Container(
          width: widget!.diameter,
          height: widget!.diameter,
          decoration: BoxDecoration(
            color: _model.color?.opacity,
            shape: BoxShape.circle,
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Builder(
            builder: (context) {
              if (widget!.image != null && widget!.image != '') {
                return Container(
                  width: widget!.diameter,
                  height: widget!.diameter,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CachedNetworkImage(
                    fadeInDuration: Duration(milliseconds: 500),
                    fadeOutDuration: Duration(milliseconds: 500),
                    imageUrl: widget!.image!,
                    fit: BoxFit.cover,
                  ),
                );
              } else {
                return Text(
                  valueOrDefault<String>(
                    functions.avatarFill(widget!.name),
                    'NA',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: _model.color?.color,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
