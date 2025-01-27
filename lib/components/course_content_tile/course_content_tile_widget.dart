import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'course_content_tile_model.dart';
export 'course_content_tile_model.dart';

class CourseContentTileWidget extends StatefulWidget {
  const CourseContentTileWidget({
    super.key,
    required this.chapterTitle,
    required this.currentChapter,
    required this.totalChapters,
    required this.duration,
  });

  final String? chapterTitle;
  final int? currentChapter;
  final int? totalChapters;
  final String? duration;

  @override
  State<CourseContentTileWidget> createState() =>
      _CourseContentTileWidgetState();
}

class _CourseContentTileWidgetState extends State<CourseContentTileWidget> {
  late CourseContentTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourseContentTileModel());

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
      width: double.infinity,
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              valueOrDefault<String>(
                widget.chapterTitle,
                'NA',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Public Sans',
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Text(
              '${widget.currentChapter?.toString()} / ${widget.totalChapters?.toString()} | ${widget.duration}',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Public Sans',
                    color: FlutterFlowTheme.of(context).secondaryTitle,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ].divide(const SizedBox(height: 6.0)),
        ),
      ),
    );
  }
}
