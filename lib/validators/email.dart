String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Пожалуйста, введите электронную почту';
  }

  // Регулярное выражение для проверки формата email
  final RegExp emailRegExp = RegExp(
    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
  );

  // Проверка на соответствие регулярному выражению
  if (!emailRegExp.hasMatch(value)) {
    return 'Неверный формат электронной почты';
  }

  // Проверка на наличие нежелательных символов и эмодзи
  final RegExp unwantedCharsRegExp = RegExp(r'[^\x20-\x7E]');
  if (unwantedCharsRegExp.hasMatch(value)) {
    return 'Электронная почта не должна содержать эмодзи или специальных символов';
  }

  return null;
}
