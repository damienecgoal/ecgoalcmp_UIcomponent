import '/components/list/category_list1/category_list1_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'categories_widget.dart' show CategoriesWidget;
import 'package:flutter/material.dart';

class CategoriesModel extends FlutterFlowModel<CategoriesWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Category_List1 component.
  late CategoryList1Model categoryList1Model1;
  // Model for Category_List1 component.
  late CategoryList1Model categoryList1Model2;
  // Model for Category_List1 component.
  late CategoryList1Model categoryList1Model3;
  // Model for Category_List1 component.
  late CategoryList1Model categoryList1Model4;
  // Model for Category_List1 component.
  late CategoryList1Model categoryList1Model5;
  // Model for Category_List1 component.
  late CategoryList1Model categoryList1Model6;
  // Model for Category_List1 component.
  late CategoryList1Model categoryList1Model7;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    categoryList1Model1 = createModel(context, () => CategoryList1Model());
    categoryList1Model2 = createModel(context, () => CategoryList1Model());
    categoryList1Model3 = createModel(context, () => CategoryList1Model());
    categoryList1Model4 = createModel(context, () => CategoryList1Model());
    categoryList1Model5 = createModel(context, () => CategoryList1Model());
    categoryList1Model6 = createModel(context, () => CategoryList1Model());
    categoryList1Model7 = createModel(context, () => CategoryList1Model());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    categoryList1Model1.dispose();
    categoryList1Model2.dispose();
    categoryList1Model3.dispose();
    categoryList1Model4.dispose();
    categoryList1Model5.dispose();
    categoryList1Model6.dispose();
    categoryList1Model7.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}
