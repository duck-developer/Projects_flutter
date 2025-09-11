import 'package:flutter/material.dart';
import 'package:tete/questao.dart';
import 'package:tete/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]["resposta"] as List<String>
        : [];
    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]["texto"] as String),

        ...respostas.map((e) => Resposta(e, responder)).toList(),
      ],
    );
  }
}
