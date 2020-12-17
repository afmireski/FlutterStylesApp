import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_styles_app/components/textFields/beveleadRectangleDatePicker.dart';
import 'package:flutter_styles_app/components/textFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/flutterStylesApp/form/controllers/formController.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FirstFormScreen extends StatefulWidget {
  @override
  _FirstFormScreenState createState() => _FirstFormScreenState();
}

class _FirstFormScreenState extends State<FirstFormScreen> {
  final FormController formController = FormController();

  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');

  TextEditingController dateController = TextEditingController();

  // ReactionDisposer dataReaction;

  @override
  void initState() {
    super.initState();

    // dataReaction = reaction<DateTime>((_) => formController.firstForm.dataNascimento,
    //         (date) {
    //           print(date);
    //           if (date != null) {
    //             dateController.text = formatDate(date, [dd, '/', mm, '/', yyyy]);
    //             print(dateController.text);
    //           }
    // });
  }

  @override
  void dispose() {
    super.dispose();
    // dataReaction.reaction.dispose();
  }

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
                Observer(
                  builder: (context) {
                    return BeveledRectangleTextField(
                      label: 'Nome',
                      onChanged: formController.firstForm.changeNome,
                      errorText: formController.validaNome(),
                      errorStyle: TextStyle(color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
                      fieldStyle: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 16,
                      ),
                      borderColor: Theme.of(context).primaryColorDark,
                      shadows: [
                        BoxShadow(
                            color: Theme.of(context).primaryColorDark,
                            offset: Offset(4.0, 2.0),
                            blurRadius: 2.0)
                      ],
                    );
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                Observer(
                  builder: (context) {
                    return BeveledRectangleTextField(
                      label: 'Email',
                      onChanged: formController.firstForm.changeEmail,
                      errorText: formController.validaEmail(),
                      errorStyle: TextStyle(color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
                      fieldStyle: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 16,
                      ),
                      borderColor: Theme.of(context).primaryColorDark,
                      shadows: [
                        BoxShadow(
                            color: Theme.of(context).primaryColorDark,
                            offset: Offset(4.0, 2.0),
                            blurRadius: 2.0)
                      ],
                      keyboardType: TextInputType.emailAddress,
                    );
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                Observer(
                  builder: (context) {
                    return BeveledRectangleTextField(
                      label: 'CPF',
                      onChanged: formController.firstForm.changeCPF,
                      errorText: formController.validaCPF(),
                      errorStyle: TextStyle(color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
                      fieldStyle: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 16,
                      ),
                      borderColor: Theme.of(context).primaryColorDark,
                      shadows: [
                        BoxShadow(
                            color: Theme.of(context).primaryColorDark,
                            offset: Offset(4.0, 2.0),
                            blurRadius: 2.0),
                      ],
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: false),
                      masks: [cpfMask],
                    );
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                Observer(
                  builder: (context) => BeveledRectangleDatePicker(
                    controller: dateController,
                    errotText: formController.validaDataNascimento(),
                    errorStyle: TextStyle(color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
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
                          blurRadius: 2.0)
                    ],
                    onShowPicker: () async {
                      final DateTime datepicker = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                      );
                      if (datepicker != null) {
                        formController.firstForm.changeDataNascimento(datepicker);
                        dateController.text = formatDate(datepicker, [dd, '/', mm, '/', yyyy]);
                      }
                      print('SelectedDate -> ${datepicker.toString()}');
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Observer(
                    builder: (context) {
                      return RaisedButton.icon(
                        onPressed:
                            formController.firstFormIsValid ? () {} : null,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(
                                color: Theme.of(context).primaryColorDark,
                                style: BorderStyle.solid,
                                width: 1.5)),
                        icon: Icon(
                          Icons.navigate_next_sharp,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        label: Text(
                          "Próximo",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18.0),
                        ),
                      );
                    },
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
