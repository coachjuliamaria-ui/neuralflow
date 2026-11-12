import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'benefit_item_model.dart';
export 'benefit_item_model.dart';

class BenefitItemWidget extends StatefulWidget {
  const BenefitItemWidget({
    super.key,
    String? text,
  }) : this.text = text ??
            'Acesso ilimitado a todas as frequências Alpha, Beta, Theta e Delta';

  final String text;

  @override
  State<BenefitItemWidget> createState() => _BenefitItemWidgetState();
}

class _BenefitItemWidgetState extends State<BenefitItemWidget> {
  late BenefitItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BenefitItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 24.0,
          height: 24.0,
          decoration: BoxDecoration(
            color: Color(0x33249689),
            borderRadius: BorderRadius.circular(9999.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Color(0xFF00E676),
            ),
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Icon(
            Icons.check_rounded,
            color: FlutterFlowTheme.of(context).success,
            size: 16.0,
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            valueOrDefault<String>(
              widget!.text,
              'Acesso ilimitado a todas as frequências Alpha; Beta; Theta; Delta e Gamma.',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ),
      ].divide(SizedBox(width: 16.0)),
    );
  }
}
