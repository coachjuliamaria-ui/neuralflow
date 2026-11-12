import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'frequency_control_model.dart';
export 'frequency_control_model.dart';

class FrequencyControlWidget extends StatefulWidget {
  const FrequencyControlWidget({
    super.key,
    String? label,
    String? value,
    String? percent,
    this.icon,
  })  : this.label = label ?? 'Base Frequency',
        this.value = value ?? '432 Hz',
        this.percent = percent ?? '40';

  final String label;
  final String value;
  final String percent;
  final Widget? icon;

  @override
  State<FrequencyControlWidget> createState() => _FrequencyControlWidgetState();
}

class _FrequencyControlWidgetState extends State<FrequencyControlWidget> {
  late FrequencyControlModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FrequencyControlModel());

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
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Color(0xFF673AB7),
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Ecossistema Completo',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              font: GoogleFonts.interTight(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                              color: Color(0xFFF6F4F8),
                              fontSize: 20.0,
                              letterSpacing: 2.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                  Icon(
                    Icons.diamond_outlined,
                    color: Color(0xFFF6F4F8),
                    size: 24.0,
                  ),
                ],
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
