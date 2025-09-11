import 'package:flutter/material.dart';
import 'package:tete/questionario.dart';
import 'package:tete/resultado.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  int perguntaSelecionada = 0;
  final List<Map<String, Object>> perguntas = const [
    {
      "texto": "questao 1",
      "resposta": ["preto", "vermelho", "verde", "azul"],
    },
    {
      "texto": "questao 2",
      "resposta": ["preto", "vermelho", "verde", "azul"],
    },
    {
      "texto": "questao 3",
      "resposta": ["preto", "vermelho", "verde", "azul"],
    },
    {
      "texto": "questao 4",
      "resposta": ["preto", "vermelho", "verde", "azul"],
    },
  ];
  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("data")),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: perguntas,
                perguntaSelecionada: perguntaSelecionada,
                responder: responder,
              )
            : Resultado("Parabens"),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
