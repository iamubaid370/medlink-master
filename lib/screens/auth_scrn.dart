import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum AuthMode { Signup, Login }

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late bool _passwordvisible;
  AuthMode _authMode = AuthMode.Login;
  var _isloading = false;
  late AnimationController animeController;
  late Animation<Offset> slideAnime;
  late Animation<double> opacityAnime;

  @override
  void initState() {
    super.initState();
    animeController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 300,
      ),
    );
    slideAnime = Tween<Offset>(
      begin: Offset(0, -1.5),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: animeController,
        curve: Curves.fastOutSlowIn,
      ),
    );
    opacityAnime = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(parent: animeController, curve: Curves.easeIn),
    );
    _passwordvisible = false;
  }

  @override
  void dispose() {
    super.dispose();
    animeController.dispose();
  }

  void _switchAuthmode() {
    if (_authMode == AuthMode.Login) {
      setState(() {
        _authMode = AuthMode.Signup;
      });
      animeController.forward();
    } else {
      setState(() {
        _authMode = AuthMode.Login;
      });
      animeController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
          opacity: 0.4,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 200),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 5,
                        left: 11,
                      ),
                      child: Text(
                        'Email',
                        style: GoogleFonts.exo(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 5,
                        left: 11,
                      ),
                      child: Text(
                        'Password',
                        style: GoogleFonts.exo(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    TextFormField(
                      obscureText: !_passwordvisible,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _passwordvisible = !_passwordvisible;
                            });
                          },
                          icon: Icon(
                            _passwordvisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black54,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    AnimatedContainer(
                      padding: EdgeInsets.all(0),
                      constraints: BoxConstraints(
                        maxHeight: _authMode == AuthMode.Signup ? 60 : 0,
                        minHeight: _authMode == AuthMode.Signup ? 10 : 0,
                      ),
                      curve: Curves.easeIn,
                      duration: Duration(milliseconds: 300),
                      child: SlideTransition(
                        position: slideAnime,
                        child: FadeTransition(
                          opacity: opacityAnime,
                          child: _authMode == AuthMode.Login
                              ? null
                              : Padding(
                                  padding: EdgeInsets.only(
                                    bottom: 5,
                                    left: 11,
                                  ),
                                  child: Text(
                                    'Confirm Password',
                                    style: GoogleFonts.exo(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      constraints: BoxConstraints(
                        maxHeight: _authMode == AuthMode.Signup ? 120 : 0,
                        minHeight: _authMode == AuthMode.Signup ? 60 : 0,
                      ),
                      curve: Curves.easeIn,
                      duration: Duration(milliseconds: 300),
                      child: SlideTransition(
                        position: slideAnime,
                        child: FadeTransition(
                          opacity: opacityAnime,
                          child: TextFormField(
                            enabled: _authMode == AuthMode.Signup,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _passwordvisible = !_passwordvisible;
                                  });
                                },
                                icon: Icon(
                                  _passwordvisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.black54,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            obscureText: !_passwordvisible,
                          ),
                        ),
                      ),
                    ),
                    //SizedBox(height: 200),
                    Container(
                      padding: EdgeInsets.only(top: 80),
                      alignment: Alignment.bottomCenter,
                      child: FilledButton(
                        onPressed: () {},
                        child: Text(
                          _authMode == AuthMode.Login ? 'Login' : 'Sign Up',
                          style: GoogleFonts.exo(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: FilledButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          foregroundColor: Colors.white,
                          shadowColor: Colors.black45,
                          fixedSize: Size(150, 50),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        _authMode == AuthMode.Login
                            ? 'Dont have an account?'
                            : 'Already have an account?',
                        style: GoogleFonts.exo(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: TextButton(
                        onPressed: _switchAuthmode,
                        child: Text(
                            '${_authMode == AuthMode.Login ? 'Sign Up' : 'Login'}',
                            style: GoogleFonts.exo(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
