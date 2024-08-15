import 'package:flutter/material.dart';

/// Classe de componentes que são utilizados frequentemente.
class ComponentsUtils {
  /// Método que recebe um BuildContext [context] para construir uma snackBar, avisando
  /// que o dispositivo está sem conexão com a internet.
  static showSnackBarNoConnection(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.none,
        showCloseIcon: true,
        closeIconColor: Theme.of(context).colorScheme == darkColorScheme
            ? Colors.black
            : Colors.white,
        content: Row(
          children: [
            Icon(
              Icons.signal_wifi_connected_no_internet_4_sharp,
              color: Theme.of(context).colorScheme == darkColorScheme
                  ? Colors.black
                  : Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Sem conexão com a internet",
            ),
          ],
        ),
      ),
    );
  }

  /// Método que recebe um BuildContext [context] para construir uma snackBar, avisando
  /// que o pedido já está sincronizado.
  static showSnackBarPedidoSincronizado(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.none,
        showCloseIcon: true,
        closeIconColor: Theme.of(context).colorScheme == darkColorScheme
            ? Colors.black
            : Colors.white,
        content: Row(
          children: [
            Icon(
              Icons.info_outline,
              color: Theme.of(context).colorScheme == darkColorScheme
                  ? Colors.black
                  : Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Pedido já sincronizado",
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }

  /// Método que recebe um BuildContext [context] e uma String [warningText] para
  /// construir uma snackBar, de aviso, o [warningText] será o conteúdo da snackBar.
  static showSnackBarWarning(BuildContext context, String warningText) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.none,
        showCloseIcon: true,
        closeIconColor: Theme.of(context).colorScheme == darkColorScheme
            ? Colors.black
            : Colors.white,
        content: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.info_outline,
              color: Theme.of(context).colorScheme == darkColorScheme
                  ? Colors.black
                  : Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Text(
                warningText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Método que recebe um BuildContext [context] e uma String [warningText] para
  /// construir uma snackBar, de aviso, o [warningText] será o conteúdo da snackBar.
  static showSnackBarWarningInfinityDuration(
      BuildContext context, String warningText) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(days: 365),
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.none,
        showCloseIcon: true,
        closeIconColor: Theme.of(context).colorScheme == darkColorScheme
            ? Colors.black
            : Colors.white,
        content: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.info_outline,
              color: Theme.of(context).colorScheme == darkColorScheme
                  ? Colors.black
                  : Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Text(
                warningText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Método que recebe um BuildContext [context] e uma String [context], para construir
  /// uma snackbar com uma ação para abrir um Dialog, [content] será o conteúdo da Dialog.
  static showSnackBarWithDialog(BuildContext context, String content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.none,
        showCloseIcon: true,
        closeIconColor: Theme.of(context).colorScheme == darkColorScheme
            ? Colors.black
            : Colors.white,
        action: SnackBarAction(
          textColor: Theme.of(context).colorScheme == darkColorScheme
              ? Colors.black
              : Colors.white,
          label: "ABRIR",
          onPressed: () => showDialogWithSingleChildScroll(
              "Lembrete e/ou observação", content, context),
        ),
        content: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.info_outline,
              color: Theme.of(context).colorScheme == darkColorScheme
                  ? Colors.black
                  : Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            const Flexible(
              child: Text(
                "Este cliente possui lembrete e/ou observação",
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Método que recebe um BuildContext [context] para construir uma snackBar,
  /// avisando que o pedido foi atualizado.
  static showSnackPedidoAtualizado(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.none,
        showCloseIcon: true,
        closeIconColor: Theme.of(context).colorScheme == darkColorScheme
            ? Colors.black
            : Colors.white,
        content: Row(
          children: [
            Icon(
              Icons.edit_document,
              color: Theme.of(context).colorScheme == darkColorScheme
                  ? Colors.black
                  : Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Pedido atualizado com sucesso",
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }

  /// Método que recebe um BuildContext [context] para construir uma snackBar,
  /// avisando que algum processo deu certo.
  static showSnackSuccess(String content, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.none,
        showCloseIcon: true,
        closeIconColor: Theme.of(context).colorScheme == darkColorScheme
            ? Colors.black
            : Colors.white,
        content: Row(
          children: [
            Icon(
              Icons.check,
              color: Theme.of(context).colorScheme == darkColorScheme
                  ? Colors.black
                  : Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Text(
                content,
                maxLines: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Método que recebe um BuildContext [context] para construir uma snackBar,
  /// avisando que ocorreu uma falha ao inserir/atualizar o pedido.
  static showSnackPedidoFalha(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.none,
        showCloseIcon: true,
        closeIconColor: Theme.of(context).colorScheme == darkColorScheme
            ? Colors.black
            : Colors.white,
        content: Row(
          children: [
            Icon(
              Icons.info_outline,
              color: Theme.of(context).colorScheme == darkColorScheme
                  ? Colors.black
                  : Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            const Flexible(
              child: Text(
                "Falha ao inserir/atualizar o pedido",
                maxLines: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Método que recebe um BuildContext [context] para construir uma snackBar,
  /// avisando que algum processo falhou.
  static showSnackFailed(String content, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.none,
        showCloseIcon: true,
        closeIconColor: Theme.of(context).colorScheme == darkColorScheme
            ? Colors.black
            : Colors.white,
        content: Row(
          children: [
            Icon(
              Icons.info_outline,
              color: Theme.of(context).colorScheme == darkColorScheme
                  ? Colors.black
                  : Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Text(
                content,
                maxLines: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Método que recebe um BuildContext [context] para construir uma snackBar,
  /// avisando que ocorreu uma falha de TimeOut em alguma requisição.
  static showSnackBarTimeout(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.none,
        showCloseIcon: true,
        closeIconColor: Theme.of(context).colorScheme == darkColorScheme
            ? Colors.black
            : Colors.white,
        content: Row(
          children: [
            Icon(
              Icons.warning_amber,
              color: Theme.of(context).colorScheme == darkColorScheme
                  ? darkColorScheme.error
                  : lightColorScheme.error,
            ),
            const SizedBox(
              width: 10,
            ),
            const Flexible(
              child: Text(
                "Tempo da solicitação excedido",
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Método que recebe uma String [text] e um BuildContext [context] para construir
  /// um Dialog de loading, o [text] será o texto que vai aparecer ao lado do loading.
  static showDialogLoading(String text, BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => PopScope(
        canPop: false,
        child: AlertDialog(
          content: Row(
            children: [
              const CircularProgressIndicator(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    text,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Método que recebe duas Strings [title] e [content] e um BuildContext [context],
  /// para construir uma Dialog de confirmação de ação. Pode-se utilizar o await, pois
  /// está dialog sempre voltará um bool de qual opção foi escolhida.
  ///
  /// [title] Será o título da Dialog
  /// [content] Será o conteúdo da Dialog
  static Future<bool> showDialogConfirm(
      String title, String content, BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text("Cancelar"),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text("Confirmar"),
          )
        ],
        content: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              content,
            ),
          ),
        ),
      ),
    );
  }

  /// Método que recebe duas Strings [title] e [content] e um BuildContext [context],
  /// para construir uma Dialog com um SingleChildScroll para permitir grandes quantidades
  /// de textos.
  ///
  /// [title] Será o título da Dialog
  /// [content] Será o conteúdo da Dialog
  static showDialogWithSingleChildScroll(
      String title, String content, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              content,
            ),
          ),
        ),
      ),
    );
  }
}
