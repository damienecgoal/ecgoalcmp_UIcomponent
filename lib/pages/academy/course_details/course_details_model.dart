import '/components/avatar_name/avatar_name_widget.dart';
import '/components/course_content_tile/course_content_tile_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/icon_text/icon_text_widget.dart';
import '/components_2/lason_video/lason_video_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'course_details_widget.dart' show CourseDetailsWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CourseDetailsModel extends FlutterFlowModel<CourseDetailsWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;
  // Model for IconText component.
  late IconTextModel iconTextModel1;
  // Model for IconText component.
  late IconTextModel iconTextModel2;
  // Model for IconText component.
  late IconTextModel iconTextModel3;
  // Model for IconText component.
  late IconTextModel iconTextModel4;
  // Model for IconText component.
  late IconTextModel iconTextModel5;
  // Model for IconText component.
  late IconTextModel iconTextModel6;
  // Model for AvatarName component.
  late AvatarNameModel avatarNameModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // Model for CourseContentTile component.
  late CourseContentTileModel courseContentTileModel1;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel1;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel2;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel3;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel4;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel5;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // Model for CourseContentTile component.
  late CourseContentTileModel courseContentTileModel2;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel6;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel7;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel8;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel9;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // Model for CourseContentTile component.
  late CourseContentTileModel courseContentTileModel3;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel10;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel11;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel12;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel13;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel14;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel15;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // Model for CourseContentTile component.
  late CourseContentTileModel courseContentTileModel4;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel16;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel17;
  // Model for LasonVideo component.
  late LasonVideoModel lasonVideoModel18;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    statusCardModel = createModel(context, () => StatusCardModel());
    iconTextModel1 = createModel(context, () => IconTextModel());
    iconTextModel2 = createModel(context, () => IconTextModel());
    iconTextModel3 = createModel(context, () => IconTextModel());
    iconTextModel4 = createModel(context, () => IconTextModel());
    iconTextModel5 = createModel(context, () => IconTextModel());
    iconTextModel6 = createModel(context, () => IconTextModel());
    avatarNameModel = createModel(context, () => AvatarNameModel());
    courseContentTileModel1 =
        createModel(context, () => CourseContentTileModel());
    lasonVideoModel1 = createModel(context, () => LasonVideoModel());
    lasonVideoModel2 = createModel(context, () => LasonVideoModel());
    lasonVideoModel3 = createModel(context, () => LasonVideoModel());
    lasonVideoModel4 = createModel(context, () => LasonVideoModel());
    lasonVideoModel5 = createModel(context, () => LasonVideoModel());
    courseContentTileModel2 =
        createModel(context, () => CourseContentTileModel());
    lasonVideoModel6 = createModel(context, () => LasonVideoModel());
    lasonVideoModel7 = createModel(context, () => LasonVideoModel());
    lasonVideoModel8 = createModel(context, () => LasonVideoModel());
    lasonVideoModel9 = createModel(context, () => LasonVideoModel());
    courseContentTileModel3 =
        createModel(context, () => CourseContentTileModel());
    lasonVideoModel10 = createModel(context, () => LasonVideoModel());
    lasonVideoModel11 = createModel(context, () => LasonVideoModel());
    lasonVideoModel12 = createModel(context, () => LasonVideoModel());
    lasonVideoModel13 = createModel(context, () => LasonVideoModel());
    lasonVideoModel14 = createModel(context, () => LasonVideoModel());
    lasonVideoModel15 = createModel(context, () => LasonVideoModel());
    courseContentTileModel4 =
        createModel(context, () => CourseContentTileModel());
    lasonVideoModel16 = createModel(context, () => LasonVideoModel());
    lasonVideoModel17 = createModel(context, () => LasonVideoModel());
    lasonVideoModel18 = createModel(context, () => LasonVideoModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    statusCardModel.dispose();
    iconTextModel1.dispose();
    iconTextModel2.dispose();
    iconTextModel3.dispose();
    iconTextModel4.dispose();
    iconTextModel5.dispose();
    iconTextModel6.dispose();
    avatarNameModel.dispose();
    expandableExpandableController1.dispose();
    courseContentTileModel1.dispose();
    lasonVideoModel1.dispose();
    lasonVideoModel2.dispose();
    lasonVideoModel3.dispose();
    lasonVideoModel4.dispose();
    lasonVideoModel5.dispose();
    expandableExpandableController2.dispose();
    courseContentTileModel2.dispose();
    lasonVideoModel6.dispose();
    lasonVideoModel7.dispose();
    lasonVideoModel8.dispose();
    lasonVideoModel9.dispose();
    expandableExpandableController3.dispose();
    courseContentTileModel3.dispose();
    lasonVideoModel10.dispose();
    lasonVideoModel11.dispose();
    lasonVideoModel12.dispose();
    lasonVideoModel13.dispose();
    lasonVideoModel14.dispose();
    lasonVideoModel15.dispose();
    expandableExpandableController4.dispose();
    courseContentTileModel4.dispose();
    lasonVideoModel16.dispose();
    lasonVideoModel17.dispose();
    lasonVideoModel18.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}
