import 'package:flutter/material.dart';
import 'package:main/usuario.dart';

class editarPerfil extends StatefulWidget {
  const editarPerfil({Key? key}) : super(key: key);

  @override
  State<editarPerfil> createState() => _editarPerfilState();
}

class _editarPerfilState extends State<editarPerfil> {
  @override
  Widget build(BuildContext context) {
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
          "Editar perfil",
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
          child: Container(
            width: tamanho.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Imagem de perfil",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage('https://www.agenciaminas.mg.gov.br/system/news/images/000/112/020/original/cidade-administrtiva-credito-gil-leonardi-IMG_8998.jpg?1637170227'),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.4),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.camera_alt_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26.0),
                  child: Text(
                    "Nome",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 26),
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
                    "Bio",
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
                        hintText: "Perfil oficial da Cidade Administrativa de MG",
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                        hintText: "Cidade Administrativa",
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Administrador Geral",
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
                        hintText: "@paulo.oliveira32",
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    width: tamanho.width * 0.9,
                    child: Row(
                      children: [
                        Text(
                          "Moderadores",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Expanded(child: Container()),
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
                  width: tamanho.width * 0.9,
                  height: tamanho.height * 0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey,
                      )
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "@paulo.oliveira32",
                          style: TextStyle(color:  Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.cancel_rounded,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: tamanho.width * 0.9,
                    height: tamanho.height * 0.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.grey,
                        )
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "@21joaobotelho",
                            style: TextStyle(color:  Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.cancel_rounded,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
