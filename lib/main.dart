import 'package:flutter/material.dart';
import 'package:tubes_mobile2_nadh/mainscreen.dart';
import 'package:tubes_mobile2_nadh/data/datasource/remote_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tubes_mobile2_nadh/pages/bloc/item_bloc.dart';
import 'package:tubes_mobile2_nadh/pages/list_alat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemBloc>(
          create: (_) => ItemBloc(remoteDataSource: RemoteDataSource()),
        ),
        // Tambahkan BlocProvider lain jika diperlukan
      ],
      child: MaterialApp(
        title: 'MYHOME',
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 58, 179, 183),
          primarySwatch: Colors.green,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color.fromARGB(255, 58, 179, 183),
            secondary: Color.fromARGB(255, 58, 179, 183),
            background: Color(0xFFFFFFFF),
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onBackground: Color.fromARGB(255, 96, 87, 87),
          ),
          useMaterial3: true,
        ),
        home: const MainScreen(),
      ),
    );
  }
}

// Tidak perlu mengubah bagian ini
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tubes_mobile2_nadh/mainscreen.dart';
import 'package:tubes_mobile2_nadh/data/datasource/remote_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tubes_mobile2_nadh/pages/bloc/item_bloc.dart';
import 'package:tubes_mobile2_nadh/pages/list_alat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemBloc>(
          create: (_) => ItemBloc(remoteDataSource: RemoteDataSource()),
        ),
        // Tambahkan BlocProvider lain jika diperlukan
      ],
      child: MaterialApp(
        title: 'MYHOME',
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 58, 179, 183),
          primarySwatch: Colors.green,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color.fromARGB(255, 58, 179, 183),
            secondary: Color.fromARGB(255, 58, 179, 183),
            background: Color(0xFFFFFFFF),
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onBackground: Color.fromARGB(255, 96, 87, 87),
          ),
          useMaterial3: true,
        ),
        home: const MainScreen(),
      ),
    );
  }
}

// Tidak perlu mengubah bagian ini
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

