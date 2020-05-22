import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);
  Size _sizeScreen;
  @override
  Widget build(BuildContext context) {

    _sizeScreen = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _crearImagen(),
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

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
              image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              fit: BoxFit.cover,
            ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
              padding: EdgeInsets.symmetric(horizontal: _sizeScreen.width * 0.05, vertical: _sizeScreen.height * 0.05),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Lago con un puente', style: estiloTitulo,),
                        SizedBox(height: 7.0,),
                        Text('Un lago en alemania', style: estiloSubTitulo,),
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.red, size: 30.0,),
                  Text('41', style: TextStyle(fontSize: 20.0),),
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
        _accion(Icons.near_me, 'ROUTER'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto){
    return Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue, size: 40.0,),
            SizedBox(height: 5.0,),
            Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),),
          ],
        );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: _sizeScreen.width * 0.05, vertical: _sizeScreen.height * 0.05),
        child: Text(
          'Ea excepteur id mollit deserunt exercitation sit non velit in velit et. Ad aliquip eiusmod consequat et duis qui cupidatat sit irure aliqua dolor consectetur minim cupidatat. Duis anim adipisicing magna ex. Nulla irure aliqua aliquip ullamco labore cupidatat ex velit proident veniam cupidatat culpa consequat.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}