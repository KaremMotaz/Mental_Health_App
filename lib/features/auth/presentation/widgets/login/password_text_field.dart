import 'package:flutter/material.dart';
import 'package:mental_health_app/core/helpers/validate_password.dart';
import 'package:mental_health_app/core/theming/app_colors.dart';
import 'package:mental_health_app/core/theming/app_styles.dart';
import 'package:mental_health_app/core/widgets/app_text_form_field.dart';


class PasswordTextField extends StatefulWidget {
  final TextEditingController passwordController;

  const PasswordTextField({super.key, required this.passwordController});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 3, left: 10),
          child: Text("Password", style: AppStyles.medium15),
        ),
        AppTextFormField(
          hintText: "Enter Your Password",
          isObscureText: isPasswordObscureText,
          controller: widget.passwordController,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isPasswordObscureText = !isPasswordObscureText;
              });
            },
            icon: Icon(
              isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              color: AppColors.brandGreen,
            ),
          ),
          validator: validatePassword,
        ),
      ],
    );
  }
}
