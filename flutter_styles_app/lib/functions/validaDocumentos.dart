///<<<<<<<<CPD>>>>>>>>
///
bool validarCPF(String cpf) {
  List<String> cpfInvalidos = [
    '11111111111',
    '22222222222',
    '33333333333',
    '44444444444',
    '55555555555',
    '66666666666',
    '77777777777',
    '88888888888',
    '99999999999'
  ];
  cpf = _removerMascaraCpf(cpf);
  if (cpf.length != 11) {
    return false;
  } else if (cpfInvalidos.contains(cpf)) {
    return false;
  } else {
    String firstDV = _gerarPrimeiroDigitoVerificadorCPF(cpf);
    String secondDV = _gerarSegundoDigitoVerificadorCPF(cpf, int.parse(firstDV));

    if (firstDV == cpf[9] && secondDV == cpf[10]) {
      return true;
    } else {
      return false;
    }
  }
}

String _removerMascaraCpf(String cpf) {
  return cpf.replaceAll('.', "").replaceAll("-", "");
}

String _gerarPrimeiroDigitoVerificadorCPF(String cpf) {
  int somaDigitos = 0;
  for (int i = 0; i < 9; i++) {

    somaDigitos += int.parse(cpf[i]) * (10 - i);
  }


  int resto = (somaDigitos * 10)%11;


  if (resto == 10) {
    return '0';
  } else {
    return resto.toString();
  }
}

String _gerarSegundoDigitoVerificadorCPF(String cpf, int firstDV) {
  int somaDigitos = 0;
  for (int i = 0; i < 9; i++) {
    somaDigitos += int.parse(cpf[i]) * (11 - i);
  }
  somaDigitos += firstDV * 2;

  int resto = (somaDigitos * 10)%11;

  if (resto == 10) {
    return '0';
  } else {
    return resto.toString();
  }
}

