import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'top_header_model.dart';
export 'top_header_model.dart';

class TopHeaderWidget extends StatefulWidget {
  const TopHeaderWidget({
    super.key,
    bool? hideOptionalMenuItems,
    bool? hasBackNav,
  })  : this.hideOptionalMenuItems = hideOptionalMenuItems ?? false,
        this.hasBackNav = hasBackNav ?? false;

  final bool hideOptionalMenuItems;
  final bool hasBackNav;

  @override
  State<TopHeaderWidget> createState() => _TopHeaderWidgetState();
}

class _TopHeaderWidgetState extends State<TopHeaderWidget> {
  late TopHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopHeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 16.0
                    : 22.0,
                22.0,
              ),
              14.0,
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 16.0
                    : 22.0,
                22.0,
              ),
              12.0),
          child: Container(
            width: double.infinity,
            height: 36.0,
            decoration: BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (widget.hasBackNav)
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.arrow_back,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 16.0,
                          ),
                          onPressed: () async {
                            await action_blocks.clearChatHistory(context);

                            context.goNamed(HomePageWidget.routeName);
                          },
                        ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '88ol0chi' /* NeuroBuddy */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.readexPro(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 6.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 4.0,
                          buttonSize: 36.0,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          hoverIconColor:
                              FlutterFlowTheme.of(context).primaryText,
                          icon: Icon(
                            Icons.sunny_snowing,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 18.0,
                          ),
                          onPressed: () async {
                            if (Theme.of(context).brightness ==
                                Brightness.dark) {
                              setDarkModeSetting(context, ThemeMode.light);
                              return;
                            } else {
                              setDarkModeSetting(context, ThemeMode.dark);
                              return;
                            }
                          },
                        ),
                      ),
                      if (!widget.hideOptionalMenuItems)
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 4.0,
                          buttonSize: 36.0,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          hoverIconColor:
                              FlutterFlowTheme.of(context).primaryText,
                          icon: Icon(
                            Icons.refresh,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 18.0,
                          ),
                          onPressed: () async {
                            await action_blocks.clearChatHistory(context);
                          },
                        ),
                    ],
                  ),
                ),
              ].divide(SizedBox(width: 12.0)),
            ),
          ),
        ),
        Divider(
          height: 1.0,
          thickness: 0.5,
        ),
      ],
    );
  }
}
