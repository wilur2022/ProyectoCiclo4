import 'package:flutter/material.dart';

class WelcomePages extends StatefulWidget {
  const WelcomePages({Key? key}) : super(key: key);

  @override
  State<WelcomePages> createState() => _WelcomePagesState();
}

class _WelcomePagesState extends State<WelcomePages> {
  @override
  Widget build(BuildContext context) {

    final elevatedButtonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50)
    );

    return Scaffold(
      appBar: AppBar(title: Text("Turiscol"),),
      drawer: Drawer(),
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //children: [
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/fondop.jpg"),
                fit: BoxFit.cover

            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(1),//vertical: 20,horizontal: 20),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        'Conozca Popayán!',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 40,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 6
                            ..color = Colors.blue[700]!,
                        ),
                      ),
                      // Solid text as fill.
                      Text(
                        'Conozca Popayán!',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: const Image( image: AssetImage("assets/ciudad.jpg"), width: 1000, height: 400),
                    width: double.infinity,
                    margin: const EdgeInsets.all(1),
                  ),
                  ElevatedButton(
                    style:  elevatedButtonStyle,
                    child: Text('Ubicación'),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) =>
                            Center(

                              child: Container(
                                alignment: FractionalOffset. center,
                                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                                child: const Text(
                                  'Popayán es la capital del Departamento del Cauca, dista a unos 600 km de Bogotá.'
                                      ' Por la carretera Panamericana se ubica a 120 km de la ciudad de Cali; estando situada en el valle'
                                      ' de Pubenza, entre las cordilleras Occidental y Central, al occidente del país; en las coordenadas'
                                      ' 2°27´33 norte y 76°36´01 oeste ',
                                  style: TextStyle(fontSize: 18),
                                  textAlign: TextAlign.justify,
                                ),

                                //onPressed: () => Navigator.pop(context),
                              ),
                            ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10.0, // height you want
                  ),
                  ElevatedButton(
                    style: elevatedButtonStyle,
                    child: Text('Clima'),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) =>
                            Center(

                              child: Container(
                                alignment: FractionalOffset. center,
                                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                                child: const Text(
                                  'En esta ciudad predomina el clima medio, con una temperatura promedio de 18 °C, '
                                      ' con una variación entre los 14 °C a 25 °C; destacandose la temporada más'
                                      ' calurosa desde el mes principios del mes de junio hasta finales del mes de '
                                      ' septiembre. ',
                                  style: TextStyle(fontSize: 18),
                                  textAlign: TextAlign.justify,
                                ),

                                //onPressed: () => Navigator.pop(context),
                              ),
                            ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
