import 'package:flutter/material.dart';

class AuthWidgetLogin extends StatefulWidget {
  const AuthWidgetLogin({super.key});

  @override
  State<AuthWidgetLogin> createState() => _AuthWidgetLoginState();
}

class _AuthWidgetLoginState extends State<AuthWidgetLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Center(
                  child: Text(
                    'VK',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              const Text('ID'),
            ],
          ),
        ),
        body: ListView(
          children: const [
            _HeaderWidget(),
          ],
        )
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 16,
        color: Colors.grey
    );
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(
            'Вход ВКонтакте',
            style: TextStyle(
                fontSize: 25,
                color: Colors.black
            ),
          ),
          SizedBox(height: 10),
          Text('Введите телефон или почту, которые',
            style: textStyle,
          ),
          Text('привязаны к аккаунту',
            style: textStyle,
          ),
          SizedBox(height: 20),
          _FormWidgetLogin(),
        ],
      ),
    );
  }
}

class _FormWidgetLogin extends StatefulWidget {
  const _FormWidgetLogin();

  @override
  State<_FormWidgetLogin> createState() => _FormWidgetLoginState();
}

class _FormWidgetLoginState extends State<_FormWidgetLogin> {
  final _loginTextController = TextEditingController();
  String? errorText;

  void _auth(){
    final login = _loginTextController.text;
    if(login == 'admin'){
      errorText = null;

      Navigator.of(context).pushNamed('/authPassword');

    } else {
      errorText = 'Аккаунт не найден';
    }
    setState(() {});
  }

  bool? isChecked = false;
  String textFieldValue = '';

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: [
          TextField(
            controller: _loginTextController,
            onChanged: (value) {
              setState(() {
                textFieldValue = value;
              });
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                isCollapsed: true,
                hintText: 'Телефон или почта',
                hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0
                )
            ),
          ),
            if(errorText != null)...[
              const SizedBox(height: 20),
              Text(
                errorText,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 14,
              ),
            ),
              ],
            Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
                activeColor: Colors.blue,
                checkColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const Text(
                'Сохранить вход',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                fixedSize: MaterialStateProperty.all(const Size(400, 50)),
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )
                )
            ),
            onPressed: textFieldValue.isEmpty ? null : _auth,
            child: const Text(
              'Продолжить',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Нажимая "продолжить", вы принимаете пользовательское соглашение и политику конфиденциальности',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}


