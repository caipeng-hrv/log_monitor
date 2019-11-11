library log_monitor;

import 'package:dio/dio.dart';


/// A Calculator.
class LogMonitor {
  String url;
  LogMonitor(this.url);

  info(String type,String msg)async{
    await Dio().post(
      this.url + '/info',
      data:{'type':type,'msg':msg}
    );
  }
}
