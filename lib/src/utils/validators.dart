class Validators {
  static String? isEmptyValue(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'Campo obligatorio';
    } else {
      return null;
    }
  }

  static String? isValidCheckBox(bool? value) {
    if (value == false) {
      return 'Campo obligatorio';
    } else {
      return null;
    }
  }

  static String? isValidPhone(String? value) {
    RegExp regExpNumber = RegExp(r'^(?=.*?[0-9])');
    if (isEmptyValue(value) != null) return 'Campo obligatorio';
    if (value!.length != 10) return 'Numero de telefono invalido';
    if (value[0] != '3') return 'Debe ser un numero movil de CO';
    if (!regExpNumber.hasMatch(value)) return 'Solo son permitidos numeros';
    return null;
  }

  static String? isValidEmail(String? value) {
    if (isEmptyValue(value) != null) {
      return 'Campo obligatorio';
    }
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);

    return regExp.hasMatch(value ?? '') ? null : 'Correo invalido';
  }

  static String? confirmedPassword(
      {required String? value, required String? password}) {
    if (value != password) return 'Las contraseñas son diferentes';
    return null;
  }

  static String? isValidPassword(String? value) {
    RegExp regExpEspecialCaracter = RegExp(r'^(?=.*?[!@#\$&*~?,¿¡_-])');
    RegExp regExpUpperCase = RegExp(r'^(?=.*?[A-Z])');
    RegExp regExpNumber = RegExp(r'^(?=.*?[0-9])');
    if (isEmptyValue(value) != null) {
      return 'Por favor ingrese una contraseña';
    }
    if (value!.length < 8) return 'Debe tener al menos 8 caracteres';
    if (!regExpNumber.hasMatch(value)) return 'Debe tener al menos un número';
    if (!regExpEspecialCaracter.hasMatch(value)) {
      return 'Debe tener al menos un caracter especial';
    }
    if (!regExpUpperCase.hasMatch(value)) {
      return 'Debe tener al menos una mayúscula';
    }
    return null;
  }
}