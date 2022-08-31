import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'Conversor de Temperatura Ambiente- Camila'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController temperaturacelsius = TextEditingController();
  String CalculoFinal = '';
  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(


            children: <Widget>[
              const SizedBox(height: 16),
              TextFormField(
                keyboardType: TextInputType.numberWithOptions(),
                controller: temperaturacelsius,
                decoration: InputDecoration(
                    hintText: 'Quantos Graus está fazendo? (digite em celcius)',
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))
                    )
                ),
              ),
              const SizedBox(height: 16),
              Text(Resultado, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      num aux = (num.parse(temperaturacelsius.text) + 273.15);

                      Resultado= aux.toStringAsFixed(2);
                    });
                  },

                  child: const Text('Converta para Kelvin', style: const TextStyle(fontSize: 18),)

              ),
              const SizedBox(height: 16),

              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      num aux =  (num.parse(celsius.text) * 1.8 +32);

                      Resultado= aux.toStringAsFixed(2);
                    });
                  },

                  child: const Text('Converta para Fahrenheit', style: const TextStyle(fontSize: 18),)

              ),
              const SizedBox(height: 16),

              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      num aux = (num.parse(celsius.text) * 4/5);

                      Resultado= aux.toStringAsFixed(2);
                    });
                  },

                  child: const Text('Converta para Reaumur', style: const TextStyle(fontSize: 18),)

              ),
              const SizedBox(height: 16),

              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      num aux = (num.parse(celsius.text)* 9/5 + 491.67);

                      Resultado= aux.toStringAsFixed(2);
                    });
                  },

                  child: const Text('Converta para Rankine', style: const TextStyle(fontSize: 18),)

              ),

            ],
          ),
        ),
      ),

    );
  }
}