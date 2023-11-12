import 'package:flutter/material.dart';

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({Key? key}) : super(key: key);

  @override
  _CurrencyPageState createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  String _moneda = 'Euro';
  double _precioCompraEuro = 25.2993;
  double _precioVentaEuro = 28.4024;
  double _precioCompraDolar = 24.6822;
  double _precioVentaDolar = 24.8056;
  TextEditingController _cantidadController = TextEditingController();
  double _resultado = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambio de Monedas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<String>(
              value: _moneda,
              items: ['Euro', 'Dolar'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _moneda = newValue ?? 'Euro';
                  _actualizarPrecios();
                });
              },
            ),
            SizedBox(height: 16.0),
            Text('Precios de Compra/Venta:'),
            Text('Euro - Compra: $_precioCompraEuro, Venta: $_precioVentaEuro'),
            Text(
                'Dolar - Compra: $_precioCompraDolar, Venta: $_precioVentaDolar'),
            SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              height: 150.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _cantidadController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Cantidad a cambiar',
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _calcularCambio();
                });
              },
              child: Text('Calcular Cambio'),
            ),
            SizedBox(height: 16.0),
            Text('Resultado: $_resultado'),
          ],
        ),
      ),
    );
  }

  void _actualizarPrecios() {
    if (_moneda == 'Euro') {
      _precioCompraEuro = 25.2993;
      _precioVentaEuro = 28.4024;
    } else if (_moneda == 'Dolar') {
      _precioCompraDolar = 24.6822;
      _precioVentaDolar = 24.8056;
    }
  }

  void _calcularCambio() {
    double cantidad = double.tryParse(_cantidadController.text) ?? 0.0;

    if (_moneda == 'Euro') {
      _resultado = cantidad * _precioCompraEuro;
    } else if (_moneda == 'Dolar') {
      _resultado = cantidad * _precioCompraDolar;
    }
  }
}
