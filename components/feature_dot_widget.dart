import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'feature_dot_model.dart';
export 'feature_dot_model.dart';

class FeatureDotWidget extends StatefulWidget {
  const FeatureDotWidget({
    super.key,
    this.icon,
    String? label,
  }) : this.label = label ?? 'Foco';

  final Widget? icon;
  final String label;

  @override
  State<FeatureDotWidget> createState() => _FeatureDotWidgetState();
}

class _FeatureDotWidgetState extends State<FeatureDotWidget> {
  late FeatureDotModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeatureDotModel());

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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 48.0,
          height: 48.0,
          decoration: BoxDecoration(
            color: Color(0x1AFFFFFF),
            borderRadius: BorderRadius.circular(9999.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Color(0x33FFFFFF),
              width: 1.0,
            ),
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: widget!.icon!,
        ),
        Text(
          valueOrDefault<String>(
            widget!.label,
            'Foco',
          ),
          style: FlutterFlowTheme.of(context).labelSmall.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelSmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelSmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                lineHeight: 1.4,
              ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
