import 'package:flutter/material.dart';
import 'package:app4/pages/registre_pages.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({Key? key}) : super(key: key);

  @override
  State<LoginPages> createState() => _LoginPagesState();
}


final _email = TextEditingController();
final _password = TextEditingController();

class _LoginPagesState extends State<LoginPages> {
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
                      child: const Image(image: AssetImage('images/viaje.png'), width: 120, height: 120,),
                    ),
                    const SizedBox(
                      height: 9,
                    ),

                    const SizedBox(
                      height: 15,
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

                    const SizedBox(
                      height: 15,
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

                    const SizedBox(
                      height: 16,
                    ),
                    TextButton(onPressed: (){
                      Navigator.pop(context, MaterialPageRoute(builder: (context)=> LoginPages()),);
                    }, child: Text("Iniciar Sesión")),
                    const SizedBox(
                      height: 16,
                    ),
                    TextButton(onPressed: (){
                      Navigator.pop(context, MaterialPageRoute(builder: (context)=> LoginPages()),);
                    }, child: Text("Crea una nueva cuenta")),
                  ]
              ),
            )
        ),
      ),
    );

  }
}

