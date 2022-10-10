import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Image.asset(
            'imagens/logo.png',
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Container(),
          ),
            IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.search)
          ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.shopping_cart_rounded)
          ),
          const SizedBox(width: 10,),
          OutlinedButton(
            onPressed: (){}, 
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              primary: Colors.white,
            ),
            child: const Text('Sign up'),
          ),
          const SizedBox(width: 10,),
          OutlinedButton(
            onPressed: (){}, 
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.orange,
              primary: Colors.white,
            ),
            child: const Text('Sign in'),
          ),
        ],
      ),
      
    );
  }
}
