import 'package:flutter/material.dart';
import 'package:movieapp/presentation/widgets/button.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddAddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Enter a shipping address'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Enter a shipping address',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            'Add a new address',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          MyForm()
        ],
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  final form = FormGroup({
    'name': FormControl<String>(value: 'John Doe'),
    'email': FormControl<String>(),
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            aTextFormField(
              labelText: 'Full name (First and Last name)',
              errorText: 'Please enter valid full name',
            ),
            aTextFormField(
              labelText: 'Phone Number',
              errorText: 'Please enter valid phone number',
            ),
            aTextFormField(
              labelText: 'Address',
              errorText: 'Please enter valid address',
            ),
            aTextFormField(
              labelText: 'Apt, Suite, Unit, Building (Optional)',
              errorText: 'Please enter valid address',
            ),
            aTextFormField(
              labelText: 'City',
              errorText: 'Please enter valid city',
            ),
            aTextFormField(
              labelText: 'State',
              errorText: 'Please enter valid state',
            ),
            aTextFormField(
              labelText: 'Zip code',
              errorText: 'Please enter valid zip code',
            ),
            aTextFormField(
              labelText: 'Delivery instructions (optional)',
              errorText: 'Please enter valid zip code',
            ),
            Button(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing data')));
                }
              },
              text: 'submit',
            )
          ],
        ),
      ),
    );
  }
}

class aTextFormField extends StatelessWidget {
  aTextFormField({required this.labelText, required this.errorText});

  final String labelText;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      child: TextFormField(
        autofocus: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return errorText;
          }
          return null;
        },
      ),
    );
  }
}
