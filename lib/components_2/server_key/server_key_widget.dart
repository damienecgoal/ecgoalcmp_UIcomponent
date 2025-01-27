import '/components/nodal/shipping_action/shipping_action_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'server_key_model.dart';
export 'server_key_model.dart';

class ServerKeyWidget extends StatefulWidget {
  const ServerKeyWidget({
    super.key,
    required this.title,
    required this.url,
    required this.create,
    required this.status,
    required this.color,
    required this.bg,
  });

  final String? title;
  final String? url;
  final String? create;
  final String? status;
  final Color? color;
  final Color? bg;

  @override
  State<ServerKeyWidget> createState() => _ServerKeyWidgetState();
}

class _ServerKeyWidgetState extends State<ServerKeyWidget> {
  late ServerKeyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServerKeyModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).unselectBox,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget.title,
                        'na',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Public Sans',
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    wrapWithModel(
                      model: _model.statusCardModel,
                      updateCallback: () => safeSetState(() {}),
                      child: StatusCardWidget(
                        title: widget.status!,
                        titleColor: widget.color!,
                        bgColor: widget.bg!,
                      ),
                    ),
                  ].divide(const SizedBox(width: 16.0)),
                ),
                Builder(
                  builder: (context) => InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      showAlignedDialog(
                        barrierColor: const Color(0x34000000),
                        context: context,
                        isGlobal: false,
                        avoidOverflow: false,
                        targetAnchor: const AlignmentDirectional(-1.0, 6.0)
                            .resolve(Directionality.of(context)),
                        followerAnchor: const AlignmentDirectional(0.0, 0.0)
                            .resolve(Directionality.of(context)),
                        builder: (dialogContext) {
                          return const Material(
                            color: Colors.transparent,
                            child: WebViewAware(
                              child: ShippingActionWidget(),
                            ),
                          );
                        },
                      );
                    },
                    child: Icon(
                      FFIcons.kdotsVertical,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.url,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Public Sans',
                        color: FlutterFlowTheme.of(context).secondaryTitle,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  onEnter: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered = true);
                  }),
                  onExit: ((event) async {
                    safeSetState(() => _model.mouseRegionHovered = false);
                  }),
                  child: Icon(
                    FFIcons.kcopy,
                    color: valueOrDefault<Color>(
                      _model.mouseRegionHovered
                          ? FlutterFlowTheme.of(context).secondaryTitle
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    size: 24.0,
                  ),
                ),
              ].divide(const SizedBox(width: 12.0)),
            ),
            Text(
              valueOrDefault<String>(
                widget.create,
                'na',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Public Sans',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ].divide(const SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
