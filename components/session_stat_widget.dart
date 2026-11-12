import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'session_stat_model.dart';
export 'session_stat_model.dart';

class SessionStatWidget extends StatefulWidget {
  const SessionStatWidget({
    super.key,
    this.icon,
    String? value,
    String? label,
  })  : this.value = value ?? '320',
        this.label = label ?? 'Minutos';

  final Widget? icon;
  final String value;
  final String label;

  @override
  State<SessionStatWidget> createState() => _SessionStatWidgetState();
}

class _SessionStatWidgetState extends State<SessionStatWidget> {
  late SessionStatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SessionStatModel());

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
        color: Color(0x66FFFFFF),
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.transparent,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget!.icon!,
              Text(
                valueOrDefault<String>(
                  widget!.value,
                  '320',
                ),
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      font: GoogleFonts.interTight(
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget!.label,
                  'Minutos',
                ),
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
