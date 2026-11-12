import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'topopadrao_home_model.dart';
export 'topopadrao_home_model.dart';

class TopopadraoHomeWidget extends StatefulWidget {
  const TopopadraoHomeWidget({super.key});

  @override
  State<TopopadraoHomeWidget> createState() => _TopopadraoHomeWidgetState();
}

class _TopopadraoHomeWidgetState extends State<TopopadraoHomeWidget> {
  late TopopadraoHomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopopadraoHomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: Icon(
              Icons.chevron_left,
              color: Color(0xFF0C0C0C),
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
