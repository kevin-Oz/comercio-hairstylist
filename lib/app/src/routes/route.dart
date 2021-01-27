import 'package:flutter/material.dart';
import 'package:hairstylist/app/src/views/about_us_page.dart';
import 'package:hairstylist/app/src/views/barber_page.dart';
import 'package:hairstylist/app/src/views/contact_us_page.dart';
import 'package:hairstylist/app/src/views/history_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    //main views
    '/history': (BuildContext context) => HistoryPage(),
    '/barber': (BuildContext context) => BarberPage(),
    '/contact': (BuildContext context) => ContactUsPage(),
    '/about': (BuildContext context) => AboutUsPage(),

    //'/ventas/rutas': (BuildContext context) => RutasView(),
  };
}
