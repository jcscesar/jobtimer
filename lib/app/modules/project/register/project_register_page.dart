import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:job_timercs/app/core/constansts.dart';
import 'package:job_timercs/app/core/widget/input_form_field_custom.dart';
import 'package:validatorless/validatorless.dart';

class ProjectRegisterPage extends StatefulWidget {
  const ProjectRegisterPage({Key? key}) : super(key: key);

  @override
  State<ProjectRegisterPage> createState() => _ProjectRegisterPageState();
}

class _ProjectRegisterPageState extends State<ProjectRegisterPage> {
  final _nameEC = TextEditingController();
  final _horasEC = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _nameEC.dispose();
    _horasEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Criar novo Projecto'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            height: MediaQuery.sizeOf(context).height * .4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              shape: BoxShape.rectangle,
            ),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    InputFormFieldCustom(
                      key: const Key('input_name_project'),
                      labelText: 'Nome do projeto',
                      controller: _nameEC,
                      validator: Validatorless.required('Nome obrigatorio'),
                      suffixIcon: Icon(
                        Icons.abc,
                        color: ColorsThemes.brow,
                      ),
                    ),
                    InputFormFieldCustom(
                      key: const Key('input_hours_project'),
                      labelText: 'Estimativa de horas',
                      controller: _horasEC,
                      suffixIcon: Icon(
                        Icons.hourglass_bottom_outlined,
                        color: ColorsThemes.brow,
                      ),
                      validator: Validatorless.multiple([
                        Validatorless.required('Nome obrigatorio'),
                        Validatorless.number('Somente números')
                      ]),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      height: 49,
                      child: ElevatedButton(
                        key: const Key('button_save_project'),
                        onPressed: () {
                          final validator =
                              _formKey.currentState?.validate() ?? false;
                          if (validator) {
                            AsukaSnackbar.success('Criado com sucesso').show();
                          }
                        },
                        child: Text(
                          'Salvar',
                          style: TextStyle(
                            color: ColorsThemes.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
