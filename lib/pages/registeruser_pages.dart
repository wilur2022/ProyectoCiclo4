
import 'package:app_turiscol/pages/login_pages.dart';
import 'package:flutter/material.dart';

class RegistrePages extends StatefulWidget {
  const RegistrePages({Key? key}) : super(key: key);

  @override
  State<RegistrePages> createState() => _RegistrePagesState();
}
enum Genre{masculino, femenino}

class _RegistrePagesState extends State<RegistrePages> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repPassword = TextEditingController();
  final _apellido= TextEditingController();
  final _telefono = TextEditingController();
  final _direccion = TextEditingController();


  Genre? _genre = Genre.masculino;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding:const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        border: Border.all(color: Colors.transparent, width: 3),

                      ),
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                      child: const Image(image: AssetImage('assets/images/viaje.png'), width: 120, height: 120,),
                    ),
                const SizedBox(
                  height: 9,
                ),
                  TextFormField(
                    controller: _name,
                    decoration: InputDecoration(
                     border: OutlineInputBorder(),
                     labelText: 'Nombre',
                        suffixIcon: Icon(Icons.person, color: Colors.black87,)
                    ),
                    keyboardType: TextInputType.text,
                  ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: _apellido,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Apellido',
                        suffixIcon: Icon(Icons.person, color: Colors.black87,)
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    TextFormField(
                      controller: _email,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Correo Electronico',
                        suffixIcon: Icon(Icons.email_outlined, color: Colors.black87,)
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: _telefono,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Telefono',
                        suffixIcon: Icon(Icons.phone,color: Colors.black87,)
                      ),
                      keyboardType: TextInputType.streetAddress,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: _direccion,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Dirreccion',
                        suffixIcon: Icon(Icons.add_location_alt, color: Colors.black87,)
                      ),

                    ),
                    Row(
                      children: [
                        Expanded(
                              child:
                                ListTile(
                                  title: Text("Masculino"),
                                  leading: Radio<Genre>(
                                    value: Genre.masculino,
                                    groupValue: _genre,
                                    onChanged: (Genre? value){
                                      setState(() {
                                        _genre = value;
                                      });
                                    },
                                ),
                                ),
      ),
                                Expanded(
                                  child: ListTile(
                                    title: Text("Femenino"),
                                    leading: Radio<Genre>(
                                      value: Genre.femenino,
                                      groupValue: _genre,
                                      onChanged: (Genre? value){
                                        setState(() {
                                          _genre= value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),


                   const SizedBox(
                     height: 15,
                   ),
                    TextFormField(
                      controller: _password,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Contraseña',
                          suffixIcon: Icon(Icons.key, color: Colors.black87,)
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  const SizedBox(
                    height: 16,
                  ),
                    TextFormField(
                      controller: _repPassword,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Repita su contraseña',
                          suffixIcon: Icon(Icons.key_rounded, color: Colors.black87,)
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextButton(onPressed: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context)=> LoginPages()),);
                  }, child: Text("Registrarse"))
            ]
                ),
      )
          ),
          ),
      );

  }
}

