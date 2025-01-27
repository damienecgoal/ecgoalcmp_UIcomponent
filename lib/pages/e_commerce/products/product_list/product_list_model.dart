import '/components/list/product_list2/product_list2_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/list_info/list_info_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_list_widget.dart' show ProductListWidget;
import 'package:flutter/material.dart';

class ProductListModel extends FlutterFlowModel<ProductListWidget> {
  ///  Local state fields for this page.

  String earningReport = 'Orders';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // Model for List_Info component.
  late ListInfoModel listInfoModel1;
  // Model for List_Info component.
  late ListInfoModel listInfoModel2;
  // Model for List_Info component.
  late ListInfoModel listInfoModel3;
  // Model for List_Info component.
  late ListInfoModel listInfoModel4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for Product_List2 component.
  late ProductList2Model productList2Model1;
  // Model for Product_List2 component.
  late ProductList2Model productList2Model2;
  // Model for Product_List2 component.
  late ProductList2Model productList2Model3;
  // Model for Product_List2 component.
  late ProductList2Model productList2Model4;
  // Model for Product_List2 component.
  late ProductList2Model productList2Model5;
  // Model for Product_List2 component.
  late ProductList2Model productList2Model6;
  // Model for Product_List2 component.
  late ProductList2Model productList2Model7;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    listInfoModel1 = createModel(context, () => ListInfoModel());
    listInfoModel2 = createModel(context, () => ListInfoModel());
    listInfoModel3 = createModel(context, () => ListInfoModel());
    listInfoModel4 = createModel(context, () => ListInfoModel());
    productList2Model1 = createModel(context, () => ProductList2Model());
    productList2Model2 = createModel(context, () => ProductList2Model());
    productList2Model3 = createModel(context, () => ProductList2Model());
    productList2Model4 = createModel(context, () => ProductList2Model());
    productList2Model5 = createModel(context, () => ProductList2Model());
    productList2Model6 = createModel(context, () => ProductList2Model());
    productList2Model7 = createModel(context, () => ProductList2Model());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    listInfoModel1.dispose();
    listInfoModel2.dispose();
    listInfoModel3.dispose();
    listInfoModel4.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    productList2Model1.dispose();
    productList2Model2.dispose();
    productList2Model3.dispose();
    productList2Model4.dispose();
    productList2Model5.dispose();
    productList2Model6.dispose();
    productList2Model7.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}
