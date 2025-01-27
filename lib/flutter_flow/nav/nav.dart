import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => RootPageContext.wrap(
        appStateNotifier.loggedIn ? AnalyticsWidget() : LoginWidget(),
        errorRoute: state.uri.toString(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => RootPageContext.wrap(
            appStateNotifier.loggedIn ? AnalyticsWidget() : LoginWidget(),
          ),
        ),
        FFRoute(
          name: 'Chat',
          path: '/chat',
          builder: (context, params) => ChatWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'ComingSoon',
          path: '/comingSoon',
          builder: (context, params) => ComingSoonWidget(),
        ),
        FFRoute(
          name: 'Register',
          path: '/register',
          builder: (context, params) => RegisterWidget(),
        ),
        FFRoute(
          name: 'LoginCover',
          path: '/loginCover',
          builder: (context, params) => LoginCoverWidget(),
        ),
        FFRoute(
          name: 'Register_MultiStep',
          path: '/registerMultiStep',
          builder: (context, params) => RegisterMultiStepWidget(),
        ),
        FFRoute(
          name: 'RegisterCover',
          path: '/registerCover',
          builder: (context, params) => RegisterCoverWidget(),
        ),
        FFRoute(
          name: 'Verify_Email',
          path: '/verifyEmail',
          builder: (context, params) => VerifyEmailWidget(),
        ),
        FFRoute(
          name: 'VerifyEmail_Cover',
          path: '/verifyEmailCover',
          builder: (context, params) => VerifyEmailCoverWidget(),
        ),
        FFRoute(
          name: 'ResetPassword',
          path: '/resetPassword',
          builder: (context, params) => ResetPasswordWidget(),
        ),
        FFRoute(
          name: 'ResetPassword_Cover',
          path: '/resetPasswordCover',
          builder: (context, params) => ResetPasswordCoverWidget(),
        ),
        FFRoute(
          name: 'Analytics',
          path: '/analytics',
          requireAuth: true,
          builder: (context, params) => AnalyticsWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword_Cover',
          path: '/forgotPasswordCover',
          builder: (context, params) => ForgotPasswordCoverWidget(),
        ),
        FFRoute(
          name: 'TowStepVerification',
          path: '/towStepVerification',
          builder: (context, params) => TowStepVerificationWidget(),
        ),
        FFRoute(
          name: 'TwoStepVerrication_Cover',
          path: '/twoStepVerricationCover',
          builder: (context, params) => TwoStepVerricationCoverWidget(),
        ),
        FFRoute(
          name: 'CRM',
          path: '/CRM',
          builder: (context, params) => CrmWidget(),
        ),
        FFRoute(
          name: 'eCommerce',
          path: '/eCommerce',
          builder: (context, params) => ECommerceWidget(),
        ),
        FFRoute(
          name: 'Logistics',
          path: '/Logistics',
          builder: (context, params) => LogisticsWidget(),
        ),
        FFRoute(
          name: 'Academy',
          path: '/Academy',
          builder: (context, params) => AcademyWidget(),
        ),
        FFRoute(
          name: 'Email',
          path: '/Email',
          builder: (context, params) => EmailWidget(),
        ),
        FFRoute(
          name: 'Kanban',
          path: '/kanban',
          builder: (context, params) => KanbanWidget(),
        ),
        FFRoute(
          name: 'Calender',
          path: '/Calender',
          builder: (context, params) => CalenderWidget(),
        ),
        FFRoute(
          name: 'Product_List',
          path: '/Product_List',
          builder: (context, params) => ProductListWidget(),
        ),
        FFRoute(
          name: 'Add_Product',
          path: '/Add_Product',
          builder: (context, params) => AddProductWidget(),
        ),
        FFRoute(
          name: 'Categories',
          path: '/categories',
          builder: (context, params) => CategoriesWidget(),
        ),
        FFRoute(
          name: 'Order_List',
          path: '/Order_List',
          builder: (context, params) => OrderListWidget(),
        ),
        FFRoute(
          name: 'Order_Details',
          path: '/Order_Details',
          builder: (context, params) => OrderDetailsWidget(),
        ),
        FFRoute(
          name: 'All_Customer',
          path: '/All_Customer',
          builder: (context, params) => AllCustomerWidget(),
        ),
        FFRoute(
          name: 'Customer_Details',
          path: '/Customer_Details',
          builder: (context, params) => CustomerDetailsWidget(),
        ),
        FFRoute(
          name: 'Manage_Reviews',
          path: '/Manage_Reviews',
          builder: (context, params) => ManageReviewsWidget(),
        ),
        FFRoute(
          name: 'Referrals',
          path: '/Referrals',
          builder: (context, params) => ReferralsWidget(),
        ),
        FFRoute(
          name: 'Settings',
          path: '/Settings',
          builder: (context, params) => SettingsWidget(),
        ),
        FFRoute(
          name: 'MyCourses',
          path: '/MyCourses',
          builder: (context, params) => MyCoursesWidget(),
        ),
        FFRoute(
          name: 'Course_Details',
          path: '/Course_Details',
          builder: (context, params) => CourseDetailsWidget(),
        ),
        FFRoute(
          name: 'Logistics_Fleet',
          path: '/Logistics_Fleet',
          builder: (context, params) => LogisticsFleetWidget(),
        ),
        FFRoute(
          name: 'lnvoice_List',
          path: '/lnvoice_List',
          builder: (context, params) => LnvoiceListWidget(),
        ),
        FFRoute(
          name: 'Invoice_Preview',
          path: '/Invoice_Preview',
          builder: (context, params) => InvoicePreviewWidget(),
        ),
        FFRoute(
          name: 'Invoice_Edit',
          path: '/Invoice_Edit',
          builder: (context, params) => InvoiceEditWidget(),
        ),
        FFRoute(
          name: 'Invoice_Add',
          path: '/Invoice_Add',
          builder: (context, params) => InvoiceAddWidget(),
        ),
        FFRoute(
          name: 'Users',
          path: '/User_List',
          builder: (context, params) => UsersWidget(),
        ),
        FFRoute(
          name: 'Users_Account',
          path: '/Users_Account',
          builder: (context, params) => UsersAccountWidget(),
        ),
        FFRoute(
          name: 'Roles',
          path: '/Roles',
          builder: (context, params) => RolesWidget(),
        ),
        FFRoute(
          name: 'Permissions',
          path: '/Permissions',
          builder: (context, params) => PermissionsWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/Profile',
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: 'Account',
          path: '/Account',
          builder: (context, params) => AccountWidget(),
        ),
        FFRoute(
          name: 'FAQ',
          path: '/FAQ',
          builder: (context, params) => FaqWidget(),
        ),
        FFRoute(
          name: 'Pricing',
          path: '/Pricing',
          builder: (context, params) => PricingWidget(),
        ),
        FFRoute(
          name: 'ErrorPage',
          path: '/errorPage',
          builder: (context, params) => ErrorPageWidget(),
        ),
        FFRoute(
          name: 'Under_Maintenance',
          path: '/Under_Maintenance',
          builder: (context, params) => UnderMaintenanceWidget(),
        ),
        FFRoute(
          name: 'Not_Authorized',
          path: '/Not_Authorized',
          builder: (context, params) => NotAuthorizedWidget(),
        ),
        FFRoute(
          name: 'Checkout',
          path: '/Checkout',
          builder: (context, params) => CheckoutWidget(),
        ),
        FFRoute(
          name: 'CreateDeal',
          path: '/CreateDeal',
          builder: (context, params) => CreateDealWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
