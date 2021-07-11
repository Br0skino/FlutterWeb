import "package:flutter/material.dart";
import 'dart:html' as html;

void main() => runApp(HomePage());


class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color coloreSfondo = Colors.white;
  String testo="Dark";
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TinyApp"),
          centerTitle: true,
        ),
        backgroundColor:coloreSfondo,
        body: Column(
          children: [
            Center(
              child: Stack(children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.2),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: new InkWell(
                      onTap: () {
                        print("Opening Link");
                        html.window
                            .open('https://www.instagram.com/', "_blank");
                      },
                      child: Card(
                        elevation: 7,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Instagram",
                              style: TextStyle(
                                  fontFamily: "FontMio", fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.125,
                      left: MediaQuery.of(context).size.width * 0.3111111),
                ),
              ]),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: new InkWell(
                    onTap: () {
                      print("Card Tapped");
                      html.window.open("https://www.youtube.com/", "_blank");
                    },
                    child: Card(
                      elevation:7,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width:MediaQuery.of(context).size.width*0.2,
                            height:MediaQuery.of(context).size.height*0.2,
                            child:Image.asset("assets/YouTubeLogo.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: new InkWell(
                    onTap: () {
                      print("Card Tapped");
                      html.window.open("https://www.youtube.com/", "_blank");
                    },
                    child: Card(
                      elevation:7,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width:MediaQuery.of(context).size.width*0.2,
                            height:MediaQuery.of(context).size.height*0.2,
                            child:Image.asset("assets/YouTubeLogo.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Center(
              child: RaisedButton(onPressed: (){
                if(coloreSfondo==Colors.white){
                  coloreSfondo=Colors.black;
                  testo="White";

                }else{
                  coloreSfondo=Colors.white;
                  testo="Dark";

                }
              },
              color: Colors.blueAccent,
              child:Text(testo,style: TextStyle(color: Colors.white,),),),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
