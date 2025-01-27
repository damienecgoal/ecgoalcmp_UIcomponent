import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'date_peker_model.dart';
export 'date_peker_model.dart';

class DatePekerWidget extends StatefulWidget {
  const DatePekerWidget({super.key});

  @override
  State<DatePekerWidget> createState() => _DatePekerWidgetState();
}

class _DatePekerWidgetState extends State<DatePekerWidget> {
  late DatePekerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DatePekerModel());

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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 300.0,
        height: 360.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: Color(0x29000000),
              offset: Offset(0.0, 0.0),
              spreadRadius: 4.0,
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: FlutterFlowCalendar(
            color: FlutterFlowTheme.of(context).primary,
            iconColor: FlutterFlowTheme.of(context).secondaryText,
            weekFormat: false,
            weekStartsMonday: false,
            initialDate: getCurrentTimestamp,
            rowHeight: 44.0,
            onChange: (DateTimeRange? newSelectedDate) {
              safeSetState(() => _model.calendarSelectedDay = newSelectedDate);
            },
            titleStyle: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: 'Public Sans',
                  color: FlutterFlowTheme.of(context).secondaryTitle,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                ),
            dayOfWeekStyle: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: 'Public Sans',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                ),
            dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Public Sans',
                  letterSpacing: 0.0,
                ),
            selectedDateStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Public Sans',
                  color: Colors.white,
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                ),
            inactiveDateStyle:
                FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Public Sans',
                      letterSpacing: 0.0,
                    ),
          ),
        ),
      ),
    );
  }
}
