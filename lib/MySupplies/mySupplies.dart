import 'package:donkomi/MySupplies/newSupplierFloating.dart';
import 'package:flutter/material.dart';
import 'package:donkomi/Widget/floating.dart';
import 'package:responsive_grid/responsive_grid.dart';

class MySupplies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
        child: Stack(children: [
        NewSupplierFloatingButton(),
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
                  padding: const EdgeInsets.all(2.0),
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
                        0: FractionColumnWidth(0.25),
                        
                      },
                      children: [
                        TableRow(decoration: BoxDecoration(color: Colors.purple),
                          children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Company Name',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                          // Text('Course', textAlign: TextAlign.center),
                          Text(
                            'Title',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          Text('Total Due',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                          Text('First Name',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                          Text('Last Name',
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
                          Text('700', textAlign: TextAlign.center),
                          Text('700', textAlign: TextAlign.center),
                          new Row(children: [
                            Expanded(child: 
                            IconButton(
                                icon: const Icon(Icons.remove_red_eye_rounded, color: Colors.red,),
                                tooltip: 'View',
                                onPressed: () {
                                },
                              )),
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
                          Text('480', textAlign: TextAlign.center),
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
