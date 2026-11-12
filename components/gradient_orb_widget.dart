import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gradient_orb_model.dart';
export 'gradient_orb_model.dart';

class GradientOrbWidget extends StatefulWidget {
  const GradientOrbWidget({
    super.key,
    double? size,
    Color? tone,
    double? opacity,
  })  : this.size = size ?? 240.0,
        this.tone = tone ?? const Color(0x00000000),
        this.opacity = opacity ?? 0.15;

  final double size;
  final Color tone;
  final double opacity;

  @override
  State<GradientOrbWidget> createState() => _GradientOrbWidgetState();
}

class _GradientOrbWidgetState extends State<GradientOrbWidget> {
  late GradientOrbModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GradientOrbModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: valueOrDefault<double>(
        widget!.opacity,
        0.15,
      ),
      child: ClipRect(
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(
            sigmaX: 60.0,
            sigmaY: 60.0,
          ),
          child: Container(
            width: valueOrDefault<double>(
              widget!.size,
              240.0,
            ),
            height: valueOrDefault<double>(
              widget!.size,
              240.0,
            ),
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                widget!.tone,
                FlutterFlowTheme.of(context).primary,
              ),
              borderRadius: BorderRadius.circular(9999.0),
              shape: BoxShape.rectangle,
            ),
          ),
        ),
      ),
    );
  }
}
