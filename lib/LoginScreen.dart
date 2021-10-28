import 'package:flutter/material.dart';
import 'HomePage.dart';



class LoginScreen extends StatelessWidget {
  final isLoginForm = true;

  @override
  initState() {}

  @override
  Widget build(BuildContext context) {
    Widget showRegDetails() {
      if (!isLoginForm)
        return Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
          child: TextFormField(
            maxLines: 1,
            keyboardType: TextInputType.text,
            autofocus: false,
            decoration: new InputDecoration(
                hintText: 'Nickname',
                icon: new Icon(
                  Icons.format_quote,
                  color: Colors.grey,
                )),
          ),
        );
      return Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
        child: Container(
          height: 0,
          width: 0,
        ),
      );
    }


    Widget showLogo() {
      return new Hero(
          transitionOnUserGestures: true,
          //transitionOnUserGestures: true,
          tag: 'golane',
          child: Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: Container(
              constraints: BoxConstraints.tight(Size(200, 200)),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image
                        .asset(
                      'assets/images/golane.png',
                      fit: BoxFit.fitHeight,
                      colorBlendMode: BlendMode.darken,
                    )
                        .image),

                //clipBehavior: Clip.hardEdge,
              ),
            ),
          ));
    }

    Widget showEmailInput() {
      return Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
        child: new TextFormField(
          maxLines: 1,
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          decoration: new InputDecoration(
              hintText: 'Email',
              icon: new Icon(
                Icons.mail,
                color: Colors.grey,
              )),

        ),
      );
    }

    Widget showPasswordInput() {
      return Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
        child: new TextFormField(
          maxLines: 1,
          obscureText: true,
          autofocus: false,
          decoration: new InputDecoration(
              focusColor: Colors.red,
              hintText: 'Password',
              icon: new Icon(
                Icons.lock,
                color: Colors.grey,
              )),

        ),
      );
    }


    Widget showPrimaryButton() {
      return new Padding(
          padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
          child: SizedBox(
            height: 40.0,
            child: new RaisedButton(
              elevation: 5.0,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              color: Colors.red,
              child: new Text(isLoginForm ? 'Login' : 'Create account',
                  style: new TextStyle(fontSize: 20.0, color: Colors.white)),
              onPressed: () =>
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      )),
            ),)
      );
    }

    Widget _showForm() {
      return new Form(
        child: Stack(
          children: <Widget>[
            new ListView(
              padding: EdgeInsets.symmetric(horizontal: 15),
//        shrinkWrap: true,
              children: <Widget>[
                showLogo(),
                showRegDetails(),
                showEmailInput(),
                showPasswordInput(),
                showPrimaryButton(),


              ],
            ),

          ],
        ),
      );
    }

    return new Scaffold(
      extendBody: false,
      extendBodyBehindAppBar: false,
      appBar: new AppBar(
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
        title: new Text(
          'Golane Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _showForm(),
    );
  }

}