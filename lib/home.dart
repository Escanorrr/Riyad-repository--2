import 'package:flutter/material.dart';
import 'package:slides/slides.dart';
class home extends StatefulWidget{
  home({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() {
    return homestate(title: this.title);
  }
}

class homestate extends State<home>{

  homestate({Key? key, required this.title});
  final String title;

  int _counter = 0;
  String link = 'd1.png';
  void clickme (){
    setState((){
      if (link == 'd1.png'){
        link = 'd2.png';
      }
      else {
        link ='d1.png';
      }

    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

  }

  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
        elevation: 0.0,
        centerTitle: true,
      ),



      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            // Vertically center the widget inside the column
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //create a input field
              Container(
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),

              //crud operations on the database







              Card(
                  color: Colors.deepPurpleAccent,
                  elevation: 1,
                  child:
                  Text('the number is : ${_counter}',
                    style: TextStyle(
                        fontSize: 50
                    ), )
              ),
              Container(
                height: 300,
                child: Row(
                  // Vertically center the widget inside the column
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Container(
                        child: Center(
                            child: GestureDetector(
                                onLongPress: clickme,
                                child: Image.asset("assets/imgs/${link}"))
                        ),
                      ),
                    ),

                    Flexible(
                      child: Container(
                        child: Slides(
                          title: 'cuck',

                          subtitle: 'old',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              FlatButton(
                child: Text("Click me bitch",style: TextStyle(fontSize: 45),textAlign: TextAlign.center,),
                onPressed: clickme,
                color: Colors.cyanAccent,
                padding: EdgeInsets.all(100),

              ),

              Center(
                  child: Image.asset("assets/imgs/h.gif")

              ),
              FlatButton.icon(
                onPressed: clickme,
                icon: Icon(Icons.verified_user_outlined,color: Colors.green,size: 40,),
                label: Text('pppppresss'),
              ),
              TextFormField(
                style: TextStyle(fontSize: 25),
                decoration:

                InputDecoration(
                  prefixIcon: Icon(Icons.add_a_photo, size: 25),
                  suffixText: 'put in'
                ),

              ),
            ],
          ),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
