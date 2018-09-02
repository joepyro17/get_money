//Author Joe
import 'package:flutter/material.dart';

class GetMoney extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return GetMoneyState();
      }   
}
class GetMoneyState extends State <GetMoney> {
  int _moneyCounter = 0;
  void _getMoney() {
    //Important - setState is called each time we need to update the UI
    setState(() {
              _moneyCounter = _moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ລໍ້າລວຍ'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
           children: <Widget>[
             Center(
               child: Text("ບັນຊີລໍ້າລວຍ!",
                 style: TextStyle(
                   color: Colors.blueGrey,
                   fontWeight: FontWeight.w400,
                   fontSize: 29.9
                 ),
               )
             ),
             Expanded(
               child:Center(
                 child: Text("\$$_moneyCounter",
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.w800,
                    fontSize: 46.9
                  ),
                 )
               )
             ),
             Expanded(
               child: Center(
                 child: FlatButton(
                   color: Colors.lightGreen,
                   onPressed: _getMoney,
                   child: Text("ຮັບເງິນ",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white
                    ))
                 )
               )
             )

           ],
        )
      ),
    );
  }

}