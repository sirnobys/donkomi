import 'package:flutter/material.dart';

/// This is the stateless widget that the main application instantiates.
class NewSupplierFloatingButton extends StatelessWidget {
  const NewSupplierFloatingButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
     floatingActionButton: FloatingActionButton(
      onPressed: () {
         showDialog(
              context: context,
              builder: (BuildContext context) => _buildPopupDialog(context),
            );
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.purple,
    ),
    );
  }
}



Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  

Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Add New Supplier'),
    content: SingleChildScrollView(child: new Column(
        children: [
        _entryField('Supplier Code'),
        _entryField('Company Name'),
        _entryField('Title'),
        _entryField('First Name'),
        _entryField('Last Name'),
        _entryField('Street'),
        _entryField('City'),
        _entryField('Phone'),
        _entryField('Alt Phone'),
        _entryField('Alt Contact'),
        _entryField('Phone2'),
        _entryField('Account No'),
        _entryField('Account No'),
        _entryField('Terms'),
        _entryField('Email'),
        _entryField('Supplier Website'),
        new Row(children: [ new TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        
        child: Text('Save'),
      ), new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        
        child: Text('Cancel'),
      ),],)
        ]
        ))
    // actions: <Widget>[
    //   new FlatButton(
    //     onPressed: () {
    //       Navigator.of(context).pop();
    //     },
        
    //     child: Text('Save'),
    //   ),
    //   new FlatButton(
    //     onPressed: () {
    //       Navigator.of(context).pop();
    //     },
    //     child: Text('Close'),
    //   ),
    // ],
  );
}