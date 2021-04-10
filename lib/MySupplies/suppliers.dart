import 'package:donkomi/MySupplies/mySupplies.dart';
import 'package:donkomi/MySupplies/newOrder.dart';
import 'package:donkomi/MySupplies/previousPurchaseProduct.dart';
import 'package:flutter/material.dart';

class Suppliers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
              Tab(icon: Icon(Icons.directions_car), text: 'My Supplies',),
              Tab(icon: Icon(Icons.directions_bike), text: 'New Order',),
              Tab(icon: Icon(Icons.directions_bike), text: 'Order History',),
            ],),
          centerTitle: true,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          backgroundColor: Color(0xffe46b10),
          title: Text(
            'Orders From Customers',
            textAlign: TextAlign.right,
          ),
          actions: <Widget>[     
          ],
        ),
          body: TabBarView(
            children: [
              MySupplies(),
              NewOrder(),
              PreviousPurchaseProducts(),
            ],
          ),
        ),
      ),
    );
  }
}