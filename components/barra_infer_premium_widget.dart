import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'barra_infer_premium_model.dart';
export 'barra_infer_premium_model.dart';

class BarraInferPremiumWidget extends StatefulWidget {
  const BarraInferPremiumWidget({super.key});

  @override
  State<BarraInferPremiumWidget> createState() =>
      _BarraInferPremiumWidgetState();
}

class _BarraInferPremiumWidgetState extends State<BarraInferPremiumWidget> {
  late BarraInferPremiumModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BarraInferPremiumModel());

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 48.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: (FFMainAxisAlignment.spaceBetween).flutterValue,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(HomePageWidget.routeName);
              },
              child: Icon(
                Icons.waves,
                color: FlutterFlowTheme.of(context).success,
                size: 24.0,
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(PageOfflineWidget.routeName);
              },
              child: Icon(
                Icons.wifi_off,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
