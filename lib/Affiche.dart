import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  TextEditingController _textEditingController = TextEditingController();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/images/logserv.png',
          width: 180,
        ),
        actions: [
          Image.asset(
            'assets/images/butt.png',
          ),
          Image.asset(
            'assets/images/profile.png',
            width: 48,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bonjour, Ahmed',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter',
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: TextFormField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  labelText: 'Trouver plus de 100 services',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: double.infinity,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => {},
                    icon: Image.asset(
                      'assets/images/search.png',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: SizedBox(
                      width: 400, // Largeur du conteneur
                      child: Card(
                        elevation: 5,
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 100), // Padding ajouté uniquement sur le côté droit
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.blue.shade900,
                                    Colors.blue.shade900,
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Plombier à partir de 100 D',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue.shade700,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Rejoignez-nous pour profiter de notre service',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20, // Increased font size
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 11),
                                    ElevatedButton(
                                      onPressed: () {
                                        print('Rejoignez-nous pour profiter de notre service');
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                      child: Text('Contacter maintenant'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              bottom: 0,
                              child: Image.asset(
                                'assets/images/imagehome.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: SizedBox(
                      width: 400, // Largeur du deuxième conteneur
                      child: Card(
                        elevation: 5,
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 100), // Padding ajouté uniquement sur le côté droit
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.blue.shade900,
                                    Colors.blue.shade900,
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'blablabla ',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue.shade700,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'bbbbbryhaaaaaaab',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 20, // Increased font size
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 11),
                                    ElevatedButton(
                                      onPressed: () {
                                        print('blablaaa ');
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                      child: Text('Action'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              bottom: 0,
                              child: Image.asset(
                                'assets/images/imagehome.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 400),
          ],
        ),
      ),
    );
  }
}
