import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class PreviousPurchaseProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
        child: Stack(children: [
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
                        0: FractionColumnWidth(0.20),
                        
                      },
                      children: [
                        TableRow(decoration: BoxDecoration(color: Colors.purple),
                          children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'PON',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                          // Text('Course', textAlign: TextAlign.center),
                          Text(
                            'TD',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          Text('Due Date',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                          Text('Del D',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                          Text('Staff',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                          Text('Supplier',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                          Text('Payment',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                          Expanded(child: 
                          Text('Bal Due',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),
                          Text('Tot Due',
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
                          Text('700', textAlign: TextAlign.center),
                          Text('700', textAlign: TextAlign.center),
                          Expanded(child:
                          Text('700', textAlign: TextAlign.center)),
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
