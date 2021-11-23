import 'dart:convert';

class Cidade {
  String cep;
  String logradouro;
  String complemento;
  String bairro;
  String localidade;
  String uf;
  String ddd;
  
  Cidade({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });


  Cidade copyWith({
    String? cep,
    String? logradouro,
    String? complemento,
    String? bairro,
    String? localidade,
    String? uf,
    String? ddd,
  }) {
    return Cidade(
      cep: cep ?? this.cep,
      logradouro: logradouro ?? this.logradouro,
      complemento: complemento ?? this.complemento,
      bairro: bairro ?? this.bairro,
      localidade: localidade ?? this.localidade,
      uf: uf ?? this.uf,
      ddd: ddd ?? this.ddd,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ddd': ddd,
    };
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      complemento: map['complemento']??'',
      bairro: map['bairro'] ??'',
      localidade: map['localidade'] ??'',
      uf: map['uf'] ??'',
      ddd: map['ddd'] ??'',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cidade.fromJson(String source) => Cidade.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Cidade(cep: $cep, logradouro: $logradouro, complemento: $complemento, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Cidade &&
      other.cep == cep &&
      other.logradouro == logradouro &&
      other.complemento == complemento &&
      other.bairro == bairro &&
      other.localidade == localidade &&
      other.uf == uf &&
      other.ddd == ddd;
  }

  @override
  int get hashCode {
    return cep.hashCode ^
      logradouro.hashCode ^
      complemento.hashCode ^
      bairro.hashCode ^
      localidade.hashCode ^
      uf.hashCode ^
      ddd.hashCode;
  }
}


// {
//   "cep": "59158-150",
//   "logradouro": "Avenida das Américas",
//   "complemento": "",
//   "bairro": "Parque das Nações",
//   "localidade": "Parnamirim",
//   "uf": "RN",
//   "ibge": "2403251",
//   "gia": "",
//   "ddd": "84",
//   "siafi": "1779"

