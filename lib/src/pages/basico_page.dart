import 'package:flutter/material.dart';


class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estilosubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            _crearImg(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
        
      )
    );
  }


  Widget _crearImg() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://cnet4.cbsistatic.com/img/pI-Oq4fGqthDVMMMuyL2ZMnaC5I=/2019/11/01/1e902743-2ee4-4c22-9b66-0b396596b13e/20190701-154228.jpg'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          
          children: <Widget>[
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Casa en el lago', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Un lago en Nueva Zelanda', style: estilosubTitulo),
                ],
              ),
            ),

            Icon( Icons.star, color: Colors.red, size: 30.0,),
            Text('4.1', style: TextStyle( fontSize: 20.0 ))
          
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
       _accion(Icons.call, 'CALL'),
       _accion(Icons.near_me, 'ROUTE'),
       _accion(Icons.share, 'SAHRE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {

    return  Column(
      children: <Widget>[
        Icon( icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.blue) )
      ],
    );

  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Consectetur aliqua et dolore occaecat pariatur ex aliquip tempor sit ex non cillum excepteur est. Consequat voluptate aliqua velit nostrud in nulla consequat aliquip labore excepteur labore. Minim sit ea qui sunt magna et eiusmod veniam Lorem aute duis enim. Non mollit culpa laboris anim et labore incididunt esse mollit adipisicing commodo aliqua eu.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}