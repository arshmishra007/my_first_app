import 'package:flutter/material.dart';
myapplication()
{
  var Text_Style = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black54,
    fontSize: 16,
  );
  var mytext = Text(
    'My Application',
    style: Text_Style,
    textDirection: TextDirection.ltr,
  );
  var myIcon = Icon(
    Icons.bookmark,
  );
  var LinkedIcon = Icon(
    Icons.link,
    color: Colors.black54,
  );
  press_function()
  {
    print("Icon Clicked");
  }
  var LinkedIconButton = IconButton(
    icon:LinkedIcon ,
    onPressed: press_function,);
  var myapplicationbar = AppBar(
    title: mytext,
    backgroundColor: Colors.yellow,
    leading: myIcon,
    actions: <Widget>[LinkedIconButton],
  );  
var url = 'https://raw.githubusercontent.com/arshmishra007/Myimage/master/46710047_913998058795115_5955385572276043776_n.jpg';
var my_image=Image.network(
  url,
  width: double.infinity,
  height: double.infinity,

);
var Mycanvas=Scaffold(
  appBar: myapplicationbar,
  backgroundColor: Colors.yellow,
  body:my_image,
  );
  var design = MaterialApp(
    home: Mycanvas,
    debugShowCheckedModeBanner: false,);


    return design;

}