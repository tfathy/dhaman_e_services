import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder:
              (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  backgroundColor: Color(0xff670D2F),
                  expandedHeight: 240,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      'Employee e-serivices',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    background: Image.network(
                      'https://www.dhaman.org/uploads/aboutcategory/carta1726139359.webp',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 240,
                    ),
                  ),
                  floating: true,
                  snap: true,
                  pinned: true,
                ),
              ],
          body: ListView.separated(
            itemBuilder:
                (context, index) => ListTile(
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Container(
                        width: 150,
                        height: 100,
                        decoration: BoxDecoration(color: Color(0xffFA812F),
                        borderRadius: BorderRadius.all(Radius.circular(20),
                        ),
                        ),
                        child: Center(
                          child: Text(
                            'Permission',
                            style: TextStyle(
                              color: Color(0xff670D2F),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: 150,
                        height: 100,
                        decoration: BoxDecoration(color: Color(0xffF3C623),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(child: Text('Sick leave',style: TextStyle(
                          color: Color(0xff670D2F),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),)),
                      ),
                    ],
                  ),
                ),
            separatorBuilder: (context, index) => const SizedBox(height: 3),
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}
