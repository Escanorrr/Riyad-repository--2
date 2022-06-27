import 'package:flutter/material.dart';
import 'package:slides/slides.dart';
import 'package:url_launcher/url_launcher.dart';

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
  var url = 'https://www.instagram.com/riyad_djedda/';

  String? dropdownValue = null;
  bool? checkboxValue = false;

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

  void inkwellpress() async{
    print ('you pressed me : ' + url);

       await launch(url);




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
              //create a sized box
              //create a full login page

              Row(
                children: [
                  SizedBox(


                    child: DropdownButton<String>(
                      hint: Text('Select a country',
                        textAlign: TextAlign.center,
                        ),
                      value: dropdownValue, alignment: Alignment.center,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 18,
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue;
                          print('the dropdown value is $dropdownValue');
                        });
                      },
                      items: <String>['France', 'Germany', 'Italy', 'Spain', 'United Kingdom']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    //create a checkbox button
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: CheckboxListTile(
                      title: Text('I agree to the terms and conditions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                          )),
                      value: checkboxValue,
                      onChanged: (bool? value) {
                        setState(() {
                          checkboxValue = value;
                          print('checkbox value: $checkboxValue');
                        });
                      },
                    ),

                  ),
                ],
              ),
              //create an inkwell button
              InkWell(
                onTap: inkwellpress,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),




              //create a login text field and button
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Login',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    RaisedButton(
                      child: Text('Login'),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),







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
