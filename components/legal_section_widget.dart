import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'legal_section_model.dart';
export 'legal_section_model.dart';

class LegalSectionWidget extends StatefulWidget {
  const LegalSectionWidget({
    super.key,
    String? title,
    String? content,
  })  : this.title = title ?? '1. Termos de Uso',
        this.content = content ??
            'Ao acessar o aplicativo Projeto 12-7 tocando, você concorda em cumprir estes termos de serviço, todas as leis e regulamentos aplicáveis e concorda que é responsável pelo cumprimento de todas as leis locais aplicáveis.';

  final String title;
  final String content;

  @override
  State<LegalSectionWidget> createState() => _LegalSectionWidgetState();
}

class _LegalSectionWidgetState extends State<LegalSectionWidget> {
  late LegalSectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LegalSectionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          valueOrDefault<String>(
            widget!.title,
            '1. Termos de Uso',
          ),
          style: FlutterFlowTheme.of(context).titleMedium.override(
                font: GoogleFonts.interTight(
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryBackground,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                lineHeight: 1.4,
              ),
        ),
        Text(
          valueOrDefault<String>(
            widget!.content,
            'Ao acessar o aplicativo Projeto 12-7 tocando, você concorda em cumprir estes termos de serviço, todas as leis e regulamentos aplicáveis e concorda que é responsável pelo cumprimento de todas as leis locais aplicáveis.',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                lineHeight: 1.5,
              ),
        ),
      ].divide(SizedBox(height: 8.0)),
    );
  }
}
