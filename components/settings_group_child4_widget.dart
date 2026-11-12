import '/components/settings_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_group_child4_model.dart';
export 'settings_group_child4_model.dart';

class SettingsGroupChild4Widget extends StatefulWidget {
  const SettingsGroupChild4Widget({super.key});

  @override
  State<SettingsGroupChild4Widget> createState() =>
      _SettingsGroupChild4WidgetState();
}

class _SettingsGroupChild4WidgetState extends State<SettingsGroupChild4Widget> {
  late SettingsGroupChild4Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsGroupChild4Model());

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
        wrapWithModel(
          model: _model.settingsItemModel1,
          updateCallback: () => safeSetState(() {}),
          child: SettingsItemWidget(
            icon: Icon(
              Icons.help_outline_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 22.0,
            ),
            label: 'Central de Ajuda',
            trailing: '',
            isLast: false,
          ),
        ),
        wrapWithModel(
          model: _model.settingsItemModel2,
          updateCallback: () => safeSetState(() {}),
          child: SettingsItemWidget(
            icon: Icon(
              Icons.description_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 22.0,
            ),
            label: 'Termos de Uso',
            trailing: '',
            isLast: false,
          ),
        ),
        wrapWithModel(
          model: _model.settingsItemModel3,
          updateCallback: () => safeSetState(() {}),
          child: SettingsItemWidget(
            icon: Icon(
              Icons.info_outline_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 22.0,
            ),
            label: 'Sobre o NeuralFlow',
            trailing: '',
            isLast: true,
          ),
        ),
      ],
    );
  }
}
