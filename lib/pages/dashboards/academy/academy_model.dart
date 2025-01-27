import '/components/assignment/assignment_widget.dart';
import '/components/list/course/course_widget.dart';
import '/components/upcoming_webinar/upcoming_webinar_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/instructors/instructors_widget.dart';
import '/components_2/interested/interested_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/reward/reward_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/status_card/status_card_widget.dart';
import '/components_2/top_courses/top_courses_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'academy_widget.dart' show AcademyWidget;
import 'package:flutter/material.dart';

class AcademyModel extends FlutterFlowModel<AcademyWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for Reward component.
  late RewardModel rewardModel1;
  // Model for Reward component.
  late RewardModel rewardModel2;
  // Model for Reward component.
  late RewardModel rewardModel3;
  // Model for StatusCard component.
  late StatusCardModel statusCardModel;
  // Model for Interested component.
  late InterestedModel interestedModel1;
  // Model for Interested component.
  late InterestedModel interestedModel2;
  // Model for Interested component.
  late InterestedModel interestedModel3;
  // Model for Interested component.
  late InterestedModel interestedModel4;
  // Model for Interested component.
  late InterestedModel interestedModel5;
  // Model for Interested component.
  late InterestedModel interestedModel6;
  // Model for Instructors component.
  late InstructorsModel instructorsModel1;
  // Model for Instructors component.
  late InstructorsModel instructorsModel2;
  // Model for Instructors component.
  late InstructorsModel instructorsModel3;
  // Model for Instructors component.
  late InstructorsModel instructorsModel4;
  // Model for Top_Courses component.
  late TopCoursesModel topCoursesModel1;
  // Model for Top_Courses component.
  late TopCoursesModel topCoursesModel2;
  // Model for Top_Courses component.
  late TopCoursesModel topCoursesModel3;
  // Model for Top_Courses component.
  late TopCoursesModel topCoursesModel4;
  // Model for Top_Courses component.
  late TopCoursesModel topCoursesModel5;
  // Model for Upcoming_Webinar component.
  late UpcomingWebinarModel upcomingWebinarModel1;
  // Model for Upcoming_Webinar component.
  late UpcomingWebinarModel upcomingWebinarModel2;
  // Model for Assignment component.
  late AssignmentModel assignmentModel1;
  // Model for Assignment component.
  late AssignmentModel assignmentModel2;
  // Model for Assignment component.
  late AssignmentModel assignmentModel3;
  // Model for Assignment component.
  late AssignmentModel assignmentModel4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Course component.
  late CourseModel courseModel1;
  // Model for Course component.
  late CourseModel courseModel2;
  // Model for Course component.
  late CourseModel courseModel3;
  // Model for Course component.
  late CourseModel courseModel4;
  // Model for Course component.
  late CourseModel courseModel5;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    rewardModel1 = createModel(context, () => RewardModel());
    rewardModel2 = createModel(context, () => RewardModel());
    rewardModel3 = createModel(context, () => RewardModel());
    statusCardModel = createModel(context, () => StatusCardModel());
    interestedModel1 = createModel(context, () => InterestedModel());
    interestedModel2 = createModel(context, () => InterestedModel());
    interestedModel3 = createModel(context, () => InterestedModel());
    interestedModel4 = createModel(context, () => InterestedModel());
    interestedModel5 = createModel(context, () => InterestedModel());
    interestedModel6 = createModel(context, () => InterestedModel());
    instructorsModel1 = createModel(context, () => InstructorsModel());
    instructorsModel2 = createModel(context, () => InstructorsModel());
    instructorsModel3 = createModel(context, () => InstructorsModel());
    instructorsModel4 = createModel(context, () => InstructorsModel());
    topCoursesModel1 = createModel(context, () => TopCoursesModel());
    topCoursesModel2 = createModel(context, () => TopCoursesModel());
    topCoursesModel3 = createModel(context, () => TopCoursesModel());
    topCoursesModel4 = createModel(context, () => TopCoursesModel());
    topCoursesModel5 = createModel(context, () => TopCoursesModel());
    upcomingWebinarModel1 = createModel(context, () => UpcomingWebinarModel());
    upcomingWebinarModel2 = createModel(context, () => UpcomingWebinarModel());
    assignmentModel1 = createModel(context, () => AssignmentModel());
    assignmentModel2 = createModel(context, () => AssignmentModel());
    assignmentModel3 = createModel(context, () => AssignmentModel());
    assignmentModel4 = createModel(context, () => AssignmentModel());
    courseModel1 = createModel(context, () => CourseModel());
    courseModel2 = createModel(context, () => CourseModel());
    courseModel3 = createModel(context, () => CourseModel());
    courseModel4 = createModel(context, () => CourseModel());
    courseModel5 = createModel(context, () => CourseModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    rewardModel1.dispose();
    rewardModel2.dispose();
    rewardModel3.dispose();
    statusCardModel.dispose();
    interestedModel1.dispose();
    interestedModel2.dispose();
    interestedModel3.dispose();
    interestedModel4.dispose();
    interestedModel5.dispose();
    interestedModel6.dispose();
    instructorsModel1.dispose();
    instructorsModel2.dispose();
    instructorsModel3.dispose();
    instructorsModel4.dispose();
    topCoursesModel1.dispose();
    topCoursesModel2.dispose();
    topCoursesModel3.dispose();
    topCoursesModel4.dispose();
    topCoursesModel5.dispose();
    upcomingWebinarModel1.dispose();
    upcomingWebinarModel2.dispose();
    assignmentModel1.dispose();
    assignmentModel2.dispose();
    assignmentModel3.dispose();
    assignmentModel4.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    courseModel1.dispose();
    courseModel2.dispose();
    courseModel3.dispose();
    courseModel4.dispose();
    courseModel5.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}
