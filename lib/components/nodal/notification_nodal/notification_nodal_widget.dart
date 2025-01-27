import '/components_2/message/message_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'notification_nodal_model.dart';
export 'notification_nodal_model.dart';

class NotificationNodalWidget extends StatefulWidget {
  const NotificationNodalWidget({super.key});

  @override
  State<NotificationNodalWidget> createState() =>
      _NotificationNodalWidgetState();
}

class _NotificationNodalWidgetState extends State<NotificationNodalWidget> {
  late NotificationNodalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationNodalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 56.0, 0.0, 0.0),
      child: Container(
        width: 370.0,
        height: 500.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 20.0,
              color: Color(0x29000000),
              offset: Offset(0.0, 0.0),
              spreadRadius: 4.0,
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(18.0, 20.0, 18.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Notification',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Public Sans',
                              color:
                                  FlutterFlowTheme.of(context).secondaryTitle,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Icon(
                        FFIcons.kmailOpened,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.messageModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: MessageWidget(
                        avatar:
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/yeybej8fe3x9/11.png',
                        name: 'Congratulation Lettie 🎉',
                        message: 'Won the monthly best seller gold badge',
                        time: random_data.randomDate(),
                        seen: false,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.messageModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: MessageWidget(
                        name: 'Charles Franklin',
                        message: 'Accepted your connection',
                        time: random_data.randomDate(),
                        seen: false,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.messageModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: MessageWidget(
                        avatar:
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/mteufgo4w1e1/2.png',
                        name: 'New Message ✉️',
                        message: 'You have new message from Natalie',
                        time: random_data.randomDate(),
                        seen: false,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.messageModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: MessageWidget(
                        name: 'Whoo! You have new order 🛒',
                        message: 'ACME Inc. made new order \$1,154',
                        time: random_data.randomDate(),
                        seen: false,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.messageModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: MessageWidget(
                        avatar:
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/p3qnpj26tlmr/7.png',
                        name: 'Application has been approved 🚀',
                        message:
                            'Your ABC project application has been approved.',
                        time: random_data.randomDate(),
                        seen: false,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.messageModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: MessageWidget(
                        avatar:
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/lovrmvpulcex/6.png',
                        name: 'Monthly report is generated',
                        message: 'July monthly financial report is generated',
                        time: random_data.randomDate(),
                        seen: false,
                      ),
                    ),
                  ].addToEnd(const SizedBox(height: 20.0)),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(6.0, 3.0, 6.0, 3.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'View all notifications',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 42.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Public Sans',
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
