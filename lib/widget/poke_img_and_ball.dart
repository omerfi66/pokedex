import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:pokodex/constant/ui_helper.dart';
import 'package:pokodex/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = "images/pokeball.png";
    return Stack(
      children: [
        Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              pokeballImageUrl,
              width: UIHelper.calculatePokeImageAndBallSize(),
              height: UIHelper.calculatePokeImageAndBallSize(),
              fit: BoxFit.fitHeight,
            )),
        Align(
            alignment: Alignment.bottomRight,
            child: Hero(
              tag:pokemon.id!,
              child: CachedNetworkImage(
                imageUrl: pokemon.img ?? "",
                width: UIHelper.calculatePokeImageAndBallSize(),
                height: UIHelper.calculatePokeImageAndBallSize(),
                fit: BoxFit.fitHeight,
                placeholder: (context, url) => CircularProgressIndicator(
                  color: UIHelper.getColorFromType(pokemon.type![0]),
                ),
              ),
            ))
      ],
    );
  }
}
