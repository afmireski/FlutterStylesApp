import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_styles_app/components/inputFields/beveleadRectangleDropdown.dart';
import 'package:flutter_styles_app/components/inputFields/beveledRectangleTextField.dart';
import 'package:flutter_styles_app/flutterStylesApp/form/controllers/formController.dart';

class SecondFormScreen extends StatelessWidget {

  final FormController formController;

  SecondFormScreen({Key key, @required this.formController}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text('Form'),
        centerTitle: true,
        automaticallyImplyLeading: false
      ),
      body: Container(
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
                        label: "RG",
                        fieldStyle: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 16,
                        ),
                        onChanged: formController.secondForm.changeRg,
                        errorText: formController.validaRg(),
                        errorStyle: TextStyle(color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
                        borderColor: Theme.of(context).primaryColorDark,
                        shadows: [
                          BoxShadow(
                              color: Theme.of(context).primaryColorDark,
                              offset: Offset(4.0, 2.0),
                              blurRadius: 2.0)
                        ],
                        keyboardType: TextInputType.number,
                        inputAction: TextInputAction.next,
                      );
                    }
                  ),
                  SizedBox(height: 10.0,),
                  Observer(
                    builder: (context) {
                      return BeveledRectangleTextField(
                        label: "Orgão emissor do RG",
                        fieldStyle: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 16,
                        ),
                        onChanged: formController.secondForm.changeOrgaoEmissorRg,
                        errorText: formController.validaOrgaoEmissorRg(),
                        errorStyle: TextStyle(color: Color(0xFF5A0FFC), fontWeight: FontWeight.w500),
                        borderColor: Theme.of(context).primaryColorDark,
                        shadows: [
                          BoxShadow(
                              color: Theme.of(context).primaryColorDark,
                              offset: Offset(4.0, 2.0),
                              blurRadius: 2.0)
                        ],
                        keyboardType: TextInputType.text,
                        inputAction: TextInputAction.next,
                      );
                    }
                  ),
                  SizedBox(height: 10.0,),
                  Observer(
                    builder: (context) {
                      return BeveleadRectangleDropdown(
                        label: 'Sexo',
                        items: {
                          0: 'Outro',
                          1: "Masculino",
                          2: 'Feminino',
                          3: 'Erro'
                        },
                        value: null,
                        errorText: formController.validaSexo(),
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
                        icon: Icon(Icons.arrow_drop_down, color: Theme.of(context).accentColor),
                        onChanged: formController.secondForm.changeSexo,
                      );
                    }
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
