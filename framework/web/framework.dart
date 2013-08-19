// Copyright (c) 2013, Roman Hudec. All rights reserved. Use of this source
// code is governed by a BSD-style license that can be found in the LICENSE
// file.
import 'dart:html';

import 'package:framework/router.dart';


class View {
  
  String _id;
  String name;
  
  View(this._id, this.name);
  
  void load(parameters) {
    query("#main_container").innerHtml = '<h1>' + this.name + '<h1>' + '<h2>' + this._id + '</h2>';  
  }
  
  void unload() {
    query("#main_container").innerHtml = '';
  }
  
}
void main() {
  var list = new List();
  
  var sublist = ['first',new Route('/first') ,new View('1', 'I am first')];
  list.add(sublist);
  sublist = ['second', new Route('/second') ,new View('2', 'I am second')];
  list.add(sublist);
  sublist = ['third',new Route('/third') ,new View('3', 'I am third')];
  list.add(sublist);
  sublist = ['fourth',new Route('/fourth') ,new View('4', 'I am fourth')];
  list.add(sublist);
  sublist = ['fifth',new Route('/fifth') ,new View('5', 'I am fifth')];
  list.add(sublist);
  sublist = ['sixth',new Route('/sixth') ,new View('6', 'I am sixth')];
  list.add(sublist);
  
  createNavigator(list).navigate('/first');
}