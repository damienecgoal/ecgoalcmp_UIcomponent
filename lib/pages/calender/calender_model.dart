import '/components_2/day/day_widget.dart';
import '/components_2/day_table/day_table_widget.dart';
import '/components_2/footer/footer_widget.dart';
import '/components_2/label/label_widget.dart';
import '/components_2/nav_menu/nav_menu_widget.dart';
import '/components_2/search_bar/search_bar_widget.dart';
import '/components_2/week_tabel/week_tabel_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'calender_widget.dart' show CalenderWidget;
import 'package:flutter/material.dart';

class CalenderModel extends FlutterFlowModel<CalenderWidget> {
  ///  Local state fields for this page.

  bool personal = false;

  bool viewall = true;

  String? list;

  String calander = 'Month';

  bool business = false;

  bool family = false;

  bool holiday = false;

  bool etc = false;

  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // Model for Day component.
  late DayModel dayModel1;
  // Model for Day component.
  late DayModel dayModel2;
  // Model for Day component.
  late DayModel dayModel3;
  // Model for Day component.
  late DayModel dayModel4;
  // Model for Day component.
  late DayModel dayModel5;
  // Model for Day component.
  late DayModel dayModel6;
  // Model for Day component.
  late DayModel dayModel7;
  // Model for Day component.
  late DayModel dayModel8;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel1;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel2;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel3;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel4;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel5;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel6;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel7;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel8;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel9;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel10;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel11;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel12;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel13;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel14;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel15;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel16;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel17;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel18;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel19;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel20;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel21;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel22;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel23;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel24;
  // Model for Week_Tabel component.
  late WeekTabelModel weekTabelModel25;
  // Model for Day component.
  late DayModel dayModel9;
  // Model for Day component.
  late DayModel dayModel10;
  // Model for Day_Table component.
  late DayTableModel dayTableModel1;
  // Model for Day_Table component.
  late DayTableModel dayTableModel2;
  // Model for Day_Table component.
  late DayTableModel dayTableModel3;
  // Model for Day_Table component.
  late DayTableModel dayTableModel4;
  // Model for Day_Table component.
  late DayTableModel dayTableModel5;
  // Model for Day_Table component.
  late DayTableModel dayTableModel6;
  // Model for Day_Table component.
  late DayTableModel dayTableModel7;
  // Model for Day_Table component.
  late DayTableModel dayTableModel8;
  // Model for Day_Table component.
  late DayTableModel dayTableModel9;
  // Model for Day_Table component.
  late DayTableModel dayTableModel10;
  // Model for Day_Table component.
  late DayTableModel dayTableModel11;
  // Model for Day_Table component.
  late DayTableModel dayTableModel12;
  // Model for Day_Table component.
  late DayTableModel dayTableModel13;
  // Model for Day_Table component.
  late DayTableModel dayTableModel14;
  // Model for Day_Table component.
  late DayTableModel dayTableModel15;
  // Model for Day_Table component.
  late DayTableModel dayTableModel16;
  // Model for Day_Table component.
  late DayTableModel dayTableModel17;
  // Model for Day_Table component.
  late DayTableModel dayTableModel18;
  // Model for Day_Table component.
  late DayTableModel dayTableModel19;
  // Model for Day_Table component.
  late DayTableModel dayTableModel20;
  // Model for Day_Table component.
  late DayTableModel dayTableModel21;
  // Model for Day_Table component.
  late DayTableModel dayTableModel22;
  // Model for Day_Table component.
  late DayTableModel dayTableModel23;
  // Model for Day_Table component.
  late DayTableModel dayTableModel24;
  // Model for Day_Table component.
  late DayTableModel dayTableModel25;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // Model for Label component.
  late LabelModel labelModel1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // Model for Label component.
  late LabelModel labelModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // Model for Label component.
  late LabelModel labelModel3;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // Model for Label component.
  late LabelModel labelModel4;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered9 = false;
  // Model for Label component.
  late LabelModel labelModel5;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered10 = false;
  // Model for Label component.
  late LabelModel labelModel6;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered11 = false;
  // Model for Label component.
  late LabelModel labelModel7;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered12 = false;
  // Model for Label component.
  late LabelModel labelModel8;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered13 = false;
  // Model for Label component.
  late LabelModel labelModel9;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered14 = false;
  // Model for Label component.
  late LabelModel labelModel10;
  // Model for Day component.
  late DayModel dayModel11;
  // Model for Day component.
  late DayModel dayModel12;
  // Model for Day component.
  late DayModel dayModel13;
  // Model for Day component.
  late DayModel dayModel14;
  // Model for Day component.
  late DayModel dayModel15;
  // Model for Day component.
  late DayModel dayModel16;
  // Model for Day component.
  late DayModel dayModel17;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered15 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered16 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered17 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered18 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered19 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered20 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered21 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered22 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered23 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered24 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered25 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered26 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered27 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered28 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered29 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered30 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered31 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered32 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered33 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered34 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered35 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered36 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered37 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered38 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered39 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered40 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered41 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered42 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered43 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered44 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered45 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered46 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered47 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered48 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered49 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered50 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered51 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered52 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered53 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered54 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered55 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered56 = false;
  // Model for Footer component.
  late FooterModel footerModel;
  // Model for SearchBar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    dayModel1 = createModel(context, () => DayModel());
    dayModel2 = createModel(context, () => DayModel());
    dayModel3 = createModel(context, () => DayModel());
    dayModel4 = createModel(context, () => DayModel());
    dayModel5 = createModel(context, () => DayModel());
    dayModel6 = createModel(context, () => DayModel());
    dayModel7 = createModel(context, () => DayModel());
    dayModel8 = createModel(context, () => DayModel());
    weekTabelModel1 = createModel(context, () => WeekTabelModel());
    weekTabelModel2 = createModel(context, () => WeekTabelModel());
    weekTabelModel3 = createModel(context, () => WeekTabelModel());
    weekTabelModel4 = createModel(context, () => WeekTabelModel());
    weekTabelModel5 = createModel(context, () => WeekTabelModel());
    weekTabelModel6 = createModel(context, () => WeekTabelModel());
    weekTabelModel7 = createModel(context, () => WeekTabelModel());
    weekTabelModel8 = createModel(context, () => WeekTabelModel());
    weekTabelModel9 = createModel(context, () => WeekTabelModel());
    weekTabelModel10 = createModel(context, () => WeekTabelModel());
    weekTabelModel11 = createModel(context, () => WeekTabelModel());
    weekTabelModel12 = createModel(context, () => WeekTabelModel());
    weekTabelModel13 = createModel(context, () => WeekTabelModel());
    weekTabelModel14 = createModel(context, () => WeekTabelModel());
    weekTabelModel15 = createModel(context, () => WeekTabelModel());
    weekTabelModel16 = createModel(context, () => WeekTabelModel());
    weekTabelModel17 = createModel(context, () => WeekTabelModel());
    weekTabelModel18 = createModel(context, () => WeekTabelModel());
    weekTabelModel19 = createModel(context, () => WeekTabelModel());
    weekTabelModel20 = createModel(context, () => WeekTabelModel());
    weekTabelModel21 = createModel(context, () => WeekTabelModel());
    weekTabelModel22 = createModel(context, () => WeekTabelModel());
    weekTabelModel23 = createModel(context, () => WeekTabelModel());
    weekTabelModel24 = createModel(context, () => WeekTabelModel());
    weekTabelModel25 = createModel(context, () => WeekTabelModel());
    dayModel9 = createModel(context, () => DayModel());
    dayModel10 = createModel(context, () => DayModel());
    dayTableModel1 = createModel(context, () => DayTableModel());
    dayTableModel2 = createModel(context, () => DayTableModel());
    dayTableModel3 = createModel(context, () => DayTableModel());
    dayTableModel4 = createModel(context, () => DayTableModel());
    dayTableModel5 = createModel(context, () => DayTableModel());
    dayTableModel6 = createModel(context, () => DayTableModel());
    dayTableModel7 = createModel(context, () => DayTableModel());
    dayTableModel8 = createModel(context, () => DayTableModel());
    dayTableModel9 = createModel(context, () => DayTableModel());
    dayTableModel10 = createModel(context, () => DayTableModel());
    dayTableModel11 = createModel(context, () => DayTableModel());
    dayTableModel12 = createModel(context, () => DayTableModel());
    dayTableModel13 = createModel(context, () => DayTableModel());
    dayTableModel14 = createModel(context, () => DayTableModel());
    dayTableModel15 = createModel(context, () => DayTableModel());
    dayTableModel16 = createModel(context, () => DayTableModel());
    dayTableModel17 = createModel(context, () => DayTableModel());
    dayTableModel18 = createModel(context, () => DayTableModel());
    dayTableModel19 = createModel(context, () => DayTableModel());
    dayTableModel20 = createModel(context, () => DayTableModel());
    dayTableModel21 = createModel(context, () => DayTableModel());
    dayTableModel22 = createModel(context, () => DayTableModel());
    dayTableModel23 = createModel(context, () => DayTableModel());
    dayTableModel24 = createModel(context, () => DayTableModel());
    dayTableModel25 = createModel(context, () => DayTableModel());
    labelModel1 = createModel(context, () => LabelModel());
    labelModel2 = createModel(context, () => LabelModel());
    labelModel3 = createModel(context, () => LabelModel());
    labelModel4 = createModel(context, () => LabelModel());
    labelModel5 = createModel(context, () => LabelModel());
    labelModel6 = createModel(context, () => LabelModel());
    labelModel7 = createModel(context, () => LabelModel());
    labelModel8 = createModel(context, () => LabelModel());
    labelModel9 = createModel(context, () => LabelModel());
    labelModel10 = createModel(context, () => LabelModel());
    dayModel11 = createModel(context, () => DayModel());
    dayModel12 = createModel(context, () => DayModel());
    dayModel13 = createModel(context, () => DayModel());
    dayModel14 = createModel(context, () => DayModel());
    dayModel15 = createModel(context, () => DayModel());
    dayModel16 = createModel(context, () => DayModel());
    dayModel17 = createModel(context, () => DayModel());
    footerModel = createModel(context, () => FooterModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    dayModel1.dispose();
    dayModel2.dispose();
    dayModel3.dispose();
    dayModel4.dispose();
    dayModel5.dispose();
    dayModel6.dispose();
    dayModel7.dispose();
    dayModel8.dispose();
    weekTabelModel1.dispose();
    weekTabelModel2.dispose();
    weekTabelModel3.dispose();
    weekTabelModel4.dispose();
    weekTabelModel5.dispose();
    weekTabelModel6.dispose();
    weekTabelModel7.dispose();
    weekTabelModel8.dispose();
    weekTabelModel9.dispose();
    weekTabelModel10.dispose();
    weekTabelModel11.dispose();
    weekTabelModel12.dispose();
    weekTabelModel13.dispose();
    weekTabelModel14.dispose();
    weekTabelModel15.dispose();
    weekTabelModel16.dispose();
    weekTabelModel17.dispose();
    weekTabelModel18.dispose();
    weekTabelModel19.dispose();
    weekTabelModel20.dispose();
    weekTabelModel21.dispose();
    weekTabelModel22.dispose();
    weekTabelModel23.dispose();
    weekTabelModel24.dispose();
    weekTabelModel25.dispose();
    dayModel9.dispose();
    dayModel10.dispose();
    dayTableModel1.dispose();
    dayTableModel2.dispose();
    dayTableModel3.dispose();
    dayTableModel4.dispose();
    dayTableModel5.dispose();
    dayTableModel6.dispose();
    dayTableModel7.dispose();
    dayTableModel8.dispose();
    dayTableModel9.dispose();
    dayTableModel10.dispose();
    dayTableModel11.dispose();
    dayTableModel12.dispose();
    dayTableModel13.dispose();
    dayTableModel14.dispose();
    dayTableModel15.dispose();
    dayTableModel16.dispose();
    dayTableModel17.dispose();
    dayTableModel18.dispose();
    dayTableModel19.dispose();
    dayTableModel20.dispose();
    dayTableModel21.dispose();
    dayTableModel22.dispose();
    dayTableModel23.dispose();
    dayTableModel24.dispose();
    dayTableModel25.dispose();
    labelModel1.dispose();
    labelModel2.dispose();
    labelModel3.dispose();
    labelModel4.dispose();
    labelModel5.dispose();
    labelModel6.dispose();
    labelModel7.dispose();
    labelModel8.dispose();
    labelModel9.dispose();
    labelModel10.dispose();
    dayModel11.dispose();
    dayModel12.dispose();
    dayModel13.dispose();
    dayModel14.dispose();
    dayModel15.dispose();
    dayModel16.dispose();
    dayModel17.dispose();
    footerModel.dispose();
    searchBarModel.dispose();
  }
}
