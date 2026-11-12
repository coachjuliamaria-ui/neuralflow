import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'audio_card3_model.dart';
export 'audio_card3_model.dart';

class AudioCard3Widget extends StatefulWidget {
  const AudioCard3Widget({
    super.key,
    String? title,
    String? desc,
    Color? accent,
    String? mode,
    String? time,
    this.freqBase,
    this.freqBatida,
  })  : this.title = title ?? 'Foco Profundo Delta',
        this.desc = desc ??
            'Ondas binaurais projetadas para máxima concentração e produtividade.',
        this.accent = accent ?? const Color(0x00000000),
        this.mode = mode ?? 'Trabalho',
        this.time = time ?? '45 min';

  final String title;
  final String desc;
  final Color accent;
  final String mode;
  final String time;
  final double? freqBase;
  final double? freqBatida;

  @override
  State<AudioCard3Widget> createState() => _AudioCard3WidgetState();
}

class _AudioCard3WidgetState extends State<AudioCard3Widget> {
  late AudioCard3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AudioCard3Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF111111),
            borderRadius: BorderRadius.circular(24.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Color(0xFF222222),
              width: 1.0,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget!.title,
                                'Foco Profundo Delta',
                              ),
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              valueOrDefault<String>(
                                widget!.desc,
                                'Ondas binaurais projetadas para máxima concentração e produtividade.',
                              ),
                              maxLines: 2,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: widget!.accent,
                          borderRadius: BorderRadius.circular(9999.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Container(
                            child: Icon(
                              Icons.check_circle_rounded,
                              color: valueOrDefault<Color>(
                                widget!.accent,
                                Color(0xFF00E676),
                              ),
                              size: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'MODO',
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
                                          .alternate,
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
                              Text(
                                valueOrDefault<String>(
                                  widget!.mode,
                                  'Trabalho',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color: valueOrDefault<Color>(
                                        widget!.accent,
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                          Container(
                            width: 1.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'DURAÇÃO',
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
                                          .secondaryBackground,
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
                              Text(
                                valueOrDefault<String>(
                                  widget!.time,
                                  '45 min',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                      Container(
                        width: 42.0,
                        height: 42.0,
                        decoration: BoxDecoration(
                          color: widget!.accent,
                          borderRadius: BorderRadius.circular(9999.0),
                          shape: BoxShape.rectangle,
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (!FFAppState().sonsOffline.contains(
                                '${widget!.title}-${widget!.freqBase?.toString()}')) {
                              if (FFAppState().somTocando) {
                                await actions.tocarSomBinauralWebEMobile(
                                  widget!.freqBase!,
                                  widget!.freqBatida!,
                                  FFAppState().somTocando.toString(),
                                );
                                FFAppState().somTocando = false;
                                safeSetState(() {});
                              } else {
                                await actions.tocarSomBinauralWebEMobile(
                                  widget!.freqBase!,
                                  widget!.freqBatida!,
                                  'stop',
                                );
                                FFAppState().somTocando = true;
                                safeSetState(() {});
                              }
                            }
                          },
                          child: Icon(
                            Icons.play_arrow_rounded,
                            color: Color(0xFF7F00FF),
                            size: 40.0,
                          ),
                        ),
                      ),
                    ],
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
