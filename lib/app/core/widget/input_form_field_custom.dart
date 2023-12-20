import 'package:flutter/material.dart';
import 'package:job_timercs/app/core/constansts.dart';
import 'package:job_timercs/app/core/helpers/form_helpers_focus.dart';

class InputFormFieldCustom extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  final bool readOnly;
  final FloatingLabelBehavior floatingLabelBehavior;
  final void Function()? onTap;
  final TextInputType? keyboardType;
  const InputFormFieldCustom({
    Key? key,
    this.labelText,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
    this.readOnly = false,
    this.floatingLabelBehavior = FloatingLabelBehavior.auto,
    this.onTap,
    this.hintText,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: keyboardType,
          readOnly: readOnly,
          onTapOutside: (_) => context.unFocus(),
          style: const TextStyle(color: Colors.black),
          controller: controller,
          validator: validator,
          obscureText: obscureText,
          decoration: InputDecoration(
            labelText: labelText,
            floatingLabelStyle: TextStyle(
              fontSize: 18,
              color: ColorsThemes.brow,
              fontWeight: FontWeight.w500,
            ),
            suffixIcon: suffixIcon,
            floatingLabelBehavior: floatingLabelBehavior,
          ),
          onTap: onTap,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
