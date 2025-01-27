import '/components/about_card/about_card_widget.dart';
import '/components/avatar_name/avatar_name_widget.dart';
import '/components_2/connections/connections_widget.dart';
import '/components_2/connections_card/connections_card_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/icon_text/icon_text_widget.dart';
import '/components_2/list_header/list_header_widget.dart';
import '/components_2/list_header2/list_header2_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/project/project_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/teams_card/teams_card_widget.dart';
import '/components_2/teams_card2/teams_card2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  String? activeTab = 'Profile';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for IconText component.
  late IconTextModel iconTextModel1;
  // Model for IconText component.
  late IconTextModel iconTextModel2;
  // Model for IconText component.
  late IconTextModel iconTextModel3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // Model for Teams_Card2 component.
  late TeamsCard2Model teamsCard2Model1;
  // Model for Teams_Card2 component.
  late TeamsCard2Model teamsCard2Model2;
  // Model for Teams_Card2 component.
  late TeamsCard2Model teamsCard2Model3;
  // Model for Teams_Card2 component.
  late TeamsCard2Model teamsCard2Model4;
  // Model for Teams_Card2 component.
  late TeamsCard2Model teamsCard2Model5;
  // Model for Teams_Card2 component.
  late TeamsCard2Model teamsCard2Model6;
  // Model for Teams_Card2 component.
  late TeamsCard2Model teamsCard2Model7;
  // Model for Teams_Card2 component.
  late TeamsCard2Model teamsCard2Model8;
  // Model for Project component.
  late ProjectModel projectModel1;
  // Model for Project component.
  late ProjectModel projectModel2;
  // Model for Project component.
  late ProjectModel projectModel3;
  // Model for Project component.
  late ProjectModel projectModel4;
  // Model for Project component.
  late ProjectModel projectModel5;
  // Model for Project component.
  late ProjectModel projectModel6;
  // Model for Connections component.
  late ConnectionsModel connectionsModel1;
  // Model for Connections component.
  late ConnectionsModel connectionsModel2;
  // Model for Connections component.
  late ConnectionsModel connectionsModel3;
  // Model for Connections component.
  late ConnectionsModel connectionsModel4;
  // Model for Connections component.
  late ConnectionsModel connectionsModel5;
  // Model for Connections component.
  late ConnectionsModel connectionsModel6;
  // Model for About_Card component.
  late AboutCardModel aboutCardModel1;
  // Model for About_Card component.
  late AboutCardModel aboutCardModel2;
  // Model for About_Card component.
  late AboutCardModel aboutCardModel3;
  // Model for About_Card component.
  late AboutCardModel aboutCardModel4;
  // Model for About_Card component.
  late AboutCardModel aboutCardModel5;
  // Model for About_Card component.
  late AboutCardModel aboutCardModel6;
  // Model for About_Card component.
  late AboutCardModel aboutCardModel7;
  // Model for About_Card component.
  late AboutCardModel aboutCardModel8;
  // Model for About_Card component.
  late AboutCardModel aboutCardModel9;
  // Model for About_Card component.
  late AboutCardModel aboutCardModel10;
  // Model for About_Card component.
  late AboutCardModel aboutCardModel11;
  // Model for About_Card component.
  late AboutCardModel aboutCardModel12;
  // Model for About_Card component.
  late AboutCardModel aboutCardModel13;
  // Model for AvatarName component.
  late AvatarNameModel avatarNameModel;
  // Model for Connections_Card component.
  late ConnectionsCardModel connectionsCardModel1;
  // Model for Connections_Card component.
  late ConnectionsCardModel connectionsCardModel2;
  // Model for Connections_Card component.
  late ConnectionsCardModel connectionsCardModel3;
  // Model for Connections_Card component.
  late ConnectionsCardModel connectionsCardModel4;
  // Model for Connections_Card component.
  late ConnectionsCardModel connectionsCardModel5;
  // Model for Teams_Card component.
  late TeamsCardModel teamsCardModel1;
  // Model for Teams_Card component.
  late TeamsCardModel teamsCardModel2;
  // Model for Teams_Card component.
  late TeamsCardModel teamsCardModel3;
  // Model for Teams_Card component.
  late TeamsCardModel teamsCardModel4;
  // Model for Teams_Card component.
  late TeamsCardModel teamsCardModel5;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel1;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel2;
  // Model for ListHeader2 component.
  late ListHeader2Model listHeader2Model1;
  // Model for ListHeader component.
  late ListHeaderModel listHeaderModel3;
  // Model for ListHeader2 component.
  late ListHeader2Model listHeader2Model2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered9 = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered10 = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered11 = false;
  // State field(s) for Checkbox widget.
  bool? checkboxValue8;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    iconTextModel1 = createModel(context, () => IconTextModel());
    iconTextModel2 = createModel(context, () => IconTextModel());
    iconTextModel3 = createModel(context, () => IconTextModel());
    teamsCard2Model1 = createModel(context, () => TeamsCard2Model());
    teamsCard2Model2 = createModel(context, () => TeamsCard2Model());
    teamsCard2Model3 = createModel(context, () => TeamsCard2Model());
    teamsCard2Model4 = createModel(context, () => TeamsCard2Model());
    teamsCard2Model5 = createModel(context, () => TeamsCard2Model());
    teamsCard2Model6 = createModel(context, () => TeamsCard2Model());
    teamsCard2Model7 = createModel(context, () => TeamsCard2Model());
    teamsCard2Model8 = createModel(context, () => TeamsCard2Model());
    projectModel1 = createModel(context, () => ProjectModel());
    projectModel2 = createModel(context, () => ProjectModel());
    projectModel3 = createModel(context, () => ProjectModel());
    projectModel4 = createModel(context, () => ProjectModel());
    projectModel5 = createModel(context, () => ProjectModel());
    projectModel6 = createModel(context, () => ProjectModel());
    connectionsModel1 = createModel(context, () => ConnectionsModel());
    connectionsModel2 = createModel(context, () => ConnectionsModel());
    connectionsModel3 = createModel(context, () => ConnectionsModel());
    connectionsModel4 = createModel(context, () => ConnectionsModel());
    connectionsModel5 = createModel(context, () => ConnectionsModel());
    connectionsModel6 = createModel(context, () => ConnectionsModel());
    aboutCardModel1 = createModel(context, () => AboutCardModel());
    aboutCardModel2 = createModel(context, () => AboutCardModel());
    aboutCardModel3 = createModel(context, () => AboutCardModel());
    aboutCardModel4 = createModel(context, () => AboutCardModel());
    aboutCardModel5 = createModel(context, () => AboutCardModel());
    aboutCardModel6 = createModel(context, () => AboutCardModel());
    aboutCardModel7 = createModel(context, () => AboutCardModel());
    aboutCardModel8 = createModel(context, () => AboutCardModel());
    aboutCardModel9 = createModel(context, () => AboutCardModel());
    aboutCardModel10 = createModel(context, () => AboutCardModel());
    aboutCardModel11 = createModel(context, () => AboutCardModel());
    aboutCardModel12 = createModel(context, () => AboutCardModel());
    aboutCardModel13 = createModel(context, () => AboutCardModel());
    avatarNameModel = createModel(context, () => AvatarNameModel());
    connectionsCardModel1 = createModel(context, () => ConnectionsCardModel());
    connectionsCardModel2 = createModel(context, () => ConnectionsCardModel());
    connectionsCardModel3 = createModel(context, () => ConnectionsCardModel());
    connectionsCardModel4 = createModel(context, () => ConnectionsCardModel());
    connectionsCardModel5 = createModel(context, () => ConnectionsCardModel());
    teamsCardModel1 = createModel(context, () => TeamsCardModel());
    teamsCardModel2 = createModel(context, () => TeamsCardModel());
    teamsCardModel3 = createModel(context, () => TeamsCardModel());
    teamsCardModel4 = createModel(context, () => TeamsCardModel());
    teamsCardModel5 = createModel(context, () => TeamsCardModel());
    listHeaderModel1 = createModel(context, () => ListHeaderModel());
    listHeaderModel2 = createModel(context, () => ListHeaderModel());
    listHeader2Model1 = createModel(context, () => ListHeader2Model());
    listHeaderModel3 = createModel(context, () => ListHeaderModel());
    listHeader2Model2 = createModel(context, () => ListHeader2Model());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    iconTextModel1.dispose();
    iconTextModel2.dispose();
    iconTextModel3.dispose();
    teamsCard2Model1.dispose();
    teamsCard2Model2.dispose();
    teamsCard2Model3.dispose();
    teamsCard2Model4.dispose();
    teamsCard2Model5.dispose();
    teamsCard2Model6.dispose();
    teamsCard2Model7.dispose();
    teamsCard2Model8.dispose();
    projectModel1.dispose();
    projectModel2.dispose();
    projectModel3.dispose();
    projectModel4.dispose();
    projectModel5.dispose();
    projectModel6.dispose();
    connectionsModel1.dispose();
    connectionsModel2.dispose();
    connectionsModel3.dispose();
    connectionsModel4.dispose();
    connectionsModel5.dispose();
    connectionsModel6.dispose();
    aboutCardModel1.dispose();
    aboutCardModel2.dispose();
    aboutCardModel3.dispose();
    aboutCardModel4.dispose();
    aboutCardModel5.dispose();
    aboutCardModel6.dispose();
    aboutCardModel7.dispose();
    aboutCardModel8.dispose();
    aboutCardModel9.dispose();
    aboutCardModel10.dispose();
    aboutCardModel11.dispose();
    aboutCardModel12.dispose();
    aboutCardModel13.dispose();
    avatarNameModel.dispose();
    connectionsCardModel1.dispose();
    connectionsCardModel2.dispose();
    connectionsCardModel3.dispose();
    connectionsCardModel4.dispose();
    connectionsCardModel5.dispose();
    teamsCardModel1.dispose();
    teamsCardModel2.dispose();
    teamsCardModel3.dispose();
    teamsCardModel4.dispose();
    teamsCardModel5.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    listHeaderModel1.dispose();
    listHeaderModel2.dispose();
    listHeader2Model1.dispose();
    listHeaderModel3.dispose();
    listHeader2Model2.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}
