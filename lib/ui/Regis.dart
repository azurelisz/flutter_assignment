import 'package:flutter/material.dart';
import 'package:test_1/home.dart';
class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SignUpState();
  }
}

class SignUpState extends State<SignUp> {
  final _regisKey = GlobalKey<FormState>();

  String email;
  String password;
  String conPassword;

  @override
  // TODO: implement widget
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Register"),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),
      body: new Container(
        alignment: Alignment.center,
        child: new Container(
          height: 250.0,
          width: 380.0,
          color: Colors.grey[50],
          child: new Column(
            children: <Widget>[
              new TextFormField(
                validator: (value) {
                      email = value;
                     },
                    decoration: new InputDecoration(
                      hintText: 'E-Mail',
                      icon: new Icon(Icons.email)
              ),
              ),

              new TextFormField(
                  validator: (value) {
                      password = value;
                     },
                    decoration: new InputDecoration(
                      hintText: 'Password',
                      icon: new Icon(Icons.lock)
              ),
              ),

              new TextFormField(
                validator: (value) {
                      conPassword = value;
                     },
                    decoration: new InputDecoration(
                      hintText: 'Confirm-Password',
                      icon: new Icon(Icons.lock)
              ),
              ),
              new Padding(padding: new EdgeInsets.all(10.5)), //add padding
              new Center(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      child: new RaisedButton(
                        onPressed: (){
                            if (_regisKey.currentState.validate()) {
                              if(email.isEmpty || password.isEmpty || conPassword.isEmpty){
                                Scaffold.of(context)
                                    .showSnackBar(SnackBar(content: Text('กรุณาาระบุข้อมูลให้ครบถ้วน')));
                              }
                              else if(email == 'admin'){
                                Scaffold.of(context)
                                    .showSnackBar(SnackBar(content: Text('user นี้มีอยู่ในระบบแล้ว')));
                              }
                              else if(password != conPassword){
                                Scaffold.of(context)
                                    .showSnackBar(SnackBar(content: Text('password ไม่เหมือนกัน')));
                              }
                              else{
                                print('Register Succeed');
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => Main()));
                              }
                            }
                            
                            Navigator.push(
                              context, MaterialPageRoute(builder: (context) => Main()));
                          },
                        color: Colors.greenAccent,
                        child: new Text("Continue",
                        style: new TextStyle(color: Colors.white,
                        fontSize: 16.9))
                      ),
                    )
                  ],
                ),
              )
            ]),
        ),
      )
    );
  }
}