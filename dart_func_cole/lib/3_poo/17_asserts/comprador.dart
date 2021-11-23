class Comprador {
  String? cpf;
  String? nome;
  String? razaoSocial;
  String? cnpj;

  Comprador({
    String? cpf,
    this.nome,
    this.razaoSocial,
    this.cnpj,
  })  : this.cpf = cpf, 
        assert(
            cpf != null
                ? nome != null && razaoSocial == null && cnpj == null
                : true,
            'Este comprador não é valido pois tem algo de empresa'),
        assert(
            cnpj != null
                ? razaoSocial != null && cpf == null && nome == null
                : true,
            'Este comprador não é valido pois tem algo de pessoa');
}
