import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:english_words/english_words.dart';

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final Set<WordPair> _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text("Saved Suggestions"),
          ),
          body: ListView(
            children: ListTile.divideTiles(
              context: context,
              tiles: _saved.map((pair) => ListTile(
                  title: Text(
                    pair.asCamelCase,
                    style: _biggerFont,
                  )
                )
              ).toList()
            ).toList()
          )
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Startup Name Generator'),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.list), onPressed: _pushSaved)
      ],
    ),
    body: _buildSuggestions(),
  );

  
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if(i.isOdd) return Divider(height: 1, thickness: 3,);

        final index = i ~/ 2;
        if ( index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      });
    }

    Widget _buildRow(WordPair suggestion) {
      final bool isSaved = _saved.contains(suggestion);

      return ListTile(
        title: Text(suggestion.asCamelCase),
        trailing: Icon(
          isSaved ? Icons.favorite : Icons.favorite_border,
          color: isSaved ? Colors.pink : null,
        ),
        onTap: () {
          setState(() {
            if (isSaved) {
              _saved.remove(suggestion);
            } else {
              _saved.add(suggestion);
            }
          });
        },
      );
    }
}
        
        


class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}