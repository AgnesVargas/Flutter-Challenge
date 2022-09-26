String carteira = 'Carteira';
String valor = 'R\$ 1.000,00';
String rendimento = '+R\$ 100,00';
String cdi = '(100% do CDI)';
String eth = 'ETH';
String etherium = 'Etherium';
String valorEth = 'R\$0,00';
double variacaoDiaEth = 75;
String btc = 'BTC';
String bitcoin = 'Bitcoin';
String valorBtc = 'R\$1.000,00';
double variacaoDiaBtc = 75;
String ltc = 'LTC';
String litecoin = 'Litecoin';
String valLtc = 'R\$0,00';
double variacaoDiaLtc = -0.7;
String mascaraValores = '__________';
bool alterarValor = true;

ocultarValor() {
  if (alterarValor == true) {
    return valor;
  } else {
    return mascaraValores;
  }
}
