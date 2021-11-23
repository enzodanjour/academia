
class Pessoa {
  String? nome;
  /**
  * Composicao
  * Quando um atributo de associação é obrigatório
  * isso é composição
  */
  Endereco endereco = Endereco();

  /**
   * Agregacao
   * Quando um atributo de associacao não é obrigatório
   * isso é agregacao
   */
  Telefone? telefone;
}
class Endereco{

}
class Telefone{}