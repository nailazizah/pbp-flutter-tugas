import 'package:counter_7/page/form.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/budget.dart';
import 'package:counter_7/page/fetch_watchlist.dart';
import 'package:counter_7/page/watchlist_detail_page.dart';
import 'package:flutter/material.dart';


class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({super.key});

  @override
  State<MyWatchlistPage> createState() => _MyWatchlistPageState();
}


class _MyWatchlistPageState extends State<MyWatchlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),),
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );},),

              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                  );},),

              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyBudgetPage()),
                  );},),

              ListTile(
                title: const Text('My Watchlist'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
                  );},),
            ],),),

        body: FutureBuilder(
            future: fetchWatchlist(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Watch List Kosong :(",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20),
                      ),
                      SizedBox(height: 8)],);}

                else {
                  return ListView.separated(
                      padding: const EdgeInsets.all(20.0),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, id){

                        return ListTile(
                          tileColor: const Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Color.fromARGB(255, 218, 218, 218),),
                            borderRadius: BorderRadius.circular(10.0),),

                          title: Text(
                            snapshot.data![id].fields.title,
                            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,),),

                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) =>  MyWatchlistDetailPage(
                                  title: snapshot.data![id].fields.title,
                                  watched: snapshot.data![id].fields.watched,
                                  rating: snapshot.data![id].fields.rating,
                                  releaseDate: snapshot.data![id].fields.releaseDate,
                                  review: snapshot.data![id].fields.review,
                                )));},
                        );},

                      separatorBuilder: (context, id) => const SizedBox(
                          height: 10));}
              }}
        ));
  }}