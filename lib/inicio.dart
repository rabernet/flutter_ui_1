import 'package:flutter/material.dart';

class Entrada2 extends StatelessWidget {
  const Entrada2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  clipper: MyClipper3(),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.65,
                    decoration: BoxDecoration(
                      color: Color(0xFFed344a),
                    ),  
                    child: Opacity(
                      opacity: 0.25,
                      child: Container(
                            decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/furniture.png', )
                            ),
                          )   
                      )
                    ),
                ),
              ),
          
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 0, bottom: 20.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                 SizedBox(height:50.0),
                 Container(
                   height: 400,
                   decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/persondog.png', )
                      ),
                    )   
                 ),
                SizedBox(height:30.0),
                Text('Llevalo contigo donde \n  quiera que vayas', textAlign: TextAlign.center, style: TextStyle(fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.w900,),),
                SizedBox(height:20.0),
                Text('Busca y agrega los\n  mejores lugares para pasearlo', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, color: Colors.black87,),),
                SizedBox(height:30.0),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    color: Color(0xFFed344a),
                    textColor: Colors.white,
                    child: Text("Registrarse", style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                    ),),
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 32.0
                    ),
                    onPressed: (){}
                    ),

                ),
                SizedBox(height:10.0),
                Text('Crear Nueva Cuenta', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0, color: Color(0xFFed344a), fontWeight: FontWeight.w900),),

                ],
              ),
            )
          )
        ],
      ),
    );
  }


}


class MyClipper3 extends CustomClipper<Path>{

  @override
  Path getClip(Size size){
    var path = Path();
    path.lineTo(0, size.height-160);
    path.quadraticBezierTo(size.width/2, size.height+50, size.width, size.height-157);
    path.lineTo(size.width, 0);
    path.close();
    return path;


    // var path = Path();
    // path.lineTo(0, size.height-100);
    // // path.quadraticBezierTo(size.width/2, size.width-100, size.width, size.height);
    // path.quadraticBezierTo(size.width/2, size.height, size.width, size.height-100);
    // // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, 0);
    // path.close();
    
    // return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
