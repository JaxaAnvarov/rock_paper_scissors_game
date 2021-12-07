import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imtihon3/screeens/third_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double _fontSize = 20.0;
  Color? _color;
  int _sanoq = 0;

  var _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      resizeToAvoidBottomInset: false,
      appBar: appBar(),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 30.0),
              dropDownButton(),
              SizedBox(height: 50.0),
              textFormField(),
              textFormFieldemail(),
              textFormField2(),
              SizedBox(height: 50.0),
              container(),
              row(),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField textFormFieldemail() {
    return TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                hintText: "email...",
                labelText: "email",
              ),
              validator: (String? xato) {
                if (xato!.length < 4) {
                  return "Juda Qisqa Email Kiritildi !!!";
                }
              },
            );
  }

  TextFormField textFormField2() {
    return TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                hintText: "password...",
                labelText: "password",
              ),
              validator: (String? xato) {
                if (xato!.length < 4) {
                  return "Juda Qisqa Password Kiritildi !!!";
                }
              },
            );
  }

  Row row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FloatingActionButton(
          backgroundColor: Colors.indigo,
          focusColor: Colors.indigo,
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _sanoq += 1;
              if (_sanoq == 4) {
                _sanoq = 0;
                setState(() {});
              }
            });
          },
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
              fixedSize: Size(
                150.0, // width
                30.0, // height
              )),
          child: Text(
            "Start Game",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            if (_formKey.currentState!.validate() && _color != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThirdPage(
                    colors: Colors.redAccent,
                  ),
                ),
              );
            }
          },
        ),
      ],
    );
  }

  Container container() {
    return Container(
      alignment: Alignment.center,
      height: 60.0,
      width: 60.0,
      child: Text(
        "${_sanoq}",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  TextFormField textFormField() {
    return TextFormField(
      controller: _nameController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        hintText: "username...",
        labelText: "Username",
      ),
      validator: (String? xato) {
        if (xato!.length < 4) {
          return "Juda Qisqa Ism Kiritildi !!!";
        }
      },
    );
  }

  DropdownButtonHideUnderline dropDownButton() {
    return DropdownButtonHideUnderline(
      child: DropdownButton<Color>(
        value: _color,
        hint: Text("Rang Tanlang"),
        items: _listOfDropdownc,
        onChanged: (v) {
          setState(() {
            _color = v;
          });
        },
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 20.0,
        ),
      ),
      title: Text(
        "Royhatdan O'tish",
        style: TextStyle(
          color: Colors.pink[(Random().nextInt(8) + 1) * 100],
          fontSize: _fontSize,
        ),
      ),
      centerTitle: true,
      actions: [
        GestureDetector(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "--",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          onTap: () {
            setState(() {
              _fontSize -= 1;
            });
          },
        ),
        SizedBox(width: 10.0),
        GestureDetector(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "+",
              style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.w500,
                fontSize: 25.0,
              ),
            ),
          ),
          onTap: () {
            setState(() {
              _fontSize += 1;
            });
          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  List<DropdownMenuItem<Color>> _listOfDropdownc = [
    DropdownMenuItem(
      child: Row(
        children: [
          Icon(Icons.circle, color: Colors.red),
          SizedBox(
            width: 20.0,
          ),
          Text("Qizil Rang"),
        ],
      ),
      value: Colors.red,
    ),
    DropdownMenuItem(
      child: Row(
        children: [
          Icon(Icons.circle, color: Colors.green),
          SizedBox(
            width: 20.0,
          ),
          Text("Yashil Rang"),
        ],
      ),
      value: Colors.green,
    ),
    DropdownMenuItem(
      child: Row(
        children: [
          Icon(Icons.circle, color: Colors.blue),
          SizedBox(
            width: 20.0,
          ),
          Text("Moviy Rang"),
        ],
      ),
      value: Colors.blue,
    ),
  ];
}
