import 'package:flutter/material.dart';
import 'package:new_buddy/page/bd_vehicles.dart';
import 'package:new_buddy/page/bd_dashboard.dart';
import 'package:new_buddy/page/bd_info_garage.dart';
import 'package:new_buddy/page/bd_home_payments.dart';
import 'package:new_buddy/page/bd_reviews_garage.dart';

class GlobalKeys {
  
  static GlobalKey<DashBoardState>      DashGlobalKey   = GlobalKey();
  static GlobalKey<VehiclesState>       VehiclesHome    = GlobalKey();
  static GlobalKey<HomePaymentsState>   HomePayments    = GlobalKey();
  static GlobalKey<InfoGarageState>     InfoGarage      = GlobalKey();
  static GlobalKey<ReviewsGarageState>  ReviewsGarage   = GlobalKey();
}