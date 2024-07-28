import 'package:flutter/material.dart';

class FormWidgetPassword extends StatefulWidget {
  const FormWidgetPassword({super.key});

  @override
  State<FormWidgetPassword> createState() => _FormWidgetPasswordState();
}

class _FormWidgetPasswordState extends State<FormWidgetPassword> {

  final _passwordTextController = TextEditingController(text: 'admin');

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

  String? errorText;
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
                backgroundColor: WidgetStateProperty.all(Colors.blue.shade400),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                fixedSize: WidgetStateProperty.all(const Size(446, 50)),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ))),
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
