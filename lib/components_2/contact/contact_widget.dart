import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'contact_model.dart';
export 'contact_model.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({
    super.key,
    required this.contact,
    bool? selected,
    required this.selectAction,
  }) : selected = selected ?? false;

  final UserStruct? contact;
  final bool selected;
  final Future Function(UserStruct? user)? selectAction;

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  late ContactModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.selectAction?.call(
          widget.contact,
        );
      },
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget.selected
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).secondaryBackground,
            FlutterFlowTheme.of(context).secondaryBackground,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: const AlignmentDirectional(1.0, 1.0),
              children: [
                Container(
                  width: 72.0,
                  height: 72.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        valueOrDefault<String>(
                          widget.contact?.avatar,
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/hff0usgdp2cl/user.png',
                        ),
                      ).image,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 16.0,
                  height: 16.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      () {
                        if (widget.contact?.status == Status.online) {
                          return FlutterFlowTheme.of(context).success;
                        } else if (widget.contact?.status ==
                            Status.unavailable) {
                          return FlutterFlowTheme.of(context).warning;
                        } else {
                          return FlutterFlowTheme.of(context).error;
                        }
                      }(),
                      FlutterFlowTheme.of(context).error,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.contact?.name,
                      'Unknown',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Public Sans',
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.contact?.role,
                      'Default',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Public Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(const SizedBox(height: 8.0)),
              ),
            ),
          ].divide(const SizedBox(width: 12.0)).addToStart(const SizedBox(width: 16.0)),
        ),
      ),
    );
  }
}
