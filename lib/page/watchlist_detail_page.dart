import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/budget.dart';
import 'package:counter_7/page/watchlist_page.dart';
import 'package:counter_7/page/fetch_watchlist.dart';
import 'dart:html';

class MyWatchlistDetailPage extends StatelessWidget {
  const MyWatchlistDetailPage({super.key,
    required this.title,
    required this.watched,
    required this.rating,
    required this.releaseDate,
    required this.review});

  final String title;
  final Watched watched;
  final int rating;
  final String releaseDate;
  final String review;

  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: const Text('Data Budget'),
  ),
  drawer: Drawer(
  child: Column(
  children: [
  // Menambahkan clickable menu
  ListTile(
  title: const Text('counter_7'),
  onTap: () {
  // Route menu ke halaman utama
  Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => const MyHomePage()),
  );
  },
  ),
  ListTile(
  title: const Text('Tambah Budget'),
  onTap: () {
  // Route menu ke halaman form
  Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => const MyFormPage()),
  );
  },
  ),
  ListTile(
  title: const Text('Data Budget'),
  onTap: () {
  // Route menu ke halaman budget
  Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => const MyBudgetPage()),
  );
  },
  ),
  ListTile(
    title: const Text('My Watchlist'),
    onTap: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
      );},),
  ],
  ),
  ),

    body: ListView(
      padding: const EdgeInsets.all(20.0),
      shrinkWrap: true,
      children: <Widget>[
        Center(
            child: Text('$title\n',
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 24))),

        Row(children: [
          const Text("Release Date: ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text(releaseDate,
              style: const TextStyle(fontSize: 18))
        ]),

        Row(children: [
          const Text("Rating: ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text("$rating/5",
              style: const TextStyle(fontSize: 18))
        ]),

        Row(children: [
          const Text("Status: ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),

          if (watched == Watched.NOT_WATCHED)... {
            const Text("Watched",
                style: TextStyle(fontSize: 18)),
          } else... {
            const Text("Not Yet",
                style: TextStyle(fontSize: 18)),
          }
        ]),

        const Text("Review: ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        Text(review, style: const TextStyle(fontSize: 18)),
      ],),

    bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 50,
          width: 10,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
            child: const Text(
              "Back",
              style: TextStyle(color: Colors.white),
            ),),)),

  );}}