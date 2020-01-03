import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:english_words/english_words.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  FavoriteWidgetState createState() {
      // TODO: implement createState
      return new FavoriteWidgetState();
    }
  
  }
  
class FavoriteWidgetState extends State<FavoriteWidget> {
  int _favoriteCount = 40;
  bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Column(children: <Widget>[
          IconButton(
                    icon: _isFavorite ? new Icon(Icons.star) : new Icon(Icons.star_border),
                    color: Colors.red,
                    onPressed: () {
                      this.setState(() {
                        if (!_isFavorite) {
                          this._favoriteCount++;
                          _isFavorite = true;
                        } else {
                          this._favoriteCount--;
                          _isFavorite = false;
                        }
                        
                      });
                    },
                  )]),
                  Column(children: <Widget>[Text(_favoriteCount.toString())])
      ],
    );
  }
}