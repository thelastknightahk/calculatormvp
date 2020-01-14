import 'package:calculator/model/Calculate.dart';
import 'package:calculator/model/Data.dart';
import 'package:calculator/view/appview.dart';

class AppPresent{
  set view(AppView appView){}
  void buttonClick(){}
}
class MyPresenter implements AppPresent{
    Calculate _calculate;AppView _appView;
  @override
  void buttonClick() {
    // TODO: implement buttonClick
    String name=_calculate.name_input.text.toString();
    String job=_calculate.job_input.text.toString();
    int age= int.parse(_calculate.age_input.text.toString());
    int birth=2019-age;
    this._calculate.name=name;
    this._calculate.job=job;
    this._calculate.birth_yr=birth;
    _calculate.name_input.text ="";
    _calculate.age_input.text ="";
    _calculate.job_input.text ="";
    this._calculate.data.add(new Data(name,age,job));
    print("${this._calculate.data.length}");
    this._appView.input_data(_calculate);
  }

  @override
  void set view(AppView appView) {
    // TODO: implement view
    this._appView=appView;
    this._appView.input_data(_calculate);
  }
  MyPresenter(){
    this._calculate=Calculate();
  }

}