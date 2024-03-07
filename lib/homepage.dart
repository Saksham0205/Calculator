import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController t1= TextEditingController();
  TextEditingController t2 = TextEditingController();
  var num1=0,num2=0,result=0;
  void add(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      result = num1 + num2;
    });
  }
  void sub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      result = num1 - num2;
    });
  }
  void multi(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      result = num1*num2;
    });
  }
  void div(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      result = num1~/num2;
    });
  }
  void clear(){
    setState(() {
      t1.text="0";
      t2.text="0";
      result=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Calculator",style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 0.5,
        ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child:Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(decoration: BoxDecoration(
              color: Colors.greenAccent,borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            padding: EdgeInsets.all(10),
            child: Text("Output: $result",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),),),

            TextField(
              decoration: InputDecoration(
                hintText: "Number 1",
              ),
              controller: t1,
              keyboardType: TextInputType.numberWithOptions(),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Number 2",
              ),
              controller: t2,
              keyboardType: TextInputType.numberWithOptions(),
            ),
            Padding(padding: EdgeInsets.only(top:20)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(onPressed: add,child: Text("+",style: TextStyle(fontSize: 25),),color: Colors.lightBlueAccent,),
                MaterialButton(onPressed: sub,child: Text("-",style: TextStyle(fontSize: 25),),color: Colors.lightBlueAccent,)
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(onPressed: multi,child: Text("*",style: TextStyle(fontSize: 25),),color: Colors.lightBlueAccent,),
                MaterialButton(onPressed: div,child: Text("/",style: TextStyle(fontSize: 25),),color: Colors.lightBlueAccent,)
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            MaterialButton(onPressed: clear,child: Text("Clear",style: TextStyle(fontSize: 25),),color: Colors.redAccent,)


          ],
        ),
      ),
      ),
    );
  }
}
