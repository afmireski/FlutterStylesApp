import 'package:flutter/material.dart';
import 'package:flutter_styles_app/components/textFields/beveleadRectangleDatePicker.dart';
import 'package:flutter_styles_app/components/textFields/beveledRectangleTextField.dart';

class FirstFormScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        children: [
          Container(
            decoration: ShapeDecoration(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              shadows: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                    offset: Offset(5.0, 3.5))
              ],
              color: Colors.grey[200],
            ),
            margin: EdgeInsets.symmetric(vertical: 8.0),
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BeveledRectangleTextField(
                  label: 'Nome',
                  fieldStyle: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 16,
                  ),
                  borderColor: Theme.of(context).primaryColorDark,
                  shadows: [
                    BoxShadow(
                        color: Theme.of(context).primaryColorDark,
                        offset: Offset(4.0, 2.0),
                        blurRadius: 2.0
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                BeveledRectangleTextField(
                  label: 'Email',
                  fieldStyle: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 16,
                  ),
                  borderColor: Theme.of(context).primaryColorDark,
                  shadows: [
                    BoxShadow(
                        color: Theme.of(context).primaryColorDark,
                        offset: Offset(4.0, 2.0),
                        blurRadius: 2.0
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                BeveledRectangleTextField(
                  label: 'CPF',
                  fieldStyle: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 16,
                  ),
                  borderColor: Theme.of(context).primaryColorDark,
                  shadows: [
                    BoxShadow(
                        color: Theme.of(context).primaryColorDark,
                        offset: Offset(4.0, 2.0),
                        blurRadius: 2.0
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                BeveledRectangleDatePicker(
                  label: 'Data de nascimento',
                  fieldStyle: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 16,
                  ),
                  borderColor: Theme.of(context).primaryColorDark,
                  shadows: [
                    BoxShadow(
                        color: Theme.of(context).primaryColorDark,
                        offset: Offset(4.0, 2.0),
                        blurRadius: 2.0
                    )
                  ],
                  onShowPicker: () async {
                    final DateTime datepicker = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2025),
                    );
                    print('SelectedDate -> ${datepicker.toString()}');
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: RaisedButton.icon(
                    onPressed: () {

                    },
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Theme.of(context).primaryColorDark, style: BorderStyle.solid, width: 1.5)
                    ),
                    icon: Icon(Icons.navigate_next_sharp, color: Colors.white, size: 30.0,),
                    label: Text(
                      "Próximo",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 18.0
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
