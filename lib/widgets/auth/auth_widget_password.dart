import 'package:flutter/material.dart';

class AuthWidgetPassword extends StatefulWidget {
  const AuthWidgetPassword({super.key});

  @override
  State<AuthWidgetPassword> createState() => _AuthWidgetPasswordState();
}

class _AuthWidgetPasswordState extends State<AuthWidgetPassword> {
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
            _HeaderWidgetLogin(),
          ],
        )
    );
  }
}
class _HeaderWidgetLogin extends StatelessWidget {
  const _HeaderWidgetLogin();

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
            'Введите пароль',
            style: TextStyle(
                fontSize: 25,
                color: Colors.black
            ),
          ),
          SizedBox(height: 10),
          Text('Укажите пароль, привязанный к почте',
            style: textStyle,
          ),
          Text('admin',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16
            ),
          ),
          SizedBox(height: 20),
          _FormWidgetPassword(),
        ],
      ),
    );
  }
}
class _FormWidgetPassword extends StatefulWidget {
  const _FormWidgetPassword();

  @override
  State<_FormWidgetPassword> createState() => _FormWidgetPasswordState();
}

class _FormWidgetPasswordState extends State<_FormWidgetPassword> {
  final _passwordTextController = TextEditingController();
  String? errorText;

  void _auth(){
    final password = _passwordTextController.text;
    if(password == 'admin'){
      errorText = null;

      Navigator.of(context).pushNamed('/main_screen');

    } else {
      errorText = 'Неверный пароль, проверьте правильность введенных данных';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _passwordTextController,
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
                hintText: 'Введите пароль',
                hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0
                )
            ),
            obscureText: true,
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
          const SizedBox(height: 10),
          const Text(
            'Забыли или не установили пароль?',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 15),
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
        ],
      ),
    );
  }
}
