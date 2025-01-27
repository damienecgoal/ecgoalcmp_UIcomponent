import '/auth/base_auth_user_provider.dart';
import '/components_2/course_status/course_status_widget.dart';
import '/components_2/custom_switch/custom_switch_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/icon_box/icon_box_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'my_courses_widget.dart' show MyCoursesWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class MyCoursesModel extends FlutterFlowModel<MyCoursesWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for Custom_Switch component.
  late CustomSwitchModel customSwitchModel;
  // Model for Course_Status component.
  late CourseStatusModel courseStatusModel1;
  // Model for Course_Status component.
  late CourseStatusModel courseStatusModel2;
  // Model for Course_Status component.
  late CourseStatusModel courseStatusModel3;
  // Model for Course_Status component.
  late CourseStatusModel courseStatusModel4;
  // Model for Course_Status component.
  late CourseStatusModel courseStatusModel5;
  // Model for Course_Status component.
  late CourseStatusModel courseStatusModel6;
  // Model for Icon_Box component.
  late IconBoxModel iconBoxModel;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    customSwitchModel = createModel(context, () => CustomSwitchModel());
    courseStatusModel1 = createModel(context, () => CourseStatusModel());
    courseStatusModel2 = createModel(context, () => CourseStatusModel());
    courseStatusModel3 = createModel(context, () => CourseStatusModel());
    courseStatusModel4 = createModel(context, () => CourseStatusModel());
    courseStatusModel5 = createModel(context, () => CourseStatusModel());
    courseStatusModel6 = createModel(context, () => CourseStatusModel());
    iconBoxModel = createModel(context, () => IconBoxModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    customSwitchModel.dispose();
    courseStatusModel1.dispose();
    courseStatusModel2.dispose();
    courseStatusModel3.dispose();
    courseStatusModel4.dispose();
    courseStatusModel5.dispose();
    courseStatusModel6.dispose();
    iconBoxModel.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}
