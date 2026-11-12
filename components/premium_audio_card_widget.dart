import '/backend/schema/structs/index.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'premium_audio_card_model.dart';
export 'premium_audio_card_model.dart';

class PremiumAudioCardWidget extends StatefulWidget {
  const PremiumAudioCardWidget({
    super.key,
    String? title,
    String? desc,
    String? duration,
    String? mode,
    this.urlaudioFrequencia,
    this.urlaudioFundo,
    this.frequenciaBaseNum,
    required this.frequenciaBinauralNum,
    required this.categoria,
  })  : this.title = title ?? 'Alta Performance',
        this.desc =
            desc ?? 'Otimize suas ondas Gamma para produtividade extrema.',
        this.duration = duration ?? '45 min',
        this.mode = mode ?? 'Use fones de ouvido';

  final String title;
  final String desc;
  final String duration;
  final String mode;
  final String? urlaudioFrequencia;
  final String? urlaudioFundo;
  final double? frequenciaBaseNum;
  final double? frequenciaBinauralNum;
  final String? categoria;

  @override
  State<PremiumAudioCardWidget> createState() => _PremiumAudioCardWidgetState();
}

class _PremiumAudioCardWidgetState extends State<PremiumAudioCardWidget> {
  late PremiumAudioCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PremiumAudioCardModel());

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

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Color(0xFF7A1AFA),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 64.0,
                height: 64.0,
                constraints: BoxConstraints(
                  minWidth: 1.0,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).primary,
                      FlutterFlowTheme.of(context).primaryText
                    ],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                  shape: BoxShape.rectangle,
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Icon(
                  Icons.graphic_eq_rounded,
                  color: Color(0xFF7A1AFA),
                  size: 32.0,
                ),
              ),
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
                        'Alta Performance',
                      ),
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            lineHeight: 1.4,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget!.desc,
                        'Otimize suas ondas Gamma para produtividade extrema.',
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontWeight,
                              fontStyle: FontStyle.italic,
                            ),
                            color: FlutterFlowTheme.of(context).alternate,
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontWeight,
                            fontStyle: FontStyle.italic,
                            lineHeight: 1.4,
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment:
                          (FFMainAxisAlignment.center).flutterValue,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.schedule_rounded,
                              color: FlutterFlowTheme.of(context).alternate,
                              size: 14.0,
                            ),
                            Text(
                              valueOrDefault<String>(
                                widget!.duration,
                                '45 min',
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
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
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
                          ].divide(SizedBox(width: 4.0)),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().addToSonSalvo(ReceitaSomStruct(
                              titulo: widget!.title,
                              descricao: widget!.desc,
                              modo: widget!.mode,
                              freqBase: widget!.frequenciaBaseNum,
                              freqBatida: widget!.frequenciaBinauralNum,
                              duracaoTempo: widget!.duration,
                              categoria: widget!.categoria,
                            ));
                            safeSetState(() {});
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Salvo para ouvir offline',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          },
                          child: Icon(
                            Icons.downloading,
                            color: FlutterFlowTheme.of(context).warning,
                            size: 24.0,
                          ),
                        ),
                      ].divide(SizedBox(width: 4.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment:
                          (FFMainAxisAlignment.center).flutterValue,
                      children: [
                        Icon(
                          Icons.headphones_rounded,
                          color: Color(0xFF00E676),
                          size: 14.0,
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget!.mode,
                            'Use fones.',
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF00E676),
                                    fontSize: 12.0,
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
                      ],
                    ),
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 64.0,
                    fillColor: Colors.transparent,
                    icon: Icon(
                      Icons.play_circle_filled_rounded,
                      color: Color(0xFF7A1AFA),
                      size: 48.0,
                    ),
                    onPressed: () async {
                      if (FFAppState().sonsOffline.contains(
                          '${widget!.title}-${widget!.frequenciaBaseNum?.toString()}')) {
                        await actions.tocarSomBinauralWebEMobile(
                          widget!.frequenciaBaseNum!,
                          widget!.frequenciaBinauralNum!,
                          'PLAY',
                        );
                      } else {
                        if (FFAppState().somTocando) {
                          await actions.tocarSomBinauralWebEMobile(
                            widget!.frequenciaBaseNum!,
                            widget!.frequenciaBinauralNum!,
                            FFAppState().somTocando.toString(),
                          );
                          FFAppState().somTocando = false;
                          safeSetState(() {});
                        } else {
                          await actions.tocarSomBinauralWebEMobile(
                            widget!.frequenciaBaseNum!,
                            widget!.frequenciaBinauralNum!,
                            'stop',
                          );
                          FFAppState().somTocando = true;
                          safeSetState(() {});
                        }
                      }
                    },
                  ),
                ],
              ),
            ].divide(SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
