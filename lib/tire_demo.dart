import 'package:trie/trie.dart';

void main() {
  List<String> names = [];
  Trie trie = new Trie.list(names);
  trie.addWord("TURING");
  trie.addWord("Generalzzd");
  trie.addWord("Generalzzd6000");
  trie.addWord("generalzzd6000");
  trie.addWord("brave");
  trie.addWord("banana");
  print('All names are: ' + trie.getAllWords().toString());
  print('All names that begin with G are: ' +
      trie.getAllWordsWithPrefix("G").toString());
  print('All names that begin with g are: ' +
      trie.getAllWordsWithPrefix("g").toString());
  print('All names that begin with b are: ' +
      trie.getAllWordsWithPrefix("b").toString());
  print('All names that begin with br are: ' +
      trie.getAllWordsWithPrefix("br").toString());
}
