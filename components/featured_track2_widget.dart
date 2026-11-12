import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'featured_track2_model.dart';
export 'featured_track2_model.dart';

class FeaturedTrack2Widget extends StatefulWidget {
  const FeaturedTrack2Widget({
    super.key,
    String? imageDesc,
    String? category,
    String? title,
    this.frequenciaBaseNum,
    this.frequenciaBinauralNum,
  })  : this.imageDesc = imageDesc ??
            'https://dimg.dreamflow.cloud/v1/image/abstract%20golden%20waves%20of%20energy',
        this.category = category ?? 'BINAURAL',
        this.title = title ?? 'Foco Profundo';

  final String imageDesc;
  final String category;
  final String title;
  final double? frequenciaBaseNum;
  final double? frequenciaBinauralNum;

  @override
  State<FeaturedTrack2Widget> createState() => _FeaturedTrack2WidgetState();
}

class _FeaturedTrack2WidgetState extends State<FeaturedTrack2Widget> {
  late FeaturedTrack2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeaturedTrack2Model());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24.0),
          child: Container(
            width: 300.0,
            height: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              shape: BoxShape.rectangle,
            ),
            child: Stack(
              alignment: AlignmentDirectional(-1.0, -1.0),
              children: [
                CachedNetworkImage(
                  fadeInDuration: Duration(milliseconds: 0),
                  fadeOutDuration: Duration(milliseconds: 0),
                  imageUrl: valueOrDefault<String>(
                    widget!.imageDesc,
                    'https://dimg.dreamflow.cloud/v1/image/abstract%20golden%20waves%20of%20energy',
                  ),
                  fit: BoxFit.cover,
                  alignment: Alignment(0.0, 0.0),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, 1.0),
                      end: AlignmentDirectional(0, -1.0),
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFD700),
                          borderRadius: BorderRadius.circular(8.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 4.0, 8.0, 4.0),
                          child: Container(
                            child: Text(
                              valueOrDefault<String>(
                                widget!.category,
                                'BINAURAL',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget!.title,
                          'Foco Profundo',
                        ),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              font: GoogleFonts.interTight(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontStyle,
                              ),
                              color: Colors.white,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
