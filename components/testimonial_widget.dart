import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'testimonial_model.dart';
export 'testimonial_model.dart';

class TestimonialWidget extends StatefulWidget {
  const TestimonialWidget({
    super.key,
    String? quote,
    String? name,
    String? role,
  })  : this.quote = quote ??
            'Eu levava 1 hora para focar. Com o NeuralFlow, entro no \'flow\' em menos de 5 minutos de áudio.',
        this.name = name ?? 'Ricardo Silva',
        this.role = role ?? 'Desenvolvedor Senior';

  final String quote;
  final String name;
  final String role;

  @override
  State<TestimonialWidget> createState() => _TestimonialWidgetState();
}

class _TestimonialWidgetState extends State<TestimonialWidget> {
  late TestimonialModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestimonialModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    valueOrDefault<String>(
                      '“${widget!.quote}”',
                      '“Eu levava 1 hora para focar. Com o NeuralFlow, entro no \'flow\' em menos de 5 minutos de áudio.”',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FontStyle.italic,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle: FontStyle.italic,
                          lineHeight: 1.4,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 32.0,
                        height: 32.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                          shape: BoxShape.circle,
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget!.name,
                            'Ricardo Silva',
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 12.16,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget!.name,
                              'Ricardo Silva',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget!.role,
                              'Desenvolvedor Senior',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ].divide(SizedBox(height: 0.0)),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
