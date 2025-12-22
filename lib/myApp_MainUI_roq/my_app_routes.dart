/*
// This file declares routes of this app, in particular it declares the
// "structure" of the group of example routes, in a const List<Tuple2> object.
// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:roqsal_flutter_lects_labs_2026/Lecturs_roq/Lect6_1_UI_widgets_roq/14_Dropdown_Baisc_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Lecturs_roq/Lect6_1_UI_widgets_roq/15_Dropdown_List_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Lecturs_roq/Lect6_1_UI_widgets_roq/16_Dropdown_object_roq.dart';
import '../Custom_Widgets_roq/UI_ofCustomWidgets_roq/SignUp_roq.dart';
import '../Labs_roq/Lab2_layout_widgets_roq/gridView_builder_roq.dart';
import '../Labs_roq/Lab2_layout_widgets_roq/gridView_count_roq.dart';
import '../Labs_roq/Lab2_layout_widgets_roq/gridView_custom_roq.dart';
import '../Labs_roq/Lab2_layout_widgets_roq/gridView_extent_roq.dart';
import '../Labs_roq/Lab2_layout_widgets_roq/lay_mealUI_roq.dart';

import '../Labs_roq/Lect9_LocalStorage_All_Wayes_roq/main_ways_storedata_ffoline_roq.dart';
import '../Labs_roq/lab4_widget_samples_roq/widget_samples_roq/DropdownButton_demo_2025.dart';
import '../Labs_roq/lab4_widget_samples_roq/widget_samples_roq/widg_button_roq.dart';
import '../Labs_roq/lab4_widget_samples_roq/widget_samples_roq/widg_checkBox_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/10_SM_multiProvider_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/1_without_SM_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/2_with_SM_setState_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/3_1_SM_changNoti_consu_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/3_2_SM_changNoti_Consu_ex_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/5_SM_scopeProvider_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/6_1_SM_without_selector_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/6_2_SM_with_selector_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/7_SM_provider_of_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/8_SM_context_read_watch_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/9_SM_ProviderVsChangNoti_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_samples_roq/7_SM_provider_of_sampleroq/7_SM_main_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_samples_roq/Cart_Samples_roq/main_cartSample.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_samples_roq/SM_addTocart_sample_roq/main_ShoppingCart.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_samples_roq/advance_ShoppingCart_sample_roq/main_advanceShoppingCart.dart';
import '../Lecturs_roq/Lect13_Responsivity_Adaptiveness_roq/LayoutBuilder2_roq.dart';
import '../Lecturs_roq/Lect13_Responsivity_Adaptiveness_roq/LayoutBuilder_roq.dart';
import '../Lecturs_roq/Lect13_Responsivity_Adaptiveness_roq/MediaQuery_roq.dart';
import '../Lecturs_roq/Lect13_Responsivity_Adaptiveness_roq/expensesDemo_ofResAdap_roq/expensesDemoMain_roq.dart';
import '../Lecturs_roq/Lect14_Theming_roq/mainThem_roq.dart';
import '../Lecturs_roq/Lect2_layout_widgets_roq/gridViewDynamic_roq.dart';
import '../Lecturs_roq/Lect2_layout_widgets_roq/listView_Builder_roq.dart';
import '../Lecturs_roq/Lect2_layout_widgets_roq/listView_roq.dart';
import '../Lecturs_roq/Lect2_layout_widgets_roq/stack_withPosition_roq.dart';
import '../Lecturs_roq/Lect2_layout_widgets_roq/stack_withoutPosition_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/bottomsheet_roq/scaffold_Modalbottomsheet_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/FAB_roq/1_scaffold_FAB_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/FAB_roq/2_scaffold_FAB_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/FAB_roq/3_scaffold_FAB_extend_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/Flushbar_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/SnackBar_roq/0_scaffold_SnackBari_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/SnackBar_roq/1_scaffold_SnackBarinVar_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/ToastCustom_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/Toast_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/bottomNavigationBar_roq/0_scaffold_bottomNavigationBar_items_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/bottomNavigationBar_roq/1_scaffold_bottomNavigationBar_onTap_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/bottomNavigationBar_roq/2_scaffold_bottomNavigationBar_curruntindex_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/bottomsheet_roq/scaffold_Modalbottomsheet_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/bottomsheet_roq/scaffold_prisistentBottomsheet_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/scaffold_demos_roq/scaffold_adaptive_Demo1_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/scaffold_demos_roq/scaffold_allPro_Demo1_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/10_IconButton_baisc_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/11_InkwellButton_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/12_OutlinedButton_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/13_buttons_Demo_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/17_PopupMenu_Baisc_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/18_PopupMenu_List_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/1_Text_Baisc_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/2_Text_morPro_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/3_RichText _roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/4_Icon_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/5_Textfield_baisc_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/6_Textfield_Cotroller_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/6_Textfield_onChange_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/8_TextButton_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/9_setState_roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/1_formWidget_roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/2_1_Radio_ListTile_roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/2_2_RadioListTile_roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/2_3_RadioForm_objectRoq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/3_1_CheckboxRow_roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/3_2_CheckboxListTitle_roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/4_1_ switch _roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/4_2_SwitchListTile_roq.dart';
import '../myApp_Data_Settings_roq/constants.dart';

import 'about.dart';
///////////////////////////////////////////////////////////////////

import 'home_page.dart';
import 'my_route.dart';

///////////////////////////////////////
const MyRoute kHomeRoute = MyRoute(
  sourceFilePath: 'lib/myApp_MainUI_roq/about.dart',
  title: APP_NAME,
  routeName: Navigator.defaultRouteName,
  child: MyHomePage(),
);

const MyRoute kAboutRoute = MyRoute(
  sourceFilePath: 'lib/routes/about.dart',
  title: 'About',
  links: {'Doc': 'https://docs.flutter.dev/development/ui/widgets/material'},
  child: MyAboutRoute(),
);

class MyRouteGroup {
  const MyRouteGroup(
      {required this.groupName, required this.icon, required this.routes});

  final String groupName;
  final Widget icon;
  final List<MyRoute> routes;
}

/////////////////////////////////////////////////////////////////
const List<MyRouteGroup> kMy_LabAppRoutsUI = <MyRouteGroup>[
  /////////////////////// Labs ///////////////
  //---------------------- Lab5 part1 ----------------------------
  //DyanmicListDisplay()
  //---------------------- Lab5 part2 ----------------------------
  //Form_Roq_Ex2(),
  //--------------------------Navigation Lab for Students------------------
  // Main_Push_Pop_Only_Ex1_roq()
  //Main_Push_Pop_Send_DataEx2_roq()
  //Navig_with_Named_Routes_Only()
  /////////Main_Page_Pass_Data_Roq()
  //HomeScreen_ReturnEx_Roq(),
  //Animate_a_widget_across_screens_Roq_Ex()
  //--------------------------Gesture Lab for Students------------------
  //Without_Gesture_Roq()
  //With_Gesture_Roq()
  //GestureDetector_samp_roq()
  //GestureDetector_Sample3_Roq()
  //GestureDetector_Sample5_Roq()

  //-------------------------------Async  Lab for Students------------------

  //GridView_count_Roq()
  //Future_Builder_Roq_Ex0(),
  //FuturBuilder_Roq_Ex(),
  //URL_Launcher_Roq_Ex_final(),
  //Url_Launcher_Roq_All_Ex(),

  //////////////////////////////// Lab_3 Layouts ///////
  ////////////////// ListView
  //SampleLayout_0_Roq(),
  //SampleLayout_1_Roq(),
  //MealUISample_Roq(),
  // ListView_Dialog_Roq()
  ////////////////////////////////////Layout part2
  //Listview_Horizontal_Roq(),
  //ListViewseparated_Roq(),
  //GridView_count_Roq(),
  //Grideview_extent_Roq(),
  // GridView_builder_Roq(),
  /////////////////////////////// Lab 4 UI widgets ////
  //DropdownButton_Roq_Demo(),
  // Textfield_Controller_Roq_Ex(),
  //PopupButton_MyRoq_App(),
  //ElevatedButton_Roq_Demo()
  //ElevatedButton_Roq()
  // Textfield_main_Roq()
  //MyApp()
  //Checkbox_MultiSelect_roq()
  //SignUpForm_Roq()

  //Calculator_Way1_Roq()
  //Calculator_Way2_Roq()
  //Radio_Widget_Ex1(),
  //RadioWidgetDemo(),
  //CheckBoxListTileDemo(),
  //Switch_Custom_Demo(),
  //Image_Slider_Roq_Ex(),
  //PopupMenuButton_Roq()
  ///////////////////// Track The app
  // MyApp_Roq()
  ////////////////////////////////////////////// Lab_5 Scaffold ////
  //Scaff_Drawer_Roq()
  //Scaffold_Allproperties_Roq()
  //Scaff_Bottomsheet_Roq()
  //Scaff_AppBarTab_Roq()
  //////////////////////////////// Lab_6 Navigation ////
  //Main_Screen_Push_Roq()
  // Main_Page_Pass_Data_Roq()
  //RoutesExample_Roq()
  //Animate_Across_Screens_Roq()
  // MultiImage_by_imagepicker_Roq_Ex()
  //DialogsType_Samples_Roq()
  ///////////////////////////////////////// Lap_7 Handling the scale gesture
  //Without_Gesture_Roq()
  //With_Gesture_Roq()
  //GestureDetector_samp_roq()
  //GestureDetector_Sample1_Roq()
  //GestureDetector_Sample2_Roq()
  //GestureDetector_Sample3_Roq()
  // GestureDetector_Sample4_Roq()
  ////////////////////// Most Events in GestureDetector ///////////////////
  //GestureDetector_Sample5_Roq()
  //ZoomableWidget1_Roq(child: Center(child: Container(color: Colors.cyan,width: 100,height: 200,)),),
  // ZoomableWidget (child: Center(child: Container(color: Colors.yellow,width: 100,height: 200,)),),
  //ZoomWidget_Roq()
  //WebView_Roq()


  /////////////////////////////////////////////// Lab_8 Async
  //UrlLauncher_Roq()
  //URLLauncher_Roq(title: "URlLuncher App Roq"),

  /////////////////////////////////////////// Local Storage ==>offline DB
  //Main_Sqlflite_CURD_HW_Roq() // Idont Like but the app is run Correctly
  //Sql_Baisc_AllOpr_Roq() // Idont Like but the app is don't run Correctly

  //EmployeeMain_Roq() //// Idont Like but the app is  run Correctly and contain only two opreation
  // save and view
  //HomePage_Crud_image_Roq()// Updat Op :null
  //BytebankApp() // As App in Lect9 (Note App)
  // Main_Sqlf_Ex4_Roq() // i'm not undarstand what it do ////////////
  //-------------------------------------------------------------
  //Main_Sqlf_Ex3_Roq()  // HW
  //-------------------------------------------------------------
  ///////////////////////////////////// Online Storage /////////////////
  //Sql_Sample_Roq() //Not Working Error

  //////////////////////////////////////// Offline  Project /////////////////////

  //Main_Sqlf_Proj_EM_Roq()
  //Main_Sqlf_Proj_Dogs_Roq()


  MyRouteGroup(
    groupName: 'Lab2 Layout Widgets',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: GridViewCount_Roq(),
        title: 'GridView.Count',
        description: 'GridView.Count',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: GridViewBuilder_Roq(),
        title: 'GridView.Builder',
        description: 'Login GridListView',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: GridViewCustom_Roq(),
        title: 'GridView.custom',
        description: 'Stack Baisc without use Position widget',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: GridViewExtent_Roq(),
        title: 'GridView.extent',
        description: 'Stack Baisc with use Position widget',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: MealUISample_Roq(),
        title: 'Meal Sample',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
    ],
  ),
  MyRouteGroup(
      groupName: 'Lab9 All Local Storages Wayes',
      icon: Icon(Icons.widgets),
      routes: <MyRoute>[
        MyRoute(
          child: Main_StoreData_Offline_Roq(),
          title: 'All Local Storages Wayes',
          description: 'GridView.Count',
          sourceFilePath: '',
          //indexdemo_roq: 0,
        ),
      ]),
];
const kMy_LectAppRoutsUI = <MyRouteGroup>[
  MyRouteGroup(
    groupName: 'Lect4 Scaffold Widgets',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: FAB_Roq_App(),
        title: 'Baisc FAB',
        description: 'Baisc ListView',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: FAB_Baisc_Roq_App(),
        title: 'FAB without extended',
        description: 'Login List',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: FAB_Extend_Roq_App(),
        title: 'FAB with extended',
        description: 'Stack Baisc without use Position widget',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: BottomNavigationBarItem_Roq(),
        title: 'BottomNavigationBar Items',
        description: 'Stack Baisc with use Position widget',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: BottomNavigationBar_onTap_Roq(),
        title: 'BottomNavigationBar_onTap',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: BottomNavigationBar_curruntIndex_Roq(),
        title: 'BottomNavigationBar CurruntIndex_Roq',
        description: 'GridView Baisc',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child:  Modal_Bottomsheet_Roq(),
        title: 'Modal Bottom sheet',
        description: 'GridView Baisc',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child:  BottomSheetPersistent_Roq_App(),
        title: 'Persistent Bottom sheet',
        description: 'GridView Baisc',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child:  Baisc_SnackBar_Roq(),
        title: 'Baisc SnackBar',
        description: 'GridView Baisc',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child:  Var_of_SnackBar_Roq(),
        title: 'SnackBar in varibles',
        description: '  ',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child:  Toast_Widget_roq(),
        title: 'Toast',
        description: '  ',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child:  Toast_Custom_Simple_Roq(),
        title: 'Toast',
        description: '  ',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child:  Flushbar_Roq_Ex_All(),
        title: 'Flushbar',
        description: '  ',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      ///////////////////////////////////// Scaffold Demoes /////////////////////////////////////////
      MyRoute(
        child: Scaffold_Properties_Roq(),
        title: "Commone Scaffold\'s Properties",
        description: 'GridView Baisc',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child:  AdaptiveScaffold_Roq(),
        title: 'Adaptive Scaffold',
        description: 'GridView Baisc',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Lect5 Layout Widgets',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: ListView_Roq_Ex(),
        title: 'ListView',
        description: 'Baisc ListView',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: ListViewBuilder_Roq(),
        title: 'ListView.Builder',
        description: 'Login List',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: StackBaisc_Roq(),
        title: 'Stack Baisc',
        description: 'Stack Baisc without use Position widget',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: StackwithPosition_Roq(),
        title: 'Stack & Position widget',
        description: 'Stack Baisc with use Position widget',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: Static_GridView_Roq(),
        title: 'GridView.count',
        description: 'GridView Baisc',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
    ],
  ),
  ///////////////////////////////////////// help code to fast copy
  MyRouteGroup(
    groupName: 'Nothingggggg',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: FAB_Roq_App(),
        title: '',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),

    ],
  ),
  /////////////////////////////////////////
  MyRouteGroup(
    groupName: 'Lect6 Common UI Widgets part1',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[

      MyRoute(
        child: Text_Baisc_Roq(),
        title: 'Text Baisc',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: Text_MoreProp_Roq(),
        title: 'Text More Properties',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: RichText_Roq(),
        title: ' RichText ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: Icon_Baisc_Roq(),
        title: 'Icon ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: Textfield_Baisc_Roq(),
        title: 'Textfield',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: Textfield_Controller_Roq(),
        title: 'Textfield & Controller',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: Textfield_onChange_Roq(),
        title: 'Textfield & onChange ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: ElevatedButton_Roq(),
        title: 'ElevatedButton',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: TextButton_Roq(),
        title: 'TextButton',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: ElevatedButton_Roq_Demo(),
        title: 'ElevatedButton & setState',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),

      MyRoute(
        child: IconButton_Baisc_Roq(),
        title: 'IconButton Baisc',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: InkWell_Roq_App(),
        title: 'InkWell',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: OutlinedButtonMain_Roq(),
        title: 'OutlinedButton',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: Buttons_Demo_Roq(),
        title: 'Buttons Demo',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: DropdownButton_Baisc_Roq(),
        title: 'DropdownButton Baisc',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: Dropdown_List_Roq(),
        title: 'DropdownButton intList demo',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: DropdownButton_Object_Roq(),
        title: 'DropDownButton list with Object type demo',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: DropdownButton_Main_Demo_2025(),
        title: 'DropdownButton Demo 2025',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),



      MyRoute(
        child: PopupMenu_Baisc_Roq(),
        title: 'PopupMenuButton demo',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),

      MyRoute(
        child: PopupMenuButton_intList_Roq(),
        title: 'PopupMenuButton intList demo',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
    ],
  ),
MyRouteGroup(
groupName: 'Lect6 Common UI Widgets  part2',
icon: Icon(Icons.widgets),
routes: <MyRoute>[

MyRoute(
child: Form_Roq(),
title: 'Form Login Demo',
description: '',
sourceFilePath: '',
//indexdemo_roq: 0,
),
  MyRoute(
    child: Radio_ListTile_Roq(),
    title: 'Radio in ListTile ',
    description: '',
    sourceFilePath: '',
//indexdemo_roq: 0,
  ),
  MyRoute(
    child: RadioListTile_Roq(),
    title: 'RadioListTile  widget',
    description: '',
    sourceFilePath: '',
//indexdemo_roq: 0,
  ),
  MyRoute(
    child: RadioWidgetDemo_Roq(),
    title: 'RadioWidget Demo',
    description: '',
    sourceFilePath: '',
//indexdemo_roq: 0,
  ),
  MyRoute(
    child: CheckBox_Row_Roq(),
    title: 'CheckBox in Row',
    description: '',
    sourceFilePath: '',
//indexdemo_roq: 0,
  ),
  MyRoute(
    child: CheckboxListTile_Roq(),
    title: 'CheckboxListTile ',
    description: '',
    sourceFilePath: '',
//indexdemo_roq: 0,
  ),
  MyRoute(
    child: Checkbox_MultiSelect_roq(),
    title: ' Checkbox MultiSelect Demo',
    description: '',
    sourceFilePath: '',
//indexdemo_roq: 0,
  ),
  MyRoute(
    child: Switch_Roq(),
    title: ' Switch ',
    description: '',
    sourceFilePath: '',
//indexdemo_roq: 0,
  ),
  MyRoute(
    child: SwitchListTile_Roq(),
    title: ' SwitchListTile ',
    description: '',
    sourceFilePath: '',
//indexdemo_roq: 0,
  ),




]),
//--------------------------------- State Management -------------------------
  MyRouteGroup(
    groupName: 'State Management(Provider)',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: Without_StateManagment_Roq(),
        title: 'Without StateManagment',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: With_SM_setState_Roq(),
        title: 'Stateful Widgets',
        description: '''Stateful Widgets are Flutter’s built-in mechanism for handling state.
            They consist of two classes: `StatefulWidget` and `State`. 
            The `StatefulWidget` represents the immutable part of the widget, 
            while the `State` object holds the mutable state data. ''',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: With_SM_ChangNoti_Consum_Roq(),
        title: 'ChangeNotifierProvider And Consumer',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: With_SM_ChangNoti_Consum_ExRoq(),
        title: 'ChangeNotifierProvider And Consumer Example',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: SM_ScopeProviders_Roq(),
        title: 'Scope Providers',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: SM_without_Selector_Roq(),
        title: 'Without Use Selector ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: SM_with_Selector_Roq(),
        title: 'With Use Selector ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: SM_Provider_of_Context_Roq(),
        title: 'Provider of(context) ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: SM_Provider_of_Context_Roq() ,
        title: 'Provider of Context) ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: SM_Context_read_watch_Roq(),
        title: 'context.watch() AND context.read()) ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: SM_Provider_vs_ChangNotif_Roq(),
        title: 'Provider vs ChangeNotifyProvider ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: SM_MultiProvider_Roq(),
        title: 'MultiProviders',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: SampleProvider_of_Context_Roq(),
        title: 'Sample1 : Sample Provider.of(contxt) ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: MainAddCart_Roq(),
        title: 'Sample2 : Main Shopping Cart ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: CartSample_MyApp(),
        title: 'Sample3 : More Detailes Shopping Cart ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),



      MyRoute(
        child: MainShoppingCart_Roq(),
        title: 'Sample4 : Advance Main Shopping Cart ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),

    ],
  ),
  MyRouteGroup(
    groupName: 'Lect13 Resposive and Adaptive',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: MediaQuery_Roq(),
        title: 'MediaQuery ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),


      MyRoute(
        child: LayoutBuilder_Roq(),
        title: 'LayoutBuilder ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),

      MyRoute(
        child: LayoutBilder2_Roq(),
        title: 'LayoutBuilder ',
        description: '',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),

      MyRoute(
        child: ExpensesApp_Roq(),
        title: 'Personal Expenses UI Sample ',
        description: 'Personal Expenses Futter App will apply Responsiv and Adaptive ',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),
      MyRoute(
        child: ExpenseTheme_Roq(),
        title: 'Personal Expenses UI Sample ',
        description: 'Personal Expenses Futter App will apply Theme ',
        sourceFilePath: '',
        //indexdemo_roq: 0,
      ),



      //indexdemo_roq: 0,

    ],
  ),
];
const List<MyRouteGroup> kMyAppRoutesProject = <MyRouteGroup>[];

/////////////////////////////////////// All Exercises Groups //////
const kMyAppRoutesExercises = <MyRouteGroup>[
/////////////////////////Exercises Flutter Routes //////////////////////////
];
///////////////////////////////////Root Sample section routes////////////////////////
const kMyAppRoutesQuiz = <MyRouteGroup>[
/////////////////////////Exercises Flutter Routes //////////////////////////
];
////////////////////////////////////////////////////////////////
final List<MyRouteGroup> kAllRouteGroups = <MyRouteGroup>[
  ...kMy_LabAppRoutsUI,
  ...kMy_LectAppRoutsUI,
  ...kMyAppRoutesProject,
  ...kMyAppRoutesExercises,
  ...kMyAppRoutesQuiz,
];

final List<MyRoute> kAllRoutes = <MyRoute>[
  ...kAllRouteGroups.expand((group) => group.routes),
];

final Map<String, MyRoute> kRouteNameToRoute = <String, MyRoute>{
  for (final route in kAllRoutes) route.routeName: route
};

final kRouteNameToRouteGroup = <String, MyRouteGroup>{
  for (final group in kAllRouteGroups)
    for (final route in group.routes) route.routeName: group
};

// This app's root-level routing table.
final Map<String, WidgetBuilder> kAppRoutingTable = <String, WidgetBuilder>{
  Navigator.defaultRouteName: (context) => kHomeRoute,
  kAboutRoute.routeName: (context) => kAboutRoute,
  for (MyRoute route in kAllRoutes) route.routeName: (context) => route,
};
*/

import 'package:flutter/material.dart';
import 'package:roqsal_flutter_lects_labs_2026/Lecturs_roq/Lect6_1_UI_widgets_roq/14_Dropdown_Baisc_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Lecturs_roq/Lect6_1_UI_widgets_roq/15_Dropdown_List_roq.dart';
import 'package:roqsal_flutter_lects_labs_2026/Lecturs_roq/Lect6_1_UI_widgets_roq/16_Dropdown_object_roq.dart';
import '../Custom_Widgets_roq/UI_ofCustomWidgets_roq/SignUp_roq.dart';
import '../Labs_roq/Lab2_layout_widgets_roq/gridView_builder_roq.dart';
import '../Labs_roq/Lab2_layout_widgets_roq/gridView_count_roq.dart';
import '../Labs_roq/Lab2_layout_widgets_roq/gridView_custom_roq.dart';
import '../Labs_roq/Lab2_layout_widgets_roq/gridView_extent_roq.dart';
import '../Labs_roq/Lab2_layout_widgets_roq/lay_mealUI_roq.dart';


import '../Labs_roq/lab4_widget_samples_roq/widget_samples_roq/DropdownButton_demo_2025.dart';
import '../Labs_roq/lab4_widget_samples_roq/widget_samples_roq/widg_button_roq.dart';
import '../Labs_roq/lab4_widget_samples_roq/widget_samples_roq/widg_checkBox_roq.dart';

import '../Lecturs_roq/Lect7_navigation_roq/Explain_of_Student/main_navigation_roq.dart';
import '../Lecturs_roq/Lect9_LocalStorage_All_Wayes_roq/main_ways_storedata_ffoline_roq.dart';
import '../Lecturs_roq/Lect10_api_roq/main_api.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/10_SM_multiProvider_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/1_without_SM_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/2_with_SM_setState_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/3_1_SM_changNoti_consu_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/3_2_SM_changNoti_Consu_ex_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/5_SM_scopeProvider_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/6_1_SM_without_selector_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/6_2_SM_with_selector_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/7_SM_provider_of_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/8_SM_context_read_watch_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_concepts_roq/9_SM_ProviderVsChangNoti_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_samples_roq/7_SM_provider_of_sampleroq/7_SM_main_roq.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_samples_roq/Cart_Samples_roq/main_cartSample.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_samples_roq/SM_addTocart_sample_roq/main_ShoppingCart.dart';
import '../Lecturs_roq/Lect11_statmanagment_roq/stateManagment_samples_roq/advance_ShoppingCart_sample_roq/main_advanceShoppingCart.dart';
import '../Lecturs_roq/Lect13_Responsivity_Adaptiveness_roq/LayoutBuilder2_roq.dart';
import '../Lecturs_roq/Lect13_Responsivity_Adaptiveness_roq/LayoutBuilder_roq.dart';
import '../Lecturs_roq/Lect13_Responsivity_Adaptiveness_roq/MediaQuery_roq.dart';
import '../Lecturs_roq/Lect13_Responsivity_Adaptiveness_roq/expensesDemo_ofResAdap_roq/expensesDemoMain_roq.dart';
import '../Lecturs_roq/Lect14_Theming_roq/mainThem_roq.dart';
import '../Lecturs_roq/Lect2_layout_widgets_roq/gridViewDynamic_roq.dart';
import '../Lecturs_roq/Lect2_layout_widgets_roq/listView_Builder_roq.dart';
import '../Lecturs_roq/Lect2_layout_widgets_roq/listView_roq.dart';
import '../Lecturs_roq/Lect2_layout_widgets_roq/stack_withPosition_roq.dart';
import '../Lecturs_roq/Lect2_layout_widgets_roq/stack_withoutPosition_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/FAB_roq/1_scaffold_FAB_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/FAB_roq/2_scaffold_FAB_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/FAB_roq/3_scaffold_FAB_extend_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/Flushbar_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/SnackBar_roq/0_scaffold_SnackBari_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/SnackBar_roq/1_scaffold_SnackBarinVar_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/ToastCustom_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/Toast_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/bottomNavigationBar_roq/0_scaffold_bottomNavigationBar_items_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/bottomNavigationBar_roq/1_scaffold_bottomNavigationBar_onTap_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/bottomNavigationBar_roq/2_scaffold_bottomNavigationBar_curruntindex_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/bottomsheet_roq/scaffold_Modalbottomsheet_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/bottomsheet_roq/scaffold_prisistentBottomsheet_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/scaffold_demos_roq/scaffold_adaptive_Demo1_roq.dart';
import '../Lecturs_roq/Lect3_MaterialApp_Scaffold_widgets_roq/scaffold_demos_roq/scaffold_allPro_Demo1_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/10_IconButton_baisc_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/11_InkwellButton_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/12_OutlinedButton_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/13_buttons_Demo_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/17_PopupMenu_Baisc_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/18_PopupMenu_List_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/1_Text_Baisc_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/2_Text_morPro_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/3_RichText _roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/4_Icon_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/5_Textfield_baisc_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/6_Textfield_Cotroller_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/6_Textfield_onChange_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/8_TextButton_roq.dart';
import '../Lecturs_roq/Lect6_1_UI_widgets_roq/9_setState_roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/1_formWidget_roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/2_1_Radio_ListTile_roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/2_2_RadioListTile_roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/2_3_RadioForm_objectRoq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/3_1_CheckboxRow_roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/3_2_CheckboxListTitle_roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/4_1_ switch _roq.dart';
import '../Lecturs_roq/Lect6_2_UI_widgets_roq/4_2_SwitchListTile_roq.dart';
import '../myApp_Data_Settings_roq/constants.dart';
import 'about.dart';
import 'home_page.dart';
import 'my_route.dart';

const MyRoute kHomeRoute = MyRoute(
  sourceFilePath: 'lib/myApp_MainUI_roq/about.dart',
  title: APP_NAME,
  routeName: Navigator.defaultRouteName,
  child: MyHomePage(),
);

const MyRoute kAboutRoute = MyRoute(
  sourceFilePath: 'lib/routes/about.dart',
  title: 'About',
  links: {'Doc': 'https://docs.flutter.dev/development/ui/widgets/material'},
  child: MyAboutRoute(),
);

class MyRouteGroup {
  const MyRouteGroup({
    required this.groupName,
    required this.icon,
    required this.routes,
  });

  final String groupName;
  final Widget icon;
  final List<MyRoute> routes;
}

const List<MyRouteGroup> kMy_LabAppRoutsUI = <MyRouteGroup>[
  MyRouteGroup(
    groupName: 'Lab2 Layout Widgets',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: GridViewCount_Roq(),
        title: 'GridView.Count',
        description: 'GridView.Count',
        sourceFilePath: '',
      ),
      MyRoute(
        child: GridViewBuilder_Roq(),
        title: 'GridView.Builder',
        description: 'Login GridListView',
        sourceFilePath: '',
      ),
      MyRoute(
        child: GridViewCustom_Roq(),
        title: 'GridView.custom',
        description: 'Stack Baisc without use Position widget',
        sourceFilePath: '',
      ),
      MyRoute(
        child: GridViewExtent_Roq(),
        title: 'GridView.extent',
        description: 'Stack Baisc with use Position widget',
        sourceFilePath: '',
      ),
      MyRoute(
        child: MealUISample_Roq(),
        title: 'Meal Sample',
        description: '',
        sourceFilePath: '',
      ),
    ],
  ),

];

const kMy_LectAppRoutsUI = <MyRouteGroup>[
  MyRouteGroup(
    groupName: 'Lect4 Scaffold Widgets',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: FAB_Roq_App(),
        title: 'Baisc FAB',
        description: 'Baisc ListView',
        sourceFilePath: '',
      ),
      MyRoute(
        child: FAB_Baisc_Roq_App(),
        title: 'FAB without extended',
        description: 'Login List',
        sourceFilePath: '',
      ),
      MyRoute(
        child: FAB_Extend_Roq_App(),
        title: 'FAB with extended',
        description: 'Stack Baisc without use Position widget',
        sourceFilePath: '',
      ),
      MyRoute(
        child: BottomNavigationBarItem_Roq(),
        title: 'BottomNavigationBar Items',
        description: 'Stack Baisc with use Position widget',
        sourceFilePath: '',
      ),
      MyRoute(
        child: BottomNavigationBar_onTap_Roq(),
        title: 'BottomNavigationBar_onTap',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: BottomNavigationBar_curruntIndex_Roq(),
        title: 'BottomNavigationBar CurruntIndex_Roq',
        description: 'GridView Baisc',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Modal_Bottomsheet_Roq(),
        title: 'Modal Bottom sheet',
        description: 'GridView Baisc',
        sourceFilePath: '',
      ),
      MyRoute(
        child: BottomSheetPersistent_Roq_App(),
        title: 'Persistent Bottom sheet',
        description: 'GridView Baisc',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Baisc_SnackBar_Roq(),
        title: 'Baisc SnackBar',
        description: 'GridView Baisc',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Var_of_SnackBar_Roq(),
        title: 'SnackBar in varibles',
        description: '  ',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Toast_Widget_roq(),
        title: 'Toast',
        description: '  ',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Toast_Custom_Simple_Roq(),
        title: 'Toast',
        description: '  ',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Flushbar_Roq_Ex_All(),
        title: 'Flushbar',
        description: '  ',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Scaffold_Properties_Roq(),
        title: "Commone Scaffold's Properties",
        description: 'GridView Baisc',
        sourceFilePath: '',
      ),
      MyRoute(
        child: AdaptiveScaffold_Roq(),
        title: 'Adaptive Scaffold',
        description: 'GridView Baisc',
        sourceFilePath: '',
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Lect5 Layout Widgets',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: ListView_Roq_Ex(),
        title: 'ListView',
        description: 'Baisc ListView',
        sourceFilePath: '',
      ),
      MyRoute(
        child: ListViewBuilder_Roq(),
        title: 'ListView.Builder',
        description: 'Login List',
        sourceFilePath: '',
      ),
      MyRoute(
        child: StackBaisc_Roq(),
        title: 'Stack Baisc',
        description: 'Stack Baisc without use Position widget',
        sourceFilePath: '',
      ),
      MyRoute(
        child: StackwithPosition_Roq(),
        title: 'Stack & Position widget',
        description: 'Stack Baisc with use Position widget',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Static_GridView_Roq(),
        title: 'GridView.count',
        description: 'GridView Baisc',
        sourceFilePath: '',
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Lect6 Common UI Widgets part1',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: Text_Baisc_Roq(),
        title: 'Text Baisc',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Text_MoreProp_Roq(),
        title: 'Text More Properties',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: RichText_Roq(),
        title: ' RichText ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Icon_Baisc_Roq(),
        title: 'Icon ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Textfield_Baisc_Roq(),
        title: 'Textfield',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Textfield_Controller_Roq(),
        title: 'Textfield & Controller',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Textfield_onChange_Roq(),
        title: 'Textfield & onChange ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: ElevatedButton_Roq(),
        title: 'ElevatedButton',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: TextButton_Roq(),
        title: 'TextButton',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: ElevatedButton_Roq_Demo(),
        title: 'ElevatedButton & setState',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: IconButton_Baisc_Roq(),
        title: 'IconButton Baisc',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: InkWell_Roq_App(),
        title: 'InkWell',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: OutlinedButtonMain_Roq(),
        title: 'OutlinedButton',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Buttons_Demo_Roq(),
        title: 'Buttons Demo',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: DropdownButton_Baisc_Roq(),
        title: 'DropdownButton Baisc',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Dropdown_List_Roq(),
        title: 'DropdownButton intList demo',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: DropdownButton_Object_Roq(),
        title: 'DropDownButton list with Object type demo',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: DropdownButton_Main_Demo_2025(),
        title: 'DropdownButton Demo 2025',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: PopupMenu_Baisc_Roq(),
        title: 'PopupMenuButton demo',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: PopupMenuButton_intList_Roq(),
        title: 'PopupMenuButton intList demo',
        description: '',
        sourceFilePath: '',
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Lect6 Common UI Widgets part2',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: Form_Roq(),
        title: 'Form Login Demo',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Radio_ListTile_Roq(),
        title: 'Radio in ListTile ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: RadioListTile_Roq(),
        title: 'RadioListTile widget',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: RadioWidgetDemo_Roq(),
        title: 'RadioWidget Demo',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: CheckBox_Row_Roq(),
        title: 'CheckBox in Row',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: CheckboxListTile_Roq(),
        title: 'CheckboxListTile ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Checkbox_MultiSelect_roq(),
        title: 'Checkbox MultiSelect Demo',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: Switch_Roq(),
        title: ' Switch ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: SwitchListTile_Roq(),
        title: ' SwitchListTile ',
        description: '',
        sourceFilePath: '',
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Lect7 Navigation & Routing',
    icon: Icon(Icons.navigate_next_sharp),
    routes: <MyRoute>[
      MyRoute(
        child: Main_Navigation_Roq(),
        title: 'Navigation & Routing',
        description:  "Navigation & Routing in Flutter using RoqSal way",
        sourceFilePath: '',
      ),

    ],
  ),
  MyRouteGroup(
    groupName: 'Lect9 All Local Storages Wayes',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: Main_StoreData_Offline_Roq(),
        title: 'All Local Storages Wayes',
        description: 'All wayes (SharedPref ,File(JSON-CSV-TXT) , SQLite) to store data offline in Flutter',
        sourceFilePath: '',
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Lect10 ِِAPI with Flutter',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: Main_API_All_Roq(),
        title: 'API with Flutter',
        description: 'All wayes (Offline and Online) to work with API in Flutter',
        sourceFilePath: '',
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'State Management(Provider)',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: Without_StateManagment_Roq(),
        title: 'Without StateManagment',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: With_SM_setState_Roq(),
        title: 'Stateful Widgets',
        description: '''Stateful Widgets are Flutter's built-in mechanism for handling state.
            They consist of two classes: `StatefulWidget` and `State`. 
            The `StatefulWidget` represents the immutable part of the widget, 
            while the `State` object holds the mutable state data.''',
        sourceFilePath: '',
      ),
      MyRoute(
        child: With_SM_ChangNoti_Consum_Roq(),
        title: 'ChangeNotifierProvider And Consumer',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: With_SM_ChangNoti_Consum_ExRoq(),
        title: 'ChangeNotifierProvider And Consumer Example',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: SM_ScopeProviders_Roq(),
        title: 'Scope Providers',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: SM_without_Selector_Roq(),
        title: 'Without Use Selector ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: SM_with_Selector_Roq(),
        title: 'With Use Selector ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: SM_Provider_of_Context_Roq(),
        title: 'Provider of(context) ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: SM_Context_read_watch_Roq(),
        title: 'context.watch() AND context.read()',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: SM_Provider_vs_ChangNotif_Roq(),
        title: 'Provider vs ChangeNotifyProvider ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: SM_MultiProvider_Roq(),
        title: 'MultiProviders',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: SampleProvider_of_Context_Roq(),
        title: 'Sample1 : Sample Provider.of(context) ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: MainAddCart_Roq(),
        title: 'Sample2 : Main Shopping Cart ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: CartSample_MyApp(),
        title: 'Sample3 : More Detailes Shopping Cart ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: MainShoppingCart_Roq(),
        title: 'Sample4 : Advance Main Shopping Cart ',
        description: '',
        sourceFilePath: '',
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Lect13 Resposive and Adaptive',
    icon: Icon(Icons.widgets),
    routes: <MyRoute>[
      MyRoute(
        child: MediaQuery_Roq(),
        title: 'MediaQuery ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: LayoutBuilder_Roq(),
        title: 'LayoutBuilder ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: LayoutBilder2_Roq(),
        title: 'LayoutBuilder ',
        description: '',
        sourceFilePath: '',
      ),
      MyRoute(
        child: ExpensesApp_Roq(),
        title: 'Personal Expenses UI Sample ',
        description: 'Personal Expenses Flutter App will apply Responsive and Adaptive',
        sourceFilePath: '',
      ),
      MyRoute(
        child: ExpenseTheme_Roq(),
        title: 'Personal Expenses UI Sample ',
        description: 'Personal Expenses Flutter App will apply Theme',
        sourceFilePath: '',
      ),
    ],
  ),
];

const List<MyRouteGroup> kMyAppRoutesProject = <MyRouteGroup>[];
const kMyAppRoutesExercises = <MyRouteGroup>[];
const kMyAppRoutesQuiz = <MyRouteGroup>[];

final List<MyRouteGroup> kAllRouteGroups = <MyRouteGroup>[
  ...kMy_LabAppRoutsUI,
  ...kMy_LectAppRoutsUI,
  ...kMyAppRoutesProject,
  ...kMyAppRoutesExercises,
  ...kMyAppRoutesQuiz,
];

final List<MyRoute> kAllRoutes = <MyRoute>[
  ...kAllRouteGroups.expand((group) => group.routes),
];

final Map<String, MyRoute> kRouteNameToRoute = <String, MyRoute>{
  for (final route in kAllRoutes) route.routeName: route
};

final kRouteNameToRouteGroup = <String, MyRouteGroup>{
  for (final group in kAllRouteGroups)
    for (final route in group.routes) route.routeName: group
};

final Map<String, WidgetBuilder> kAppRoutingTable = <String, WidgetBuilder>{
  Navigator.defaultRouteName: (context) => kHomeRoute,
  kAboutRoute.routeName: (context) => kAboutRoute,
  for (MyRoute route in kAllRoutes) route.routeName: (context) => route,
};
