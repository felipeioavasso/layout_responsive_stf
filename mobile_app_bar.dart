import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Image.asset(
        'assets/imagens/logo.png',
        //fit: BoxFit.fitWidth,
      ),
      actions: [
        IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.search)
        ),
        IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.shopping_cart_rounded)
        ),
        IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.more_vert)
        ),
      ],
    );
  }
}
