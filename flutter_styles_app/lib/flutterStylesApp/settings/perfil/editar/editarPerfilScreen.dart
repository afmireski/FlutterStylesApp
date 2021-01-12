import 'package:flutter/material.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/perfil/editar/tabs/localTab.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/perfil/editar/tabs/pessoalTab.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/perfil/editar/tabs/profissionalTab.dart';

class EditarPerfilScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Editar perfil'),
          automaticallyImplyLeading: false,
          bottom: TabBar(
            physics: BouncingScrollPhysics(),
            isScrollable: false,
            unselectedLabelColor: Colors.white54,

            tabs: [
              Tab(icon: Icon(Icons.person, size: 30.0,), text: 'Pessoal',),
              Tab(icon: Icon(Icons.my_location, size: 30.0), text: 'Local'),
              Tab(icon: Icon(Icons.business_center_rounded, size: 30.0,), text: 'Profissional')
            ],
          ),
        ),
        body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              PessoalTab(),
              LocalTab(),
              ProfissionalTab(),
            ]
        ),
      ),
    );
  }
}
