import 'package:flutter/material.dart';
import 'btn_val.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override

  String number1 = "";
  String number2 = "";
  String operand = "";
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Calculator",style: TextStyle(fontFamily: "headerFont",fontSize: 30,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.indigo,
      ),
      body:
      SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "$number1$operand$number2".isEmpty ? "0" : "$number1$operand$number2" ,style: TextStyle(fontSize: 48,
                        fontFamily: "headerFont",
                        fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                    )
                ),
              ),
            ),
            Wrap(
              children:
              Btn.buttonValues.map((value) => SizedBox(
                  width: value == Btn.n0 ?screenSize.width/2: screenSize.width/4,
                  height: screenSize.height/8,
                  child: buildButton(value))).toList(),

            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(value) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Material(
        color: getBtnColor(value),
        clipBehavior: Clip.hardEdge,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(color: Colors.white24)),
        child: InkWell(
          onTap: (){
            onBtnTap(value);
          },
          child: Center(
              child: value == Btn.del ? Icon(Icons.backspace_outlined) : Text(value,style: const TextStyle(fontFamily: "headerFont",fontSize: 25,fontWeight: FontWeight.bold),)
          ),
        ),
      ),
    );
  }
  Color getBtnColor(value){
    return [Btn.del,Btn.clr].contains(value) ? Colors.indigo :
    [Btn.per,Btn.multiply,Btn.add,Btn.subtract,Btn.divide,Btn.calculate].contains(value) ?
    Colors.deepOrangeAccent : Colors.white24;

  }

  void onBtnTap(String value) {
    if(value == Btn.del){
      delete();
      return;
    }
    if(value == Btn.clr){
      clearAll();
      return;
    }
    if(value == Btn.per){
      convertToPercentage();
      return;
    }
    if(value == Btn.calculate){
      calculate();
      return;
    }
    appendValue(value);
  }

  void appendValue(String value){
    //If is operand and not dot
    if(value!= Btn.dot && int.tryParse(value) == null){
      //operand pressed
      if(operand.isNotEmpty && number2.isNotEmpty){
        calculate();
      }
      operand = value;
    }
    // assign value to num1 variable
    else if(number1.isEmpty || operand.isEmpty){
      //check if value is '.' ex 1.2
      if(value == Btn.dot && number1.contains(Btn.dot)) return;
      if(value == Btn.dot && (number1.isEmpty || number1 == Btn.n0)){
        //num1 = "" | "0"
        value = "0.";
      }
      number1+=value;
    }
    //assign value to number2 variable
    else if(number2.isEmpty || operand.isNotEmpty){
      //check if value is '.' ex 1.2
      if(value == Btn.dot && number2.contains(Btn.dot)) return;
      if(value == Btn.dot && (number2.isEmpty || number2 == Btn.n0)){
        //num2 = "" | "0"
        value = "0.";
      }
      number2+=value;
    }
    setState(() {

    });
  }

  void delete() {
    if(number2.isNotEmpty){
      number2 = number2.substring(0,number2.length-1);
    }
    else if(operand.isNotEmpty){
      operand = "";
    }
    else if(number1.isNotEmpty){
      number1 = number1.substring(0,number1.length-1);
    }
    setState(() {

    });
  }

  void clearAll() {
    setState(() {
      number1 = "";
      number2 = "";
      operand = "";
    });
  }

  void convertToPercentage() {
    if(number1.isNotEmpty && number2.isNotEmpty && operand.isNotEmpty){
      calculate();
    }
    if(operand.isNotEmpty){
      return;
    }
    final number = double.parse(number1);
    setState(() {
      number1 = "${(number/100)}";
      operand = "";
      number2 = "";
    });
  }

  void calculate() {
    if(number1.isEmpty) return;
    if(operand.isEmpty) return;
    if(number2.isEmpty) return;

    final double num1 = double.parse(number1);
    final double num2 = double.parse(number2);

    var result = 0.0;
    switch(operand){
      case Btn.add:
        result = num1+num2;
        break;
      case Btn.subtract:
        result = num1 - num2;
        break;
      case Btn.multiply:
        result = num1*num2;
        break;
      case Btn.divide:
        result = num1/num2;
        break;
      default:
    }
    setState(() {
      number1 = "$result";
      if(number1.endsWith(".0")){
        // sondaki noktayı sil
        number1 = number1.substring(0,number1.length -2);
      }
      number2 = "";
      operand = "";
    });

  }
}
