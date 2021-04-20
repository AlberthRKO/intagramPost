import 'package:flutter/material.dart';

void main() {
  runApp(PantallaPrincipal());
}

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Instagram Post',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: PostInstagram(),
      ),
    );
  }
}

class PostInstagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Cabecera
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/perfil.jpg',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Marlen YS',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          //Post
          Image.asset('assets/post.jpg'),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/icono_corazon.png', width: 25),
                    SizedBox(width: 8),
                    Image.asset('assets/icons/icono_mensaje.png', width: 25),
                    SizedBox(width: 8),
                    Image.asset('assets/icons/icono_enviar.png', width: 25),
                  ],
                ),
                Image.asset('assets/icons/icono_guardar.png', width: 25),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/alberth.jpg',
                    width: 20,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Text('Le gusta a '),
                Text(
                  '@AlberthParedes ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('y '),
                Text(
                  '1,567 ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Text(
                  '@AlberthParedes ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text('Esta como todo un Crack !!! ',
                    style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 2),
            child: Row(
              children: [
                Text(
                  '@MarlenYS ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                  'Como Siempre ',
                  style: TextStyle(fontSize: 12),
                ),
                Icon(
                  Icons.favorite,
                  size: 12,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
