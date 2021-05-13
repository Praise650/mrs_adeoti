import 'package:flutter/material.dart';
import 'package:mrs_adeoti/screens/sign_in.dart';

class CreateNewPassword extends StatefulWidget {
  @override
  _CreateNewPasswordState createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String passwordController;
  String confirmPasswordController;
  var pass;
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
  void _togglePasswordsView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
                  child: Form(
                    key: _globalKey,
                                      child: Column(
            children: [
              Container(
                height: 60,
                alignment: Alignment.bottomCenter,
                child: Text('Forgot Password',style: TextStyle(
                    fontSize:22,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height:MediaQuery.of(context).size.height * 1 / 10,),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                    'You new password must be different from \n previously set password',
                    textAlign: TextAlign.center,
                style: TextStyle(fontSize:20,color: Colors.black54),
                ),
              ),
              SizedBox(height:20),
              Padding(
                padding: const EdgeInsets.fromLTRB(42.0,8.0,42.0,8.0),
                child: Container(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      obscureText: _isHidden,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_open,
                          color: Colors.grey.withOpacity(1.0),
                        ),
                        suffix: InkWell(
                          onTap: _togglePasswordsView,
                          child: Icon(
                            _isHidden 
                            ? Icons.visibility_off 
                            : Icons.visibility,
                            color: Colors.grey.withOpacity(0.6),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.20),
                        hintText: 'Password \t \t  1234567890',
                        hintStyle: TextStyle(fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.0,
                            style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(width: 0.0,
                          style: BorderStyle.none,),
                ),
                      ),
                      validator: (String value){ 
                            pass = value;
                            if(value.isEmpty || value == null){return '*Password is Required';
                            } else { 
                              if((value.length <= 2)){return '*Password should be atleast 3 characters';
                              } else {
                                if((value.length >= 10)){return '*Password shold not be more than 9 characters long';
                                }}}
                                
                            return null; 
                            },
                            onSaved: (String value){
                              passwordController = value;
                            }
                    ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(42.0,8.0,42.0,8.0),
                child: Container(
                    child: TextFormField(
                      obscureText: _isHidden,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_open,
                          color: Colors.grey.withOpacity(1.0),
                        ),
                        suffix: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(
                            _isHidden 
                            ? Icons.visibility_off 
                            : Icons.visibility,
                            color: Colors.grey.withOpacity(0.6),
                        ),
                    ),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.20),
                        hintText: 'Confirm Password \t \t  1234567890',
                        hintStyle: TextStyle(fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0.0,
                            style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(width: 0.0,
                          style: BorderStyle.none,),
                ),
                      ),
                      validator: (String value){ 
                            if(value.isEmpty || (value != pass)){
                              return '*Password does not match';
                            } 
                            return null; 
                            },
                            onSaved: (String value){
                              confirmPasswordController = value;
                            },
                    ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 2 / 4,
                decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(18)),
                child: TextButton(
                    onPressed: () {
                      // validates form details
                if(!_globalKey.currentState.validate()){
                  return;
                }
                _globalKey.currentState.save();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                    },
                    child: Text(
                      'VERIFY',
                      style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                        fontSize: 16,
                      ),
                    ),
                ),
              ),
            ],
          ),
                  ),
        ),
      ),
    );
  }
}
