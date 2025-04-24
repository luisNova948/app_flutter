import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card screen')),
      body: ListView(children: [_customcard()]),
    );
  }
}

class _customcard extends StatelessWidget {
  const _customcard({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).iconTheme.color;

    return Padding(
      padding: const EdgeInsets.only(top: 1),
      child: Card(
        child: Column(
          children: [
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              title: Text(
                "Nombre",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Puesto trabajo lorem ipsum dolor sit amet",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            //* otra parte
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'Aceptar',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'Cancelar',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
        color: primaryColor,
      ),
    );
  }
}