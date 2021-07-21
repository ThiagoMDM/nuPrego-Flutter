import 'package:flutter/material.dart';
// Eliminei o appBar para combinar mais com o estilo de tela de login

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Aqui fiz o padding e coloquei em sequencia os alinhamentos
      //e alinhei a coluna centralizando para ficar com alinhamento
      //perfeito central no app.
      backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            //Aqui usei Stretch para definir que os elementos terão a
            //lagura inteira e em seguida sentralizei.
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,

            //Criei o Widget lista para inserir os nomes e os campos de input.
            children: <Widget>[
              TextFormField(
                //autofocus para causar o efeito de clique para exibir qual campo está ativo.
                //adcionei a definição de TEXT no keyboard para o dispositivo trazer o tipo de caractere exigito para usuário e senha.
                autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.white, fontSize: 10),
                decoration: InputDecoration(
                    labelText: "Login",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              //Aqui coloquei o Divider para separar um pouco mais os campos.
              Divider(),
              TextFormField(
                autofocus: true,
                //Obscure Text para esconder os caracteres de Digitação de senha.
                obscureText: true,
                keyboardType: TextInputType.number,
                style: new TextStyle(color: Colors.white, fontSize: 10),
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              Divider(),
              Divider(),
              //Aqui defini o Botão com a altura fixada em 60.00 já que a largura está Stretch.
              ButtonTheme(
                height: 60.0,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () => {},
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.green),
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}