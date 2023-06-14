import 'package:flutter/material.dart';
import 'package:pokodex/widget/app_title.dart';
import '../model/pokemon_model.dart';
import '../widget/pokemon_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: const [ 
          AppTitle(),
          Expanded(child:  PokemonList()),
        ],
      ),
    );
  }
}
