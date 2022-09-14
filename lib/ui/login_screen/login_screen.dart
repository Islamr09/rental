import 'package:flutter/material.dart';
import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';
import '../products_screen/widgets/products_list_screen.dart';
import 'widgets/login_text_field.dart';
import 'widgets/password_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  String? login;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: TextButton(
                        style: AppStyles.text1,
                        child: const Text(
                          'Войти',
                          style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      child: TextButton(
                        style: AppStyles.text1,
                        child: const Text('Создать аккаунт',
                            style: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.underline,
                            )),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Телефон',
                        style: AppStyles.s14w400.copyWith(
                          height: 2.0,
                          leadingDistribution: TextLeadingDistribution.even,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      LoginTextField(
                        onSaved: (login) {
                          this.login = login;
                        },
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Пароль',
                        style: AppStyles.s14w400.copyWith(
                          height: 2.0,
                          leadingDistribution: TextLeadingDistribution.even,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      PasswordTextField(
                        onSaved: (value) {
                          password = value;
                        },
                      ),
                      const SizedBox(height: 24.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: AppStyles.elevated1,
                              child: const Text('Продолжить'),
                              onPressed: () {
                                final isValidated =
                                    formKey.currentState?.validate() ?? false;
                                if (isValidated) {
                                  FocusScope.of(context).unfocus();
                                  formKey.currentState?.save();
                                  if (login == '1' && password == '1') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductsListScreen(),
                                      ),
                                    );
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const AlertDialog(
                                          title: Text('Ошибка'),
                                          content: Text(
                                            'Неверный логин или пароль',
                                          ),
                                        );
                                      },
                                    );
                                  }
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
