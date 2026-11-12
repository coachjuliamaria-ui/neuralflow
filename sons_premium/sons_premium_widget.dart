import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/premium_audio_card_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'sons_premium_model.dart';
export 'sons_premium_model.dart';

/// Create a premium screen for a binaural beats app named "NeuralFlow".
///
/// The UI must have a dark mode aesthetic with a pitch black background
/// (#000000) and premium gold/yellow accents. At the very top, include an
/// elegant header with a placeholder for a Lottie animation logo. Below the
/// header, add a prominent horizontal scrolling carousel for featured audio
/// tracks. Underneath the carousel, create a clean vertical ListView of
/// premium audio cards. Each card in the list must clearly display: a title,
/// a short description, the recommended usage mode (e.g., "Use with
/// headphones"), the track duration (e.g., "45 min"), and a sleek play
/// button. The design must look professional, spacious, and high-end, similar
/// to modern meditation apps like Calm or Headspace, ...Each card in the list
/// should also include a small, subtle padlock icon to indicate
/// premium/locked content. Linguage Portugues Brasil.
class SonsPremiumWidget extends StatefulWidget {
  const SonsPremiumWidget({super.key});

  static String routeName = 'SonsPremium';
  static String routePath = '/sonsPremium';

  @override
  State<SonsPremiumWidget> createState() => _SonsPremiumWidgetState();
}

class _SonsPremiumWidgetState extends State<SonsPremiumWidget> {
  late SonsPremiumModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SonsPremiumModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!valueOrDefault<bool>(currentUserDocument?.isPremium, false)) {
        context.goNamed(
          PaywallPage1Widget.routeName,
          queryParameters: {
            'preco': serializeParam(
              4700,
              ParamType.int,
            ),
          }.withoutNulls,
        );
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 150.0,
                height: 150.0,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Logo_neural_borboleta_trans.png',
                          width: 150.0,
                          height: 150.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GradientText(
                      'Jornada Consciente',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                      colors: [
                        FlutterFlowTheme.of(context).accent1,
                        FlutterFlowTheme.of(context).secondary,
                        Color(0xFF673AB7)
                      ],
                      gradientDirection: GradientDirection.ltr,
                      gradientType: GradientType.linear,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 20.0),
                      child: Text(
                        'SUA MENTE EM ALTA PERFORMANCE.',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        width: 300.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                          ),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(PageOfflineWidget.routeName);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 10.0, 10.0, 10.0),
                                child: Text(
                                  'Reprodução Offline. ',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                              ),
                              Icon(
                                Icons.wifi_off,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 20.0),
                      child: Text(
                        'Explore as mais de 50 frequências exclusivas.',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: FlutterFlowChoiceChips(
                        options: [
                          ChipData('Alpha - Criatividade'),
                          ChipData('Beta - Foco'),
                          ChipData('Delta - Sono'),
                          ChipData('Theta - Zen'),
                          ChipData('Gamma')
                        ],
                        onChanged: (val) => safeSetState(
                            () => _model.choiceChipsValue = val?.firstOrNull),
                        selectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: GoogleFonts.roboto(
                            color: Color(0x00000000),
                            fontSize: 0.0,
                          ),
                          iconColor: FlutterFlowTheme.of(context).info,
                          iconSize: 20.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                          iconColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          iconSize: 16.0,
                          elevation: 0.0,
                          borderColor: Colors.black,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        chipSpacing: 10.0,
                        rowSpacing: 10.0,
                        multiselect: false,
                        initialized: _model.choiceChipsValue != null,
                        alignment: WrapAlignment.center,
                        controller: _model.choiceChipsValueController ??=
                            FormFieldController<List<String>>(
                          ['Delta - Sono'],
                        ),
                        wrapped: true,
                      ),
                    ),
                    StreamBuilder<List<SonsPremiumRecord>>(
                      stream: querySonsPremiumRecord(
                        queryBuilder: (sonsPremiumRecord) =>
                            sonsPremiumRecord.where(
                          'categoria',
                          isEqualTo: _model.choiceChipsValue,
                        ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<SonsPremiumRecord> listViewSonsPremiumRecordList =
                            snapshot.data!;

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewSonsPremiumRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewSonsPremiumRecord =
                                listViewSonsPremiumRecordList[listViewIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: wrapWithModel(
                                model: _model.premiumAudioCardModels.getModel(
                                  listViewSonsPremiumRecord.descricao,
                                  listViewIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: PremiumAudioCardWidget(
                                  key: Key(
                                    'Keyjtu_${listViewSonsPremiumRecord.descricao}',
                                  ),
                                  title: listViewSonsPremiumRecord.titulo,
                                  desc: listViewSonsPremiumRecord.descricao,
                                  duration: listViewSonsPremiumRecord.duracao,
                                  mode: 'Use fones de ouvido',
                                  urlaudioFrequencia:
                                      listViewSonsPremiumRecord.urlFrequencia,
                                  urlaudioFundo:
                                      listViewSonsPremiumRecord.urlFundo,
                                  frequenciaBaseNum:
                                      listViewSonsPremiumRecord.frequenciaBase,
                                  frequenciaBinauralNum:
                                      listViewSonsPremiumRecord
                                          .frequenciaBinaural,
                                  categoria:
                                      listViewSonsPremiumRecord.categoria,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
