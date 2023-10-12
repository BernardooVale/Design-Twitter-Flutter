import 'package:flutter/material.dart';
import 'package:main/usuario.dart';

class editarSobre extends StatefulWidget {
  const editarSobre({Key? key}) : super(key: key);

  @override
  State<editarSobre> createState() => _editarSobreState();
}

class _editarSobreState extends State<editarSobre> {
  @override
  Widget build(BuildContext context) {

    TimeOfDay horario_abre = TimeOfDay(hour: 9, minute: 00);
    TimeOfDay horario_fecha = TimeOfDay(hour: 17, minute: 00);
    Size tamanho = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Usuario()));
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.blue,
          ),
        ),
        title: Text(
          "Editar sobre",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                "Salvar",
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: tamanho.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Horário de atendimento",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        Container(
                          width: tamanho.width * 0.39,
                          height: tamanho.height * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 1
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  "Segunda-feira",
                                  style: TextStyle(color: Colors.black,fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: InkWell(
                            onTap: () async {
                              TimeOfDay? novo_horario = await showTimePicker(
                                  context: context, initialTime: horario_abre
                              );
                              if(novo_horario == null){
                                return;
                              }
                              setState(() {
                                horario_abre = novo_horario;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '${horario_abre.hour.toString().padLeft(2, '0')}:${horario_abre.minute.toString().padLeft(2, '0')}',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: Transform.rotate(
                                      angle: -90 * 3.14 / 180,
                                      child: Icon(
                                        Icons.arrow_back_ios_rounded,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                              "às"
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            TimeOfDay? novo_horario = await showTimePicker(
                                context: context,
                                initialTime: horario_fecha
                            );
                            if(novo_horario == null){
                              return;
                            }
                            setState(() {
                              horario_fecha = novo_horario;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '${horario_fecha.hour.toString().padLeft(2, '0')}:${horario_fecha.minute.toString().padLeft(2, '0')}',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Container(
                          width: tamanho.width * 0.39,
                          height: tamanho.height * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 1
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  "Terça-feira",
                                  style: TextStyle(color: Colors.black,fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: InkWell(
                            onTap: () async {
                              TimeOfDay? novo_horario = await showTimePicker(
                                  context: context, initialTime: horario_abre
                              );
                              if(novo_horario == null){
                                return;
                              }
                              setState(() {
                                horario_abre = novo_horario;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '${horario_abre.hour.toString().padLeft(2, '0')}:${horario_abre.minute.toString().padLeft(2, '0')}',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: Transform.rotate(
                                      angle: -90 * 3.14 / 180,
                                      child: Icon(
                                        Icons.arrow_back_ios_rounded,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                              "às"
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            TimeOfDay? novo_horario = await showTimePicker(
                                context: context,
                                initialTime: horario_fecha
                            );
                            if(novo_horario == null){
                              return;
                            }
                            setState(() {
                              horario_fecha = novo_horario;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '${horario_fecha.hour.toString().padLeft(2, '0')}:${horario_fecha.minute.toString().padLeft(2, '0')}',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Container(
                          width: tamanho.width * 0.39,
                          height: tamanho.height * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 1
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  "Quarta-feira",
                                  style: TextStyle(color: Colors.black,fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: InkWell(
                            onTap: () async {
                              TimeOfDay? novo_horario = await showTimePicker(
                                  context: context, initialTime: horario_abre
                              );
                              if(novo_horario == null){
                                return;
                              }
                              setState(() {
                                horario_abre = novo_horario;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '${horario_abre.hour.toString().padLeft(2, '0')}:${horario_abre.minute.toString().padLeft(2, '0')}',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: Transform.rotate(
                                      angle: -90 * 3.14 / 180,
                                      child: Icon(
                                        Icons.arrow_back_ios_rounded,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                              "às"
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            TimeOfDay? novo_horario = await showTimePicker(
                                context: context,
                                initialTime: horario_fecha
                            );
                            if(novo_horario == null){
                              return;
                            }
                            setState(() {
                              horario_fecha = novo_horario;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '${horario_fecha.hour.toString().padLeft(2, '0')}:${horario_fecha.minute.toString().padLeft(2, '0')}',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Container(
                          width: tamanho.width * 0.39,
                          height: tamanho.height * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 1
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  "Quinta-feira",
                                  style: TextStyle(color: Colors.black,fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: InkWell(
                            onTap: () async {
                              TimeOfDay? novo_horario = await showTimePicker(
                                  context: context, initialTime: horario_abre
                              );
                              if(novo_horario == null){
                                return;
                              }
                              setState(() {
                                horario_abre = novo_horario;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '${horario_abre.hour.toString().padLeft(2, '0')}:${horario_abre.minute.toString().padLeft(2, '0')}',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: Transform.rotate(
                                      angle: -90 * 3.14 / 180,
                                      child: Icon(
                                        Icons.arrow_back_ios_rounded,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                              "às"
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            TimeOfDay? novo_horario = await showTimePicker(
                                context: context,
                                initialTime: horario_fecha
                            );
                            if(novo_horario == null){
                              return;
                            }
                            setState(() {
                              horario_fecha = novo_horario;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '${horario_fecha.hour.toString().padLeft(2, '0')}:${horario_fecha.minute.toString().padLeft(2, '0')}',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Container(
                          width: tamanho.width * 0.39,
                          height: tamanho.height * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 1
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  "Sexta-feira",
                                  style: TextStyle(color: Colors.black,fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: InkWell(
                            onTap: () async {
                              TimeOfDay? novo_horario = await showTimePicker(
                                  context: context, initialTime: horario_abre
                              );
                              if(novo_horario == null){
                                return;
                              }
                              setState(() {
                                horario_abre = novo_horario;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '${horario_abre.hour.toString().padLeft(2, '0')}:${horario_abre.minute.toString().padLeft(2, '0')}',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: Transform.rotate(
                                      angle: -90 * 3.14 / 180,
                                      child: Icon(
                                        Icons.arrow_back_ios_rounded,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                              "às"
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            TimeOfDay? novo_horario = await showTimePicker(
                                context: context,
                                initialTime: horario_fecha
                            );
                            if(novo_horario == null){
                              return;
                            }
                            setState(() {
                              horario_fecha = novo_horario;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '${horario_fecha.hour.toString().padLeft(2, '0')}:${horario_fecha.minute.toString().padLeft(2, '0')}',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Container(
                          width: tamanho.width * 0.39,
                          height: tamanho.height * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 1
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  "Sábado",
                                  style: TextStyle(color: Colors.black,fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Container(
                            height: tamanho.height * 0.05,
                            width: tamanho.width *0.49,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    'Fechado',
                                  ),
                                ),
                                Expanded(child: Container()),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Container(
                          width: tamanho.width * 0.39,
                          height: tamanho.height * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 1
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Text(
                                  "Domingo",
                                  style: TextStyle(color: Colors.black,fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Container(
                            height: tamanho.height * 0.05,
                            width: tamanho.width *0.49,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Fechado',
                                  ),
                                ),
                                Expanded(child: Container()),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Container(
                      width: tamanho.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Edifícios",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              "Adicionar",
                              style: TextStyle(color:  Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: tamanho.width * 0.95,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage('https://www.minasgerais.com.br/imagens/atracoes/1503600216YvwwE5iHPo.jpg'),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                          child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Container(
                                  width: tamanho.width *0.7,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:[
                                          Row(
                                            children: [
                                              Text(
                                                "Edifício Sul",
                                                style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                                              ),
                                              Padding(padding: EdgeInsets.only(left: 6)),
                                              Icon(
                                                Icons.verified_rounded,
                                                color: Colors.deepPurpleAccent,
                                                size: 15,
                                              ),
                                            ],
                                          ),
                                          Transform.rotate(
                                            angle: -90 * 3.14 / 180,
                                            child: Icon(
                                              Icons.arrow_back_ios_rounded,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20.0),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Administrador",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 4.0),
                                                child: Container(
                                                  height: tamanho.height * 0.05,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.grey,
                                                      width: 1,
                                                    ),
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 4.0),
                                                        child: Text(
                                                          '@felipeluizz_',
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(horizontal: 5),
                                                        child: Icon(
                                                          Icons.mode_edit_rounded,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          )
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:16),
                    child: Container(
                    width: tamanho.width * 0.95,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage('https://imgsapp.em.com.br/app/noticia_127983242361/2020/03/04/1125929/20200304143241762963e.jpg'),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                          child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Container(
                                  width: tamanho.width *0.7,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:[
                                          Row(
                                            children: [
                                              Text(
                                                "Edifício Norte",
                                                style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                                              ),
                                              Padding(padding: EdgeInsets.only(left: 6)),
                                              Icon(
                                                Icons.verified_rounded,
                                                color: Colors.deepPurpleAccent,
                                                size: 15,
                                              ),
                                            ],
                                          ),
                                          Transform.rotate(
                                            angle: -90 * 3.14 / 180,
                                            child: Icon(
                                              Icons.arrow_back_ios_rounded,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20.0),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Administrador",
                                                style: TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 4.0),
                                                child: Container(
                                                  height: tamanho.height * 0.05,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.grey,
                                                      width: 1,
                                                    ),
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 4.0),
                                                        child: Text(
                                                          '@robertapaula20',
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(horizontal: 5),
                                                        child: Icon(
                                                          Icons.mode_edit_rounded,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.grey,
                              )
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      width: tamanho.width * 0.95,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage('https://soubh.uai.com.br/uploads/post/image/5215/main_133402_Cidade_Administrativa_MG_3.jpg'),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                            child: Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Container(
                                    width: tamanho.width *0.7,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children:[
                                            Row(
                                              children: [
                                                Text(
                                                  "Edifício Central",
                                                  style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                                                ),
                                                Padding(padding: EdgeInsets.only(left: 6)),
                                                Icon(
                                                  Icons.verified_rounded,
                                                  color: Colors.deepPurpleAccent,
                                                  size: 15,
                                                ),
                                              ],
                                            ),
                                            Transform.rotate(
                                              angle: -90 * 3.14 / 180,
                                              child: Icon(
                                                Icons.arrow_back_ios_rounded,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20.0),
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Administrador",
                                                  style: TextStyle(fontWeight: FontWeight.bold),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 4.0),
                                                  child: Container(
                                                    height: tamanho.height * 0.05,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                        width: 1,
                                                      ),
                                                      borderRadius: BorderRadius.circular(4),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 4.0),
                                                          child: Text(
                                                            '@eumunhozricardo',
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.symmetric(horizontal: 5),
                                                          child: Icon(
                                                            Icons.mode_edit_rounded,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0 , 8),
                    child: Text(
                      "Localização",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 26.0),
                    child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          border: OutlineInputBorder(),
                          hintText: "Cidade ADM de MG",
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Whatsapp",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 26.0),
                    child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          border: OutlineInputBorder(),
                          hintText: "+55 15 91234-5678",
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "E-mail",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 26.0),
                    child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          border: OutlineInputBorder(),
                          hintText: "edificiosul@governomg.com.br",
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
