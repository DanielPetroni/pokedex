import 'package:flutter/material.dart';
import 'package:pokedex/app/model/Pokemon.dart';

class ListType extends StatelessWidget {
  final Pokemon pokemon;
  final bool isRow;
  const ListType({Key? key, this.isRow = false, required this.pokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isRow
        ? Row(
            children: [
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: (Colors.white).withOpacity(0.2),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '${pokemon.type!.first}',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(width: 6),
              pokemon.type!.length > 1
                  ? Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: (Colors.white).withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          '${pokemon.type!.last}',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    )
                  : Container()
            ],
          )
        : Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: (Colors.white).withOpacity(0.2),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '${pokemon.type!.first}',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 6),
              pokemon.type!.length > 1
                  ? Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: (Colors.white).withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          '${pokemon.type!.last}',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    )
                  : Container()
            ],
          );
  }
}
