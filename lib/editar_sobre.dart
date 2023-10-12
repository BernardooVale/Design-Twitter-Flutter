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

    TimeOfDay horarioAbre = const TimeOfDay(hour: 9, minute: 00);
    TimeOfDay horarioFecha = const TimeOfDay(hour: 17, minute: 00);
    Size tamanho = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Usuario()));
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.blue,
          ),
        ),
        title: const Text(
          "Editar sobre",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 8.0),
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
            child: SizedBox(
              width: tamanho.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
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
                          child: const Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.0),
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
                              TimeOfDay? novoHorario = await showTimePicker(
                                  context: context, initialTime: horarioAbre
                              );
                              if(novoHorario == null){
                                return;
                              }
                              setState(() {
                                horarioAbre = novoHorario;
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
                                    '${horarioAbre.hour.toString().padLeft(2, '0')}:${horarioAbre.minute.toString().padLeft(2, '0')}',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: Transform.rotate(
                                      angle: -90 * 3.14 / 180,
                                      child: const Icon(
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
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                              "às"
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            TimeOfDay? novoHorario = await showTimePicker(
                                context: context,
                                initialTime: horarioFecha
                            );
                            if(novoHorario == null){
                              return;
                            }
                            setState(() {
                              horarioFecha = novoHorario;
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
                                  '${horarioFecha.hour.toString().padLeft(2, '0')}:${horarioFecha.minute.toString().padLeft(2, '0')}',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: const Icon(
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
                          child: const Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.0),
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
                              TimeOfDay? novoHorario = await showTimePicker(
                                  context: context, initialTime: horarioAbre
                              );
                              if(novoHorario == null){
                                return;
                              }
                              setState(() {
                                horarioAbre = novoHorario;
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
                                    '${horarioAbre.hour.toString().padLeft(2, '0')}:${horarioAbre.minute.toString().padLeft(2, '0')}',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: Transform.rotate(
                                      angle: -90 * 3.14 / 180,
                                      child: const Icon(
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
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                              "às"
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            TimeOfDay? novoHorario = await showTimePicker(
                                context: context,
                                initialTime: horarioFecha
                            );
                            if(novoHorario == null){
                              return;
                            }
                            setState(() {
                              horarioFecha = novoHorario;
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
                                  '${horarioFecha.hour.toString().padLeft(2, '0')}:${horarioFecha.minute.toString().padLeft(2, '0')}',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: const Icon(
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
                          child: const Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.0),
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
                              TimeOfDay? novoHorario = await showTimePicker(
                                  context: context, initialTime: horarioAbre
                              );
                              if(novoHorario == null){
                                return;
                              }
                              setState(() {
                                horarioAbre = novoHorario;
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
                                    '${horarioAbre.hour.toString().padLeft(2, '0')}:${horarioAbre.minute.toString().padLeft(2, '0')}',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: Transform.rotate(
                                      angle: -90 * 3.14 / 180,
                                      child: const Icon(
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
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                              "às"
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            TimeOfDay? novoHorario = await showTimePicker(
                                context: context,
                                initialTime: horarioFecha
                            );
                            if(novoHorario == null){
                              return;
                            }
                            setState(() {
                              horarioFecha = novoHorario;
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
                                  '${horarioFecha.hour.toString().padLeft(2, '0')}:${horarioFecha.minute.toString().padLeft(2, '0')}',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: const Icon(
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
                          child: const Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.0),
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
                              TimeOfDay? novoHorario = await showTimePicker(
                                  context: context, initialTime: horarioAbre
                              );
                              if(novoHorario == null){
                                return;
                              }
                              setState(() {
                                horarioAbre = novoHorario;
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
                                    '${horarioAbre.hour.toString().padLeft(2, '0')}:${horarioAbre.minute.toString().padLeft(2, '0')}',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: Transform.rotate(
                                      angle: -90 * 3.14 / 180,
                                      child: const Icon(
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
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                              "às"
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            TimeOfDay? novoHorario = await showTimePicker(
                                context: context,
                                initialTime: horarioFecha
                            );
                            if(novoHorario == null){
                              return;
                            }
                            setState(() {
                              horarioFecha = novoHorario;
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
                                  '${horarioFecha.hour.toString().padLeft(2, '0')}:${horarioFecha.minute.toString().padLeft(2, '0')}',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: const Icon(
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
                          child: const Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.0),
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
                              TimeOfDay? novoHorario = await showTimePicker(
                                  context: context, initialTime: horarioAbre
                              );
                              if(novoHorario == null){
                                return;
                              }
                              setState(() {
                                horarioAbre = novoHorario;
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
                                    '${horarioAbre.hour.toString().padLeft(2, '0')}:${horarioAbre.minute.toString().padLeft(2, '0')}',
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
                                    child: Transform.rotate(
                                      angle: -90 * 3.14 / 180,
                                      child: const Icon(
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
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                              "às"
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            TimeOfDay? novoHorario = await showTimePicker(
                                context: context,
                                initialTime: horarioFecha
                            );
                            if(novoHorario == null){
                              return;
                            }
                            setState(() {
                              horarioFecha = novoHorario;
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
                                  '${horarioFecha.hour.toString().padLeft(2, '0')}:${horarioFecha.minute.toString().padLeft(2, '0')}',
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: const Icon(
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
                          child: const Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.0),
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
                                const Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    'Fechado',
                                  ),
                                ),
                                Expanded(child: Container()),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: const Icon(
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
                          child: const Align(
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.0),
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
                                const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Fechado',
                                  ),
                                ),
                                Expanded(child: Container()),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Transform.rotate(
                                    angle: -90 * 3.14 / 180,
                                    child: const Icon(
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
                    child: SizedBox(
                      width: tamanho.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
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
                            child: const Text(
                              "Adicionar",
                              style: TextStyle(color:  Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: tamanho.width * 0.95,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('lib/imagens/sul.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                          child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: SizedBox(
                                  width: tamanho.width *0.7,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:[
                                          Row(
                                            children: const [
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
                                            child: const Icon(
                                              Icons.arrow_back_ios_rounded,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
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
                                                  children: const [
                                                    Padding(
                                                      padding: EdgeInsets.only(left: 4.0),
                                                      child: Text(
                                                        '@felipeluizz_',
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 5),
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
                      decoration: const BoxDecoration(
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
                    padding: const EdgeInsets.only(top:16),
                    child: SizedBox(
                    width: tamanho.width * 0.95,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('lib/imagens/norte.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                          child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: SizedBox(
                                  width: tamanho.width *0.7,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:[
                                          Row(
                                            children: const [
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
                                            child: const Icon(
                                              Icons.arrow_back_ios_rounded,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
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
                                                  children: const [
                                                    Padding(
                                                      padding: EdgeInsets.only(left: 4.0),
                                                      child: Text(
                                                        '@robertapaula20',
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 5),
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
                      decoration: const BoxDecoration(
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
                    child: SizedBox(
                      width: tamanho.width * 0.95,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('lib/imagens/central.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                            child: Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: SizedBox(
                                    width: tamanho.width *0.7,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children:[
                                            Row(
                                              children: const [
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
                                              child: const Icon(
                                                Icons.arrow_back_ios_rounded,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
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
                                                    children: const [
                                                      Padding(
                                                        padding: EdgeInsets.only(left: 4.0),
                                                        child: Text(
                                                          '@eumunhozricardo',
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.symmetric(horizontal: 5),
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
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0 , 8),
                    child: Text(
                      "Localização",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 26.0),
                    child: TextFormField(
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          border: OutlineInputBorder(),
                          hintText: "Cidade ADM de MG",
                        )
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Whatsapp",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 26.0),
                    child: TextFormField(
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          border: OutlineInputBorder(),
                          hintText: "+55 15 91234-5678",
                        )
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "E-mail",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 26.0),
                    child: TextFormField(
                        decoration: const InputDecoration(
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
