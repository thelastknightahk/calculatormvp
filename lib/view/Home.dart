import 'package:calculator/model/Calculate.dart';

import 'package:calculator/presenter/Presenter.dart';
import 'package:calculator/view/appview.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final MyPresenter Mypresenter;
  Home(this.Mypresenter,{Key key}):super(key:key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> implements AppView{
  Calculate _calculate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: TextField(
              controller: _calculate.name_input,
               decoration: InputDecoration(
                hintText: "Enter name"
              ),
            ),
          ),
           Container(
            child: TextField(
              controller: _calculate.age_input,
               decoration: InputDecoration(
                hintText: "Enter Age"
              ),
            ),
            
          ),
           Container(
            child: TextField(
              controller: _calculate.job_input,
              decoration: InputDecoration(
                hintText: "Enter JOb"
              ),
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: (){
                
                this.widget.Mypresenter.buttonClick();
              },
              child: Text("CLick"),
            ),
          ),
          Container(
            child:Column(
              children: <Widget>[
                Container(
                  child: Text(_calculate.name),
                ),
                 Container(
                  child: Text(_calculate.job),
                ),
                 Container(
                  child: Text("${_calculate.birth_yr}"),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _calculate.data.length,
              itemBuilder: (context,index){
                return Container(
                  child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text("${_calculate.data[index].name}"),
                          ),
                          Container(
                            child: Text("${_calculate.data[index].age}"),
                          ),
                          Container(
                            child: Text("${_calculate.data[index].job}"),
                          )
                        ],
                      ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  @override
  void input_data(Calculate calculate) {
    // TODO: implement input_data
      setState(() {
        this._calculate=calculate;
      });
  }
  @override
  void initState(){
    super.initState();
    this.widget.Mypresenter.view=this;
  }
}