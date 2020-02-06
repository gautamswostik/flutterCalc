import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = "0";
  
  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";


  buttonPressed(String buttonText){
    if(buttonText == "Clear"){
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    }
    else if(buttonText == "+" || buttonText =="-" || buttonText =="/" || buttonText =="*")
    {
        num1  = double.parse(output);//since output is in string so use type conversion
        operand = buttonText;
        _output = "0";
    }
    else if(buttonText == "."){

      if(_output.contains(".")){
        print("Already conatains a decimals");
        return;

      } else {
        _output = _output + buttonText; //append the decimal
      }
    }
    else if(buttonText == "="){
      num2 = double.parse(output);

      if(operand == "+"){
        _output = (num1 + num2).toString();//to string typecast besause _output is string
      }
      if(operand == "-"){
        _output = (num1 - num2).toString();
      }
      if(operand == "*"){
        _output = (num1 * num2).toString();
      }
      if(operand == "/"){
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand="";
    }
    else{
      _output = _output + buttonText;
    }
    print(_output);
    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }
  Widget buildButton(String buttonText){
    return new Expanded(
                  child:
                  new OutlineButton(
                    padding: new EdgeInsets.all(14.0),
                    child:
                    new Text(buttonText,
                    style: TextStyle(
                      fontSize:24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    onPressed :(){
                      buttonPressed(buttonText);
                    },
                    color: Colors.blueGrey,
                    textColor: Colors.black,
                  ),
                  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          backgroundColor: Colors.purple,
        ),
        body: new Container(
            child: 
            new Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(
                    vertical:24.0,
                    horizontal:12.0,
                  ),
                  child: 
                  new Text(output,
                  style: new TextStyle(
                    fontSize:50.0,
                    fontWeight:FontWeight.bold,
                  ),),
                  ),

                new Expanded(child: 
                new Divider(),
                ),

                Column(
                  children: <Widget>[
                    Row(
                      children: [
                      buildButton("7"),
                      buildButton("8"),
                      buildButton("9"),
                      buildButton("/"),
                      ],  
                    ),
                    Row(
                      children: [
                      buildButton("4"),
                      buildButton("5"),
                      buildButton("6"),
                      buildButton("*"),
                      ],  
                    ),
                    Row(
                      children: [
                      buildButton("1"),
                      buildButton("2"),
                      buildButton("3"),
                      buildButton("-"),
                      ],  
                    ), 
                    Row(
                      children: [
                      buildButton("."),
                      buildButton("0"),
                      buildButton("00"),
                      buildButton("+"),
                      ],  
                    ),
                    Row(
                      children: [
                      buildButton("Clear"),
                      buildButton("="),
                      ],  
                    ),
                  ],
                ),
              ],
            ),
        ),
    );
  }
}