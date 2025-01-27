import '/auth/base_auth_user_provider.dart';
import '/components/avatar_name/avatar_name_widget.dart';
import '/components/course_content_tile/course_content_tile_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/icon_text/icon_text_widget.dart';
import '/components_2/lason_video/lason_video_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'dart:ui';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'course_details_model.dart';
export 'course_details_model.dart';

class CourseDetailsWidget extends StatefulWidget {
  const CourseDetailsWidget({super.key});

  @override
  State<CourseDetailsWidget> createState() => _CourseDetailsWidgetState();
}

class _CourseDetailsWidgetState extends State<CourseDetailsWidget> {
  late CourseDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourseDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().activePage = 'Analytics';
      safeSetState(() {});
      if (!loggedIn) {
        context.pushNamed(
          'Register',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
            ),
          },
        );
      }
    });

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController3 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController4 =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.navMenuModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavMenuWidget(),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    28.0, 0.0, 28.0, 16.0),
                                child: Wrap(
                                  spacing: 28.0,
                                  runSpacing: 28.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Academy/ ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Public Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 22.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            'My Courses',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Public Sans',
                                                  fontSize: 22.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 900.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 12.0,
                                            color: Color(0x14000000),
                                            offset: Offset(
                                              0.0,
                                              0.0,
                                            ),
                                            spreadRadius: 2.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'UI/UX Basic Fundamentals',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Public Sans',
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            Text(
                                                              'Prof. Devonne Wallbridge',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Public Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 8.0)),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            wrapWithModel(
                                                              model: _model
                                                                  .statusCardModel,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  StatusCardWidget(
                                                                title: 'UI/UX',
                                                                titleColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                bgColor: Color(
                                                                    0x34EA5455),
                                                              ),
                                                            ),
                                                            Icon(
                                                              FFIcons.kshare,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryTitle,
                                                              size: 24.0,
                                                            ),
                                                            Icon(
                                                              FFIcons
                                                                  .kbookmarks,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryTitle,
                                                              size: 24.0,
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 20.0)),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6.0),
                                                                ),
                                                                child:
                                                                    FlutterFlowYoutubePlayer(
                                                                  url:
                                                                      'https://www.youtube.com/watch?v=bTqVqk7FSmY&pp=ygUTdmlldyBmcm9tIGJsdWUgbW9vbg%3D%3D',
                                                                  autoPlay:
                                                                      false,
                                                                  looping: true,
                                                                  mute: false,
                                                                  showControls:
                                                                      true,
                                                                  showFullScreen:
                                                                      true,
                                                                  strictRelatedVideos:
                                                                      false,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          12.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'About this course',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Public Sans',
                                                                              fontSize: 18.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            4.0),
                                                                        child:
                                                                            Text(
                                                                          'Learn web design in 1 hour with 25+ simple-to-use rules and guidelines — tons of amazing web design resources included!',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Public Sans',
                                                                                color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Divider(
                                                                        height:
                                                                            1.0,
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            20.0)),
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'About this course',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Public Sans',
                                                                              fontSize: 18.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                wrapWithModel(
                                                                                  model: _model.iconTextModel1,
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: IconTextWidget(
                                                                                    icon: Icon(
                                                                                      FFIcons.kchecks,
                                                                                      color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    title: 'Skill level: All Levels',
                                                                                  ),
                                                                                ),
                                                                                wrapWithModel(
                                                                                  model: _model.iconTextModel2,
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: IconTextWidget(
                                                                                    icon: Icon(
                                                                                      FFIcons.kuser,
                                                                                      color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    title: 'Students: 38,815',
                                                                                  ),
                                                                                ),
                                                                                wrapWithModel(
                                                                                  model: _model.iconTextModel3,
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: IconTextWidget(
                                                                                    icon: Icon(
                                                                                      FFIcons.kflag,
                                                                                      color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    title: 'Languages: English',
                                                                                  ),
                                                                                ),
                                                                                wrapWithModel(
                                                                                  model: _model.iconTextModel4,
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: IconTextWidget(
                                                                                    icon: Icon(
                                                                                      FFIcons.kfile,
                                                                                      color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    title: 'Captions: Yes',
                                                                                  ),
                                                                                ),
                                                                              ].divide(SizedBox(height: 16.0)),
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                wrapWithModel(
                                                                                  model: _model.iconTextModel5,
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: IconTextWidget(
                                                                                    icon: Icon(
                                                                                      FFIcons.kpencil,
                                                                                      color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    title: 'Lectures: 19',
                                                                                  ),
                                                                                ),
                                                                                wrapWithModel(
                                                                                  model: _model.iconTextModel6,
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: IconTextWidget(
                                                                                    icon: Icon(
                                                                                      FFIcons.kclock,
                                                                                      color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    title: 'Video: 1.5 total hours',
                                                                                  ),
                                                                                ),
                                                                              ].divide(SizedBox(height: 16.0)),
                                                                            ),
                                                                          ].divide(SizedBox(width: 40.0)),
                                                                        ),
                                                                      ),
                                                                      Divider(
                                                                        height:
                                                                            1.0,
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            20.0)),
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Description',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Public Sans',
                                                                              fontSize: 18.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            4.0),
                                                                        child:
                                                                            Text(
                                                                          'The material of this course is also covered in my other course about web design and development with HTML5 & CSS3. Scroll to the bottom of this page to check out that course, too! If you\'re already taking my other course, you already have all it takes to start designing beautiful websites today!\n\n\"Best web design course: If you\'re interested in web design, but want more than just a \"how to use WordPress\" course,I highly recommend this one.\" — Florian Giusti\n\n\"Very helpful to us left-brained people: I am familiar with HTML, CSS, JQuery, and Twitter Bootstrap, but I needed instruction in web design. This course gave me practical, impactful techniques for making websites more beautiful and engaging.\" — Susan Darlene Cain',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Public Sans',
                                                                                color: FlutterFlowTheme.of(context).secondaryTitle,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                lineHeight: 1.4,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Divider(
                                                                        height:
                                                                            1.0,
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            20.0)),
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Instructor',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Public Sans',
                                                                              fontSize: 18.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.avatarNameModel,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                AvatarNameWidget(
                                                                              avatar: 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/metronic-2a9tmj/assets/yeybej8fe3x9/11.png',
                                                                              name: 'Devonne Wallbridge',
                                                                              title: 'Web Developer, Designer, and Teacher',
                                                                              size: 44.0,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            20.0)),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        24.0)),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 20.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ]
                                                      .divide(SizedBox(
                                                          height: 20.0))
                                                      .addToStart(
                                                          SizedBox(height: 4.0))
                                                      .addToEnd(SizedBox(
                                                          height: 20.0)),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .unselectBox,
                                                        child:
                                                            ExpandableNotifier(
                                                          controller: _model
                                                              .expandableExpandableController1,
                                                          child:
                                                              ExpandablePanel(
                                                            header:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .courseContentTileModel1,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  CourseContentTileWidget(
                                                                chapterTitle:
                                                                    'Course Content',
                                                                currentChapter:
                                                                    1,
                                                                totalChapters:
                                                                    4,
                                                                duration:
                                                                    '4.4 min',
                                                              ),
                                                            ),
                                                            collapsed:
                                                                Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 1.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                              ),
                                                            ),
                                                            expanded: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Divider(
                                                                    height: 1.0,
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            20.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel1,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '1. Welcome to this course',
                                                                            time:
                                                                                '2.4 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel2,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '2. Watch before you start',
                                                                            time:
                                                                                '4.8 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel3,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '3. Basic design theory',
                                                                            time:
                                                                                '5.9 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel4,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '4. Basic fundamentals',
                                                                            time:
                                                                                '3.6 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel5,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '5. What is ui/ux',
                                                                            time:
                                                                                '10.6 min',
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 16.0)),
                                                                    ),
                                                                  ),
                                                                  Divider(
                                                                    height: 1.0,
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            theme:
                                                                ExpandableThemeData(
                                                              tapHeaderToExpand:
                                                                  true,
                                                              tapBodyToExpand:
                                                                  false,
                                                              tapBodyToCollapse:
                                                                  false,
                                                              headerAlignment:
                                                                  ExpandablePanelHeaderAlignment
                                                                      .center,
                                                              hasIcon: true,
                                                              expandIcon: FFIcons
                                                                  .kchevronRight,
                                                              collapseIcon: FFIcons
                                                                  .kchevronDown,
                                                              iconSize: 24.0,
                                                              iconColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryTitle,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .unselectBox,
                                                        child:
                                                            ExpandableNotifier(
                                                          controller: _model
                                                              .expandableExpandableController2,
                                                          child:
                                                              ExpandablePanel(
                                                            header:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .courseContentTileModel2,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  CourseContentTileWidget(
                                                                chapterTitle:
                                                                    'Course Content',
                                                                currentChapter:
                                                                    1,
                                                                totalChapters:
                                                                    4,
                                                                duration:
                                                                    '4.4 min',
                                                              ),
                                                            ),
                                                            collapsed:
                                                                Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 1.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                              ),
                                                            ),
                                                            expanded: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Divider(
                                                                    height: 1.0,
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            20.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel6,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '1. How to use Pages in Figma',
                                                                            time:
                                                                                '8:31 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel7,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '2. What is Lo Fi Wireframe',
                                                                            time:
                                                                                '4.8 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel8,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '3. How to use color in Figma',
                                                                            time:
                                                                                '5.9 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel9,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '4. Frames vs Groups in Figma',
                                                                            time:
                                                                                '3.6 min',
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 16.0)),
                                                                    ),
                                                                  ),
                                                                  Divider(
                                                                    height: 1.0,
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            theme:
                                                                ExpandableThemeData(
                                                              tapHeaderToExpand:
                                                                  true,
                                                              tapBodyToExpand:
                                                                  false,
                                                              tapBodyToCollapse:
                                                                  false,
                                                              headerAlignment:
                                                                  ExpandablePanelHeaderAlignment
                                                                      .center,
                                                              hasIcon: true,
                                                              expandIcon: FFIcons
                                                                  .kchevronRight,
                                                              collapseIcon: FFIcons
                                                                  .kchevronDown,
                                                              iconSize: 24.0,
                                                              iconColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryTitle,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .unselectBox,
                                                        child:
                                                            ExpandableNotifier(
                                                          controller: _model
                                                              .expandableExpandableController3,
                                                          child:
                                                              ExpandablePanel(
                                                            header:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .courseContentTileModel3,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  CourseContentTileWidget(
                                                                chapterTitle:
                                                                    'Course Content',
                                                                currentChapter:
                                                                    1,
                                                                totalChapters:
                                                                    4,
                                                                duration:
                                                                    '4.4 min',
                                                              ),
                                                            ),
                                                            collapsed:
                                                                Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 1.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                              ),
                                                            ),
                                                            expanded: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Divider(
                                                                    height: 1.0,
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            20.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel10,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '1. Section & Div Block',
                                                                            time:
                                                                                '8:31 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel11,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '2. Read-Only Version of Chat App',
                                                                            time:
                                                                                '8 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel12,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '3. Webflow Autosave',
                                                                            time:
                                                                                '2.9 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel13,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '4. Canvas Settings',
                                                                            time:
                                                                                '7.6 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel14,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '5. HTML Tags',
                                                                            time:
                                                                                '10 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel15,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '6. Footer (Chat App)',
                                                                            time:
                                                                                '9.10 min',
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 16.0)),
                                                                    ),
                                                                  ),
                                                                  Divider(
                                                                    height: 1.0,
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            theme:
                                                                ExpandableThemeData(
                                                              tapHeaderToExpand:
                                                                  true,
                                                              tapBodyToExpand:
                                                                  false,
                                                              tapBodyToCollapse:
                                                                  false,
                                                              headerAlignment:
                                                                  ExpandablePanelHeaderAlignment
                                                                      .center,
                                                              hasIcon: true,
                                                              expandIcon: FFIcons
                                                                  .kchevronRight,
                                                              collapseIcon: FFIcons
                                                                  .kchevronDown,
                                                              iconSize: 24.0,
                                                              iconColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryTitle,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .unselectBox,
                                                        child:
                                                            ExpandableNotifier(
                                                          controller: _model
                                                              .expandableExpandableController4,
                                                          child:
                                                              ExpandablePanel(
                                                            header:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .courseContentTileModel4,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  CourseContentTileWidget(
                                                                chapterTitle:
                                                                    'Course Content',
                                                                currentChapter:
                                                                    1,
                                                                totalChapters:
                                                                    4,
                                                                duration:
                                                                    '4.4 min',
                                                              ),
                                                            ),
                                                            collapsed:
                                                                Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 1.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                              ),
                                                            ),
                                                            expanded: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Divider(
                                                                    height: 1.0,
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            20.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel16,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '1. Responsive Blog Site',
                                                                            time:
                                                                                '10:0 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel17,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '2. Responsive Portfolio',
                                                                            time:
                                                                                '13:00 min',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.lasonVideoModel18,
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              LasonVideoWidget(
                                                                            topic:
                                                                                '3. Responsive eCommerce Website',
                                                                            time:
                                                                                '15 min',
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 16.0)),
                                                                    ),
                                                                  ),
                                                                  Divider(
                                                                    height: 1.0,
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            theme:
                                                                ExpandableThemeData(
                                                              tapHeaderToExpand:
                                                                  true,
                                                              tapBodyToExpand:
                                                                  false,
                                                              tapBodyToCollapse:
                                                                  false,
                                                              headerAlignment:
                                                                  ExpandablePanelHeaderAlignment
                                                                      .center,
                                                              hasIcon: true,
                                                              expandIcon: FFIcons
                                                                  .kchevronRight,
                                                              collapseIcon: FFIcons
                                                                  .kchevronDown,
                                                              iconSize: 24.0,
                                                              iconColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryTitle,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 20.0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    28.0, 0.0, 28.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.footerModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FooterWidget(),
                                ),
                              ),
                            ]
                                .divide(SizedBox(height: 28.0))
                                .addToStart(SizedBox(height: 110.0))
                                .addToEnd(SizedBox(height: 28.0)),
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.searchBarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: SearchBarWidget(),
                      ),
                    ],
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
