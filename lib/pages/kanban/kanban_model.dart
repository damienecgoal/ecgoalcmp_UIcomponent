import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/lable/lable_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'kanban_widget.dart' show KanbanWidget;
import 'package:flutter/material.dart';

class KanbanModel extends FlutterFlowModel<KanbanWidget> {
  ///  Local state fields for this page.

  UserStruct? selectedContact;
  void updateSelectedContactStruct(Function(UserStruct) updateFn) {
    updateFn(selectedContact ??= UserStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // Model for Lable component.
  late LableModel lableModel1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // Model for Lable component.
  late LableModel lableModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // Model for Lable component.
  late LableModel lableModel3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // Model for Lable component.
  late LableModel lableModel4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // Model for Lable component.
  late LableModel lableModel5;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // Model for Lable component.
  late LableModel lableModel6;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered9 = false;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    lableModel1 = createModel(context, () => LableModel());
    lableModel2 = createModel(context, () => LableModel());
    lableModel3 = createModel(context, () => LableModel());
    lableModel4 = createModel(context, () => LableModel());
    lableModel5 = createModel(context, () => LableModel());
    lableModel6 = createModel(context, () => LableModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    lableModel1.dispose();
    lableModel2.dispose();
    lableModel3.dispose();
    lableModel4.dispose();
    lableModel5.dispose();
    lableModel6.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}
