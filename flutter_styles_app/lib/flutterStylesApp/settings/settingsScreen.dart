
import 'package:flutter/material.dart';
import 'package:flutter_styles_app/flutterStylesApp/auth/login.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/alterarUsuarioSenha/confirmeSenhaDialog.dart';
import 'package:flutter_styles_app/flutterStylesApp/settings/perfil/perfilScreen.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 600) {
          return Container(
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Card(
                  color: Theme.of(context).primaryColorDark,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    children: ListTile.divideTiles(
                      context: context,
                      color: Colors.white54,
                      tiles: [
                        ListTile(
                          title: Text(
                            "Perfil",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: Icon(
                              Icons.person,
                              color: Theme.of(context).primaryColorDark,
                              size: 20,
                            ),
                          ),
                          shape: BeveledRectangleBorder(
                              borderRadius:
                              BorderRadius.vertical(top: Radius.circular(15.0))),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PerfilScreen(),));
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.lock_sharp,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          title: Text(
                            "Alterar usuário e senha",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(15.0))),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => ConfirmeSenhaDialog(),
                            );
                          },
                        )
                      ],
                    ).toList(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Preferências",
                  style: TextStyle(
                      color: Theme.of(context).primaryColorDark,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 5.0,),
                Card(
                  child: Column(
                    children: ListTile.divideTiles(context: context, tiles: [
                      SwitchListTile(
                        title: Text(
                          "Notificações",
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        value: true,
                        onChanged: (value) {},
                      ),
                      SwitchListTile(
                        title: Text(
                          "Localização",
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        value: false,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (value) {},
                      ),
                      SwitchListTile(
                        title: Text(
                          "Tema escuro",
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        inactiveTrackColor: Theme.of(context).primaryColorLight,
                        inactiveThumbColor: Color( 0xfffeb09a ),
                        value: false,
                        onChanged: (value) {},
                      ),
                    ]).toList(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Card(
                  elevation: 5.0,
                  color: Theme.of(context).accentColor,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Column(
                    children: ListTile.divideTiles(
                      context: context,
                      color: Theme.of(context).primaryColorLight,
                      tiles: [
                        ListTile(
                          title: Text(
                            "Sobre o app",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          leading: Icon(
                            Icons.perm_device_info_sharp,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(30.0))
                          ),
                          onTap: () {
                            showAboutDialog(
                              context: context,
                              applicationIcon: FlutterLogo(size: 30.0,),
                              applicationName: "Flutter Styles App",
                              applicationVersion: "1.0.0",
                            );
                          },
                        ),
                        ListTile(
                          title: Text(
                            "Logout",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          leading: Icon(
                            Icons.logout,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0))
                          ),
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => Login(),));
                          },
                        ),

                      ],
                    ).toList(),
                  ),
                )
              ],
            ),
          );
        } else {
          return Center(
            child: Container(
              width: 540,
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    color: Theme.of(context).primaryColorDark,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      children: ListTile.divideTiles(
                        context: context,
                        color: Colors.white54,
                        tiles: [
                          ListTile(
                            title: Text(
                              "Perfil",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: Icon(
                                Icons.person,
                                color: Theme.of(context).primaryColorDark,
                                size: 20,
                              ),
                            ),
                            shape: BeveledRectangleBorder(
                                borderRadius:
                                BorderRadius.vertical(top: Radius.circular(15.0))),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PerfilScreen(),));
                            },
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.lock_sharp,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            title: Text(
                              "Alterar usuário e senha",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(15.0))),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => ConfirmeSenhaDialog(),
                              );
                            },
                          )
                        ],
                      ).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Preferências",
                    style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Card(
                    child: Column(
                      children: ListTile.divideTiles(context: context, tiles: [
                        SwitchListTile(
                          title: Text(
                            "Notificações",
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          value: true,
                          onChanged: (value) {},
                        ),
                        SwitchListTile(
                          title: Text(
                            "Localização",
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          value: false,
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (value) {},
                        ),
                        SwitchListTile(
                          title: Text(
                            "Tema escuro",
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          inactiveTrackColor: Theme.of(context).primaryColorLight,
                          inactiveThumbColor: Color( 0xfffeb09a ),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ]).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    elevation: 5.0,
                    color: Theme.of(context).accentColor,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    child: Column(
                      children: ListTile.divideTiles(
                        context: context,
                        color: Theme.of(context).primaryColorLight,
                        tiles: [
                          ListTile(
                            title: Text(
                              "Sobre o app",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            leading: Icon(
                              Icons.perm_device_info_sharp,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(30.0))
                            ),
                            onTap: () {
                              showAboutDialog(
                                context: context,
                                applicationIcon: FlutterLogo(size: 30.0,),
                                applicationName: "Flutter Styles App",
                                applicationVersion: "1.0.0",
                              );
                            },
                          ),
                          ListTile(
                            title: Text(
                              "Logout",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            leading: Icon(
                              Icons.logout,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0))
                            ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => Login(),));
                            },
                          ),

                        ],
                      ).toList(),
                    ),
                  )
                ],
              ),
            ),
          );
        }
      }
    );
  }
}
