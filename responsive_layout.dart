import 'package:app_com_sql/widgets/app_bar/mobile_app_bar.dart';
import 'package:app_com_sql/widgets/app_bar/web_app_bar.dart';
import 'package:app_com_sql/widgets/item_produto/item_produto.dart';
import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {

  _ajustarVisualizacao(double larguraTela){
    int colunas = 2;
    if (larguraTela <= 600){
      colunas = 2;
    }else if (larguraTela <= 960){
      colunas = 4;
    }else {
      colunas = 6;
    }
    return colunas;
  }
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {

        var largura = constraint.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;


        return Scaffold(
          appBar: largura < 600
            ? PreferredSize(
              preferredSize: Size(largura, alturaBarra),
              child: const MobileAppBar()
            )
            : PreferredSize(
              preferredSize: Size(largura, alturaBarra),
              child: const WebAppBar(),
            ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: _ajustarVisualizacao(largura),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: const [
                ItemProduto(descricao: 'Kit Multimidia', preco: 'R\$ 2.200,00', imagem:'p1.jpg'),
                ItemProduto(descricao: 'Pneu Goodyear aro 16', preco: 'R\$ 800,00', imagem:'p2.jpg'),
                ItemProduto(descricao: 'Samsung 9', preco: 'R\$ 4.100,00', imagem:'p3.jpg'),
                ItemProduto(descricao: 'Samsung Edge', preco: 'R\$ 2.150,00', imagem:'p4.jpg'),
                ItemProduto(descricao: 'Samsung Galaxy 10', preco: 'R\$ 6.200,00', imagem:'p5.jpg'),
                ItemProduto(descricao: 'Iphone 10', preco: 'R\$ 1.900,00', imagem:'p6.jpg'),
                ItemProduto(descricao: 'Kit Multimidia', preco: 'R\$ 2.200,00', imagem:'p1.jpg'),
                ItemProduto(descricao: 'Pneu Goodyear aro 16', preco: 'R\$ 800,00', imagem:'p2.jpg'),
                ItemProduto(descricao: 'Samsung 9', preco: 'R\$ 4.100,00', imagem:'p3.jpg'),
                ItemProduto(descricao: 'Samsung Edge', preco: 'R\$ 2.150,00', imagem:'p4.jpg'),
                ItemProduto(descricao: 'Samsung Galaxy 10', preco: 'R\$ 6.200,00', imagem:'p5.jpg'),
                ItemProduto(descricao: 'Iphone 10', preco: 'R\$ 1.900,00', imagem:'p6.jpg'),
                ItemProduto(descricao: 'Kit Multimidia', preco: 'R\$ 2.200,00', imagem:'p1.jpg'),
                ItemProduto(descricao: 'Pneu Goodyear aro 16', preco: 'R\$ 800,00', imagem:'p2.jpg'),
                ItemProduto(descricao: 'Samsung 9', preco: 'R\$ 4.100,00', imagem:'p3.jpg'),
                ItemProduto(descricao: 'Samsung Edge', preco: 'R\$ 2.150,00', imagem:'p4.jpg'),
                ItemProduto(descricao: 'Samsung Galaxy 10', preco: 'R\$ 6.200,00', imagem:'p5.jpg'),
                ItemProduto(descricao: 'Iphone 10', preco: 'R\$ 1.900,00', imagem:'p6.jpg'),
              ], 
            ),
          ),
        );
      }, 
    );
  }
}
