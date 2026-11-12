import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'session_card2_model.dart';
export 'session_card2_model.dart';

class SessionCard2Widget extends StatefulWidget {
  const SessionCard2Widget({
    super.key,
    String? imgDesc,
    String? category,
    String? title,
    String? duration,
  })  : this.imgDesc = imgDesc ??
            'https://dimg.dreamflow.cloud/v1/image/abstract%20purple%20waves',
        this.category = category ?? 'CALMA',
        this.title = title ?? 'Alívio de Ansiedade',
        this.duration = duration ?? '15 min';

  final String imgDesc;
  final String category;
  final String title;
  final String duration;

  @override
  State<SessionCard2Widget> createState() => _SessionCard2WidgetState();
}

class _SessionCard2WidgetState extends State<SessionCard2Widget> {
  late SessionCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SessionCard2Model());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
                child: Container(
                  width: 64.0,
                  height: 64.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: CachedNetworkImage(
                    fadeInDuration: Duration(milliseconds: 0),
                    fadeOutDuration: Duration(milliseconds: 0),
                    imageUrl: valueOrDefault<String>(
                      widget!.imgDesc,
                      'https://dimg.dreamflow.cloud/v1/image/abstract%20purple%20waves',
                    ),
                    fit: BoxFit.cover,
                    alignment: Alignment(0.0, 0.0),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget!.category,
                        'CALMA',
                      ),
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget!.title,
                        'Alívio de Ansiedade',
                      ),
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.schedule_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 14.0,
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget!.duration,
                            '15 min',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                        ),
                      ].divide(SizedBox(width: 4.0)),
                    ),
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
              FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 48.0,
                fillColor: Colors.transparent,
                icon: Icon(
                  Icons.play_circle_filled_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 32.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ].divide(SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
