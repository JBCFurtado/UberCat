part of 'chat.dart';

Widget widgetEnviar() {
  final _controll = TextEditingController();
  return Container(
    padding: EdgeInsets.all(20),
    color: Colors.yellow[600], // Borda da caixa de mensagem
    child: Row(
      children: [
        Expanded(
            child: TextField(
          onSubmitted: (text) {
            if (text.isNotEmpty) {
              _controll.clear();
            }
          },
          controller: _controll,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(15),
            fillColor: Colors.white,
            filled: true,
            hintText: 'Envie sua mensagem',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(70),
              borderSide: BorderSide.none,
            ),
          ),
        )),
        IconButton(
          icon: Icon(Icons.send),
          color: Colors.cyan[800],
          onPressed: () {
            if (_controll.text.isNotEmpty) {
              _controll.clear();
            }
          },
        ),
      ],
    ),
  );
}
