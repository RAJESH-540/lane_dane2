

import 'package:auto_route/annotations.dart';
import 'package:lane_dena/presentation/screens/enrter_otp.dart';
import 'package:lane_dena/presentation/screens/otp.dart';
import 'package:lane_dena/presentation/screens/profile.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // AutoRoute(page: OtpScreen, initial: true),
     AutoRoute(page: OTPEnter,),
     AutoRoute(page: Profile, initial:  true)
  ],
)
class $AppRouter {}