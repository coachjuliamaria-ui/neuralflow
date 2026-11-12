import '/components/legal_section_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'termos_page_model.dart';
export 'termos_page_model.dart';

/// Create a clean and minimalist Terms of Service and Privacy Policy page for
/// a mobile app.
///
/// It must have a top header with a close back button, a large title 'Termos
/// e Privacidade', and a scrollable text container where legal terms can be
/// read comfortably. Use a professional and neutral color scheme. linguage
/// Portugues Brasil
class TermosPageWidget extends StatefulWidget {
  const TermosPageWidget({super.key});

  static String routeName = 'TermosPage';
  static String routePath = '/termosPage';

  @override
  State<TermosPageWidget> createState() => _TermosPageWidgetState();
}

class _TermosPageWidgetState extends State<TermosPageWidget> {
  late TermosPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermosPageModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 16.0, 24.0, 16.0),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.chevron_left,
                                color: Color(0xFF2F2F30),
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.safePop();
                              },
                            ),
                            Text(
                              'Aviso Legal',
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
                                    color: Color(0xFF2F2F30),
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
                            Container(
                              width: 40.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Termos e Privacidade',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight: FontWeight.w800,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w800,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    Text(
                                      'Estes Termos de Uso e Política de Privacidade regem o uso do aplicativo NeuralFlow.',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                  ].divide(SizedBox(height: 4.0)),
                                ),
                                Divider(
                                  height: 16.0,
                                  thickness: 1.0,
                                  indent: 0.0,
                                  endIndent: 0.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                                wrapWithModel(
                                  model: _model.legalSectionModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: LegalSectionWidget(
                                    title: '1. Termos de Uso',
                                    content:
                                        'Termos de Uso: O usuário entende que o aplicativo NeuralFlow fornece sons binaurais para relaxamento e bem-estar. Não substitui tratamentos médicos. Não deve ser usado ao dirigir ou operar máquinas pesadas.',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.legalSectionModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: LegalSectionWidget(
                                    title: '2. Licença de Uso',
                                    content:
                                        'É concedida permissão para baixar temporariamente uma cópia dos materiais no aplicativo, apenas para visualização transitória pessoal e não comercial. Esta é a concessão de uma licença, não uma transferência de título.',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.legalSectionModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: LegalSectionWidget(
                                    title: '3. Política de Privacidade',
                                    content:
                                        ' Política de Privacidade: A sua privacidade é importante para nós. O NeuralFlow respeita a sua privacidade e protege os seus dados. Não coletamos, vendemos ou compartilhamos dados pessoais ou de áudio com terceiros sem consentimento.',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.legalSectionModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: LegalSectionWidget(
                                    title: '4. Coleta de Dados',
                                    content:
                                        'Solicitamos informações pessoais apenas quando realmente precisamos delas para lhe fornecer um serviço. Fazemo-lo por meios justos e legais, com o seu conhecimento e consentimento. Também informamos por que estamos coletando e como será usado.',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.legalSectionModel5,
                                  updateCallback: () => safeSetState(() {}),
                                  child: LegalSectionWidget(
                                    title: '5. Segurança',
                                    content:
                                        'Protegemos os dados armazenados dentro de meios comercialmente aceitáveis para evitar perdas e roubos, bem como acesso, divulgação, cópia, uso ou modificação não autorizados.',
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Container(
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 24.0),
                                        child: Container(
                                          child: Container(
                                            width: 0.0,
                                            height: 0.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 24.0,
                                ),
                              ].divide(SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
