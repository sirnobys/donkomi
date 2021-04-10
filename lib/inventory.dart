import 'package:flutter/material.dart';
import 'package:donkomi/Widget/drawer.dart';
import 'package:donkomi/Widget/floating.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Inventory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
        drawer: DrawerClass(),
        appBar: AppBar(
          centerTitle: true,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          backgroundColor: Color(0xffe46b10),
          title: Text(
            'Inventory',
            textAlign: TextAlign.right,
          ),
          actions: <Widget>[
            Container(
              child: IconButton(
                  icon: Icon(Icons.share),
                  color: Colors.white,
                  onPressed: () {}),
            ),
            Container(
              child: IconButton(
                  icon: Icon(Icons.file_download),
                  color: Colors.white,
                  onPressed: () {}),
            ),
            
          ],
        ),
        body: Stack(children: [
        FloatingButton(),
        SingleChildScrollView(
          
          child: Container(child: ResponsiveGridRow(children: [
          //First coulumn to contain image at the top

          ResponsiveGridCol(
            xs: 12,
            child: Card(
                // height: 0,
                ),
          ),

          ResponsiveGridCol(
            lg: 12,
            child: Container(
              // height: 150,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      border: TableBorder(
                          left: BorderSide(style: BorderStyle.none),
                          top: BorderSide(
                              style: BorderStyle.solid,
                              color: Colors.red,
                              width: 5),
                          right: BorderSide(style: BorderStyle.none),
                          bottom: BorderSide(
                              width: 2,
                              style: BorderStyle.solid,
                              color: Colors.red),
                          horizontalInside: BorderSide(
                              width: .2,
                              color: Colors.red,
                              style: BorderStyle.solid),
                              ),
                      columnWidths: {
                        0: FractionColumnWidth(0.3),
                        1: FractionColumnWidth(0.2),
                        2: FractionColumnWidth(0.2),
                        3: FractionColumnWidth(0.3),
                      },
                      children: [
                        TableRow(decoration: BoxDecoration(color: Colors.purple),
                          children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Item Name',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                          // Text('Course', textAlign: TextAlign.center),
                          Text(
                            'Quantity',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          Text('Unit Price',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                          Text('Action',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                        ]),
                        TableRow(
                          children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: ResponsiveGridRow(
                              children: [
                                ResponsiveGridCol(
                                  child: Container(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        'Item 1',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Text('30', textAlign: TextAlign.center),
                          Text('700', textAlign: TextAlign.center),
                          new Row(children: [
                            IconButton(
                                icon: const Icon(Icons.delete, color: Colors.red,),
                                tooltip: 'Delete',
                                onPressed: () {
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.edit, color: Colors.purple,),
                                tooltip: 'Edit',
                                onPressed: () {
                                },
                              ),
                          ],)
                        ]),
                        TableRow(
                          children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: ResponsiveGridRow(
                              children: [
                                ResponsiveGridCol(
                                  child: Container(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        'Item 2',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Text('23', textAlign: TextAlign.center),
                          Text('480', textAlign: TextAlign.center),
                          Text('Buy',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ]),
                      ],
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 1,
                margin: EdgeInsets.all(5),
              ),
            ),
            
          ),
 
        ]
        
        ),
          

        
        ),
        ),
        ],)
        );
        
  }
}
