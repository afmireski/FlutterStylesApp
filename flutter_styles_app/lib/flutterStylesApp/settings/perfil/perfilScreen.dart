import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styles_app/components/widgets/infoCard.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/perfil/editar/editarPerfilScreen.dart';

class PerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= 600) {
              return Container(
                child: Stack(
                  children: [
                    ListView(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      children: [
                        SizedBox(height: 250.0,),
                        InfoCard(
                          height: 325.0,
                          icon: Icons.person,
                          iconColor: Colors.white,
                          backgroundIconColor: Theme.of(context).primaryColor,
                          title: "Informações pessoais",
                          textStyle: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                          cardBorder: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          cardShadows: [
                            BoxShadow(
                              color: Colors.black87,
                              blurRadius: 2.0,
                              offset: Offset(-2.0, 5.0),
                            ),
                          ],
                          iconBoxBorder: CircleBorder(),
                          iconBoxSize: 60.0,
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  "000.000.000-00",
                                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                ),
                                subtitle: Text(
                                  "CPF",
                                  style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                ),
                                leading: Icon(Icons.account_box_rounded, size: 30.0, color: Color( 0xfffd8868 ),),
                              ),
                              ListTile(
                                title: Text(
                                  "Masculino/Feminino",
                                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                ),
                                subtitle: Text(
                                  "Sexo",
                                  style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                ),
                                leading: Icon(Icons.wc, size: 30.0, color: Color( 0xfffd8868 ),),
                              ),
                              ListTile(
                                title: Text(
                                  "dd/MM/yyyy",
                                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                ),
                                subtitle: Text(
                                  "Data de Nascimento",
                                  style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                ),
                                leading: Icon(Icons.cake_rounded, size: 30.0, color: Color( 0xfffd8868 ),),
                              ),

                            ],
                          ),
                        ),
                        InfoCard(
                          height: 325.0,
                          icon: Icons.my_location,
                          iconColor: Colors.white,
                          backgroundIconColor: Theme.of(context).primaryColor,
                          title: "Informações de local",
                          textStyle: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                          cardBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          cardShadows: [
                            BoxShadow(
                              color: Colors.black87,
                              blurRadius: 2.0,
                              offset: Offset(4.0, 5.0),
                            ),
                          ],
                          iconBoxBorder: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          iconBoxSize: 60.0,
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  "Rua/Av, Bairro - Nº Residência",
                                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                ),
                                subtitle: Text(
                                  "Endereço",
                                  style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                ),
                                leading: Icon(Icons.location_history, size: 30.0, color: Color( 0xfffd8868 ),),
                              ),
                              ListTile(
                                title: Text(
                                  "Casa/Apartamento",
                                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                ),
                                subtitle: Text(
                                  "Complemento",
                                  style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                ),
                                leading: Icon(Icons.house_rounded, size: 30.0, color: Color( 0xfffd8868 ),),
                              ),
                              ListTile(
                                title: Text(
                                  "00000-000",
                                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                ),
                                subtitle: Text(
                                  "CEP",
                                  style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                ),
                                leading: Icon(Icons.location_on, size: 30.0, color: Color( 0xfffd8868 ),),
                              ),

                            ],
                          ),
                        ),
                        InfoCard(
                          height: 400.0,
                          icon: Icons.business_center_rounded,
                          iconColor: Colors.white,
                          backgroundIconColor: Theme.of(context).primaryColor,
                          title: "Informações profissionais",
                          textStyle: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                          cardBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          iconBoxBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          iconBoxSize: 60.0,
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  "Nome da Empresa",
                                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                ),
                                subtitle: Text(
                                  "Empresa",
                                  style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                ),
                                leading: Icon(Icons.business, size: 30.0, color: Color( 0xfffd8868 ),),
                              ),
                              ListTile(
                                title: Text(
                                  "Ocupação profissional",
                                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                ),
                                subtitle: Text(
                                  "Cargo",
                                  style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                ),
                                leading: Icon(Icons.work_rounded, size: 30.0, color: Color( 0xfffd8868 ),),
                              ),
                              ListTile(
                                title: Text(
                                  "2 anos",
                                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                ),
                                subtitle: Text(
                                  "Tempo de serviço",
                                  style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                ),
                                leading: Icon(Icons.access_time_sharp, size: 30.0, color: Color( 0xfffd8868 ),),
                              ),
                              ListTile(
                                title: Text(
                                  "R\$ 0.000,00",
                                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                ),
                                subtitle: Text(
                                  "Salário",
                                  style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                ),
                                leading: Icon(Icons.monetization_on, size: 30.0, color: Color( 0xfffd8868 ),),
                              ),

                            ],
                          ),
                        ),
                        InfoCard(
                          height: 250.0,
                          icon: Icons.data_usage,
                          iconColor: Colors.white,
                          backgroundIconColor: Theme.of(context).primaryColor,
                          title: "Informações de conta",
                          textStyle: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                          iconBoxBorder: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          iconShadows: [
                            BoxShadow(
                              color: Color( 0xaafd8868 ),
                              blurRadius: 2.0,
                              offset: Offset(-4.0, 4.0),
                            ),
                          ],
                          iconBoxSize: 60.0,
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  "user_email@email.com",
                                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                ),
                                subtitle: Text(
                                  "Email",
                                  style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                ),
                                leading: Icon(Icons.mail_sharp, size: 30.0, color: Color( 0xfffd8868 ),),
                              ),
                              ListTile(
                                title: Text(
                                  "*********",
                                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                ),
                                subtitle: Text(
                                  "Senha",
                                  style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                ),
                                leading: Icon(Icons.lock_sharp, size: 30.0, color: Color( 0xfffd8868 ),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 250,
                      child: Stack(
                        children: [
                          Container(
                            height: 220,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColorDark
                            ),
                            child: Center(child: FlutterLogo(size: 150,),),
                          ),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              decoration: ShapeDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0)
                                  ),
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.black87,
                                        blurRadius: 5.0,
                                        offset: Offset(0.0, 4.0)
                                    )
                                  ]
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 20.0),
                              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                              height: 75.0,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        "Nome Completo",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20.0
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.zero,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: IconButton(
                                              tooltip: "Alterar foto",
                                              icon: Icon(Icons.camera_alt_outlined, color: Colors.white,),
                                              onPressed: () {

                                              },
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              "Informação Adicional",
                                              style: TextStyle(
                                                  color: Colors.white70,
                                                  fontStyle: FontStyle.italic
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: IconButton(
                                              tooltip: "Editar perfil",
                                              icon: Icon(Icons.edit_sharp, color: Colors.white,),
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(builder: (context) => EditarPerfilScreen()
                                                      ,)
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              );
            } else {
              return Center(
                child: Container(
                  width: 540,
                  color: Color( 0xfffd8868 ),
                  child: Stack(
                    children: [
                      ListView(
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        children: [
                          SizedBox(height: 250.0,),
                          InfoCard(
                            height: 325.0,
                            icon: Icons.person,
                            iconColor: Colors.white,
                            backgroundIconColor: Theme.of(context).primaryColor,
                            title: "Informações pessoais",
                            textStyle: TextStyle(
                                color: Theme.of(context).primaryColorDark,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                fontStyle: FontStyle.italic),
                            cardBorder: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                            cardShadows: [
                              BoxShadow(
                                color: Colors.black87,
                                blurRadius: 2.0,
                                offset: Offset(-2.0, 5.0),
                              ),
                            ],
                            iconBoxBorder: CircleBorder(),
                            iconBoxSize: 60.0,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    "000.000.000-00",
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                  ),
                                  subtitle: Text(
                                    "CPF",
                                    style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                  ),
                                  leading: Icon(Icons.account_box_rounded, size: 30.0, color: Color( 0xfffd8868 ),),
                                ),
                                ListTile(
                                  title: Text(
                                    "Masculino/Feminino",
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                  ),
                                  subtitle: Text(
                                    "Sexo",
                                    style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                  ),
                                  leading: Icon(Icons.wc, size: 30.0, color: Color( 0xfffd8868 ),),
                                ),
                                ListTile(
                                  title: Text(
                                    "dd/MM/yyyy",
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                  ),
                                  subtitle: Text(
                                    "Data de Nascimento",
                                    style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                  ),
                                  leading: Icon(Icons.cake_rounded, size: 30.0, color: Color( 0xfffd8868 ),),
                                ),

                              ],
                            ),
                          ),
                          InfoCard(
                            height: 325.0,
                            icon: Icons.my_location,
                            iconColor: Colors.white,
                            backgroundIconColor: Theme.of(context).primaryColor,
                            title: "Informações de local",
                            textStyle: TextStyle(
                                color: Theme.of(context).primaryColorDark,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                fontStyle: FontStyle.italic),
                            cardBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                            cardShadows: [
                              BoxShadow(
                                color: Colors.black87,
                                blurRadius: 2.0,
                                offset: Offset(4.0, 5.0),
                              ),
                            ],
                            iconBoxBorder: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                            iconBoxSize: 60.0,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    "Rua/Av, Bairro - Nº Residência",
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                  ),
                                  subtitle: Text(
                                    "Endereço",
                                    style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                  ),
                                  leading: Icon(Icons.location_history, size: 30.0, color: Color( 0xfffd8868 ),),
                                ),
                                ListTile(
                                  title: Text(
                                    "Casa/Apartamento",
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                  ),
                                  subtitle: Text(
                                    "Complemento",
                                    style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                  ),
                                  leading: Icon(Icons.house_rounded, size: 30.0, color: Color( 0xfffd8868 ),),
                                ),
                                ListTile(
                                  title: Text(
                                    "00000-000",
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                  ),
                                  subtitle: Text(
                                    "CEP",
                                    style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                  ),
                                  leading: Icon(Icons.location_on, size: 30.0, color: Color( 0xfffd8868 ),),
                                ),

                              ],
                            ),
                          ),
                          InfoCard(
                            height: 400.0,
                            icon: Icons.business_center_rounded,
                            iconColor: Colors.white,
                            backgroundIconColor: Theme.of(context).primaryColor,
                            title: "Informações profissionais",
                            textStyle: TextStyle(
                                color: Theme.of(context).primaryColorDark,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                fontStyle: FontStyle.italic),
                            cardBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                            iconBoxBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                            iconBoxSize: 60.0,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    "Nome da Empresa",
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                  ),
                                  subtitle: Text(
                                    "Empresa",
                                    style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                  ),
                                  leading: Icon(Icons.business, size: 30.0, color: Color( 0xfffd8868 ),),
                                ),
                                ListTile(
                                  title: Text(
                                    "Ocupação profissional",
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                  ),
                                  subtitle: Text(
                                    "Cargo",
                                    style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                  ),
                                  leading: Icon(Icons.work_rounded, size: 30.0, color: Color( 0xfffd8868 ),),
                                ),
                                ListTile(
                                  title: Text(
                                    "2 anos",
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                  ),
                                  subtitle: Text(
                                    "Tempo de serviço",
                                    style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                  ),
                                  leading: Icon(Icons.access_time_sharp, size: 30.0, color: Color( 0xfffd8868 ),),
                                ),
                                ListTile(
                                  title: Text(
                                    "R\$ 0.000,00",
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                  ),
                                  subtitle: Text(
                                    "Salário",
                                    style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                  ),
                                  leading: Icon(Icons.monetization_on, size: 30.0, color: Color( 0xfffd8868 ),),
                                ),

                              ],
                            ),
                          ),
                          InfoCard(
                            height: 250.0,
                            icon: Icons.data_usage,
                            iconColor: Colors.white,
                            backgroundIconColor: Theme.of(context).primaryColor,
                            title: "Informações de conta",
                            textStyle: TextStyle(
                                color: Theme.of(context).primaryColorDark,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                fontStyle: FontStyle.italic),
                            iconBoxBorder: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                            iconShadows: [
                              BoxShadow(
                                color: Color( 0xaafd8868 ),
                                blurRadius: 2.0,
                                offset: Offset(-4.0, 4.0),
                              ),
                            ],
                            iconBoxSize: 60.0,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    "user_email@email.com",
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                  ),
                                  subtitle: Text(
                                    "Email",
                                    style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                  ),
                                  leading: Icon(Icons.mail_sharp, size: 30.0, color: Color( 0xfffd8868 ),),
                                ),
                                ListTile(
                                  title: Text(
                                    "*********",
                                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Color( 0xffca2e02 )),
                                  ),
                                  subtitle: Text(
                                    "Senha",
                                    style: TextStyle(fontStyle: FontStyle.italic, color: Color( 0xfffd8868 )),
                                  ),
                                  leading: Icon(Icons.lock_sharp, size: 30.0, color: Color( 0xfffd8868 ),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 250,
                        child: Stack(
                          children: [
                            Container(
                              height: 220,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColorDark
                              ),
                              child: Center(child: FlutterLogo(size: 150,),),
                            ),
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              child: Container(
                                decoration: ShapeDecoration(
                                    color: Theme.of(context).primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50.0)
                                    ),
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.black87,
                                          blurRadius: 5.0,
                                          offset: Offset(0.0, 4.0)
                                      )
                                    ]
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 20.0),
                                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                                height: 75.0,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "Nome Completo",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.0
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.zero,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: IconButton(
                                                tooltip: "Alterar foto",
                                                icon: Icon(Icons.camera_alt_outlined, color: Colors.white,),
                                                onPressed: () {

                                                },
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                "Informação Adicional",
                                                style: TextStyle(
                                                    color: Colors.white70,
                                                    fontStyle: FontStyle.italic
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: IconButton(
                                                tooltip: "Editar perfil",
                                                icon: Icon(Icons.edit_sharp, color: Colors.white,),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(builder: (context) => EditarPerfilScreen()
                                                        ,)
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              );
            }
          },
        )
      ),
    );
  }
}
