import 'package:app_fastfood/src/core/constant/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomFormField extends StatelessWidget {
  final String name;
  final String? label;
  final Color? customColor;
  final InputBorder? enable;
  final InputBorder? focus;
  final AutovalidateMode? mode;
  final List<String? Function(String?)>? validators;

  const CustomFormField({
    super.key,
    required this.name,
    this.label,
    this.customColor,
    this.enable,
    this.focus,
    this.mode,
    this.validators,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      autovalidateMode: mode,
      validator: FormBuilderValidators.compose(validators ?? [FormBuilderValidators.required()]),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: customColor ?? AppColors.black),
        enabledBorder: enable,
        focusedBorder: focus,
      ),
    );
  }
}
