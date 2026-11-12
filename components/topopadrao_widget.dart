import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'topopadrao_model.dart';
export 'topopadrao_model.dart';

class TopopadraoWidget extends StatefulWidget {
  const TopopadraoWidget({super.key});

  @override
  State<TopopadraoWidget> createState() => _TopopadraoWidgetState();
}

class _TopopadraoWidgetState extends State<TopopadraoWidget> {
  late TopopadraoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopopadraoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.safePop();
      },
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: Icon(
              Icons.chevron_left,
              color: FlutterFlowTheme.of(context).alternate,
              size: 30.0,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              fillColor: Colors.transparent,
              icon: Icon(
                Icons.settings_outlined,
                color: FlutterFlowTheme.of(context).alternate,
                size: 24.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
        ].divide(SizedBox(width: 3.0)),
      ),
    );
  }
}
