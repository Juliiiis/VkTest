import 'package:flutter/material.dart';

class FormWidgetLogin extends StatefulWidget {
  const FormWidgetLogin({super.key});

  @override
  State<FormWidgetLogin> createState() => _FormWidgetLoginState();
}

class _FormWidgetLoginState extends State<FormWidgetLogin> {
  final _loginTextController = TextEditingController(text: 'admin');
  String? errorText;

  void _auth() {
    final login = _loginTextController.text;
    if (login == 'admin') {
      errorText = null;

      Navigator.of(context).pushNamed('/authPassword');
    } else {
      errorText = 'Неверный логин, проверьте правильность введенных данных';
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