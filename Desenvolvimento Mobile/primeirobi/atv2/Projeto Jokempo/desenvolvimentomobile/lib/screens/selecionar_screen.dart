import 'package:flutter/material.dart';
import '../models/jokenpo_model.dart';
import 'resultado_screen.dart';

class SelecionarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text('Jokenpô'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Escolha sua jogada:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              _buildButton(context, 'Pedra', 'pedra'),
              SizedBox(height: 20),
              _buildButton(context, 'Papel', 'papel'),
              SizedBox(height: 20),
              _buildButton(context, 'Tesoura', 'tesoura'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String label, String escolha) {
    return ElevatedButton(
      onPressed: () {
        final resultado = Jokenpo.jogar(escolha);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ResultadoScreen(
              escolhaJogador: label,
              resultado: resultado,
            ),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        textStyle: TextStyle(fontSize: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(label),
    );
  }
}
