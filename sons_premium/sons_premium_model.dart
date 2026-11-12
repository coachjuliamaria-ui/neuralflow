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
import 'sons_premium_widget.dart' show SonsPremiumWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SonsPremiumModel extends FlutterFlowModel<SonsPremiumWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Models for PremiumAudioCard.
  late FlutterFlowDynamicModels<PremiumAudioCardModel> premiumAudioCardModels;

  @override
  void initState(BuildContext context) {
    premiumAudioCardModels =
        FlutterFlowDynamicModels(() => PremiumAudioCardModel());
  }

  @override
  void dispose() {
    premiumAudioCardModels.dispose();
  }
}
