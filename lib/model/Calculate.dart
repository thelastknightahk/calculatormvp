import 'package:calculator/model/Data.dart';
import 'package:flutter/cupertino.dart';

class Calculate{
  final TextEditingController name_input=new TextEditingController();
  final TextEditingController age_input=new TextEditingController();
  final TextEditingController job_input=new TextEditingController();
  List<Data> data=List();
  String name="";
  String job="";
  int birth_yr = 0;
}