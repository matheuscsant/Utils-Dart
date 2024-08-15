/// ## Classe estática, utilizada para tratamento de dados.
class NumsUtils {
  /// Método para descontar uma porcentagem [porcent] de um valor [valor].
  ///
  /// Exemplo de utilização:
  ///   ```dart
  ///     double p = 10.00;
  ///     double valor = 100.00;
  ///     NumsUtils.descontarPorcentagem(valor, p) // 90.00
  ///   ```
  static double descontarPorcentagem(double valor, double porcent) {
    return valor * ((100.0 - porcent) / 100.0);
  }
}
