import 'package:flutter/material.dart';
import 'package:main/editar_perfil.dart';
import 'package:main/editar_sobre.dart';

class Usuario extends StatefulWidget {
  const Usuario({Key? key}) : super(key: key);

  @override
  State<Usuario> createState() => _UsuarioState();
}

class _UsuarioState extends State<Usuario> {
  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          fundoImagem(tamanho),
          Container(
            transform: Matrix4.translationValues(0, -125, 0),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                  size: 25,
                )
              ],
            ),
          ),
          perfil(context),
          containerAbas(tamanho, context),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.all(tamanho.height *0.017),
          margin: EdgeInsets.symmetric(
              horizontal: tamanho.width * 0.04,
              vertical: tamanho.height * 0.01),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                  Icons.location_on_rounded,
                  color: Colors.grey,
                size: 30,
              ),
              Icon(
                  Icons.search_rounded,
                  color: Colors.grey,
                size: 30,
              ),
              Icon(
                  Icons.notifications_outlined,
                  color: Colors.grey,
                size: 30,
              ),
              Icon(
                  Icons.email_outlined,
                  color: Colors.grey,
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget fundoImagem(Size tamanho){
  return Container(
    height: tamanho.height * 0.225,
    decoration: BoxDecoration(
      color: Colors.blue,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage('https://meulugar.quintoandar.com.br/wp-content/uploads/2023/04/Cidade-Administrativa-de-Minas-Gerais.jpg'),
      )
    ),
  );
}

Widget perfil(BuildContext context){
  return Container(
    transform: Matrix4.translationValues(0, -75, 0),
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 55,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://www.agenciaminas.mg.gov.br/system/news/images/000/112/020/original/cidade-administrtiva-credito-gil-leonardi-IMG_8998.jpg?1637170227'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>editarPerfil())),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 1,
                      ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Text(
                    "Editar perfil",
                    style: TextStyle(color:  Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                      "CIDADE ADM de MG",
                    style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Icon(
                      Icons.verified_rounded,
                      color: Color.fromRGBO(255, 215, 0, 1.0),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Perfil Oficial da Cidade Administrativa de MG"
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                    size: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2),
                  ),
                  Text(
                    "Cidade Administrativa",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                  ),
                  Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.grey,
                    size: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2),
                  ),
                  Text(
                    "Entrou em Jan/23",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget containerAbas(Size tamanho, BuildContext context){
  return Stack(
    children: <Widget>[
      Container(
      height: tamanho.height * 1.1,
      width: double.infinity,
      child: abas(tamanho, context),
      )
    ],
  );
}

Widget abas(Size tamanho, BuildContext context){
  return MaterialApp(
    home: DefaultTabController(
      length: 3,
      child: Container(
        transform: Matrix4.translationValues(0, -tamanho.height * 0.05, 0),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: tamanho * 0.01,
            child: Container(
              child: Column(
                children: <Widget>[
                  TabBar(
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.blue,
                    labelColor: Colors.blue,
                    isScrollable: true,
                    tabs: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                            "Atividades",
                            style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                            "Sobre",
                            style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                            "Avisos e Comunicados",
                            style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          body: Center(
            child: TabBarView(
              children: <Widget>[
                atividades(tamanho),
                sobre(tamanho, context),
                Column(
                  children: <Widget>[],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget atividades(Size tamanho){
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          width: tamanho.width * 0.95,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage('https://www.agenciaminas.mg.gov.br/system/news/images/000/112/020/original/cidade-administrtiva-credito-gil-leonardi-IMG_8998.jpg?1637170227'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children:[
                              Text(
                                "Cidade ADM de MG",
                                style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 1.8),
                                child: Icon(
                                  Icons.verified_rounded,
                                  color: Color.fromRGBO(255, 215, 0, 1.0),
                                  size: 15,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                    style: TextStyle(color: Colors.grey, fontSize: 12),
                                    "@cidadeadm"
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                                child: Text(
                                  ".",
                                  style: TextStyle(color: Colors.grey, fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "10 Mai",
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Transform.rotate(
                                  angle: -90 * 3.14 / 180,
                                  child: Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.grey,
                                    size: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 260,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In convallis felis et quam aliquam venenatis.",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(222, 10, 0, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.messenger_outline_rounded,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "0",
                                  style: TextStyle(color: Colors.grey, fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Container(
          width: tamanho.width * 0.95,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage('https://www.agenciaminas.mg.gov.br/system/news/images/000/112/020/original/cidade-administrtiva-credito-gil-leonardi-IMG_8998.jpg?1637170227'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children:[
                              Text(
                                "Cidade ADM de MG",
                                style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 1.8),
                                child: Icon(
                                  Icons.verified_rounded,
                                  color: Color.fromRGBO(255, 215, 0, 1.0),
                                  size: 15,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                    style: TextStyle(color: Colors.grey, fontSize: 12),
                                    "@cidadeadm"
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                                child: Text(
                                  ".",
                                  style: TextStyle(color: Colors.grey, fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "10 Mai",
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Transform.rotate(
                                  angle: -90 * 3.14 / 180,
                                  child: Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.grey,
                                    size: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 260,
                          child: Text(
                            "Lorem ipsum dolor sit amet.",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(222, 10, 0, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.messenger_outline_rounded,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "0",
                                  style: TextStyle(color: Colors.grey, fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Container(
          width: tamanho.width * 0.95,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage('https://www.agenciaminas.mg.gov.br/system/news/images/000/112/020/original/cidade-administrtiva-credito-gil-leonardi-IMG_8998.jpg?1637170227'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children:[
                              Text(
                                "Cidade ADM de MG",
                                style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 1.8),
                                child: Icon(
                                  Icons.verified_rounded,
                                  color: Color.fromRGBO(255, 215, 0, 1.0),
                                  size: 15,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                    style: TextStyle(color: Colors.grey, fontSize: 12),
                                    "@cidadeadm"
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                                child: Text(
                                  ".",
                                  style: TextStyle(color: Colors.grey, fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "10 Mai",
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Transform.rotate(
                                  angle: -90 * 3.14 / 180,
                                  child: Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.grey,
                                    size: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 260,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In convallis felis et quam aliquam venenatis. Etiam justo sem, venenatis condimentum justo eu",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(222, 10, 0, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.messenger_outline_rounded,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "0",
                                  style: TextStyle(color: Colors.grey, fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Container(
          width: tamanho.width * 0.95,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage('https://www.agenciaminas.mg.gov.br/system/news/images/000/112/020/original/cidade-administrtiva-credito-gil-leonardi-IMG_8998.jpg?1637170227'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children:[
                              Text(
                                "Cidade ADM de MG",
                                style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 1.8),
                                child: Icon(
                                  Icons.verified_rounded,
                                  color: Color.fromRGBO(255, 215, 0, 1.0),
                                  size: 15,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                    style: TextStyle(color: Colors.grey, fontSize: 12),
                                    "@cidadeadm"
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                                child: Text(
                                  ".",
                                  style: TextStyle(color: Colors.grey, fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  "10 Mai",
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Transform.rotate(
                                  angle: -90 * 3.14 / 180,
                                  child: Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.grey,
                                    size: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 260,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In convallis felis et quam aliquam venenatis.",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(222, 10, 0, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.messenger_outline_rounded,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  "0",
                                  style: TextStyle(color: Colors.grey, fontSize: 20),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget sobre(Size tamanho, BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: Center(
      child: Container(
        width: tamanho.width * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>editarSobre())),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Text(
                  "Editar seção sobre",
                  style: TextStyle(color:  Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
              child: Text(
                "Horário de Atendimento",
                style: TextStyle(color:  Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Text(
                      'Segunda-Feira',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Text(
                      '.' * 100,
                      style: TextStyle(color: Colors.grey),
                      maxLines: 1
                  )
                  ),
                  Text(
                    style: TextStyle(color: Colors.grey),
                      '09:00 às 17:00',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Text(
                    'Terça-Feira',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Text(
                      '.' * 100,
                      style: TextStyle(color: Colors.grey),
                      maxLines: 1
                  )
                  ),
                  Text(
                    style: TextStyle(color: Colors.grey),
                    '09:00 às 17:00',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Text(
                    'Quarta-Feira',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Text(
                      '.' * 100,
                      style: TextStyle(color: Colors.grey),
                      maxLines: 1
                  )
                  ),
                  Text(
                    style: TextStyle(color: Colors.grey),
                    '09:00 às 17:00',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Text(
                    'Quinta-Feira',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Text(
                      '.' * 100,
                      style: TextStyle(color: Colors.grey),
                      maxLines: 1
                  )
                  ),
                  Text(
                    style: TextStyle(color: Colors.grey),
                    '09:00 às 17:00',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Text(
                    'Sexta-Feira',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Text(
                      '.' * 100,
                      style: TextStyle(color: Colors.grey),
                      maxLines: 1
                  )
                  ),
                  Text(
                    style: TextStyle(color: Colors.grey),
                    '09:00 às 17:00',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Text(
                    'Sábado',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Text(
                      '.' * 100,
                      style: TextStyle(color: Colors.grey),
                      maxLines: 1
                  )
                  ),
                  Text(
                    style: TextStyle(color: Colors.grey),
                    'Fechado',
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Domingo',
                  style: TextStyle(color: Colors.grey),
                ),
                Expanded(child: Text(
                    '.' * 100,
                    style: TextStyle(color: Colors.grey),
                    maxLines: 1
                )
                ),
                Text(
                  style: TextStyle(color: Colors.grey),
                  'Fechado',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Edifícios",
                style: TextStyle(color:  Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
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
                                    Padding(
                                      padding: EdgeInsets.only(left: 6.0),
                                      child: Row(
                                        children: [
                                          Text(
                                              style: TextStyle(color: Colors.grey, fontSize: 12),
                                              "@edificiosul"
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  width: tamanho.width * 0.7,
                                  child: Text(
                                    "Edifício da Cidade Administrativa de MG",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
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
                                    Padding(
                                      padding: EdgeInsets.only(left: 6.0),
                                      child: Row(
                                        children: [
                                          Text(
                                              style: TextStyle(color: Colors.grey, fontSize: 12),
                                              "@edificionorte"
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  width: tamanho.width * 0.7,
                                  child: Text(
                                    "Edifício da Cidade Administrativa de MG",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:[
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
                                Padding(
                                  padding: EdgeInsets.only(left: 6.0),
                                  child: Row(
                                    children: [
                                      Text(
                                          style: TextStyle(color: Colors.grey, fontSize: 12),
                                          "@edificiocentral"
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              width: tamanho.width * 0.7,
                              child: Text(
                                "Edifício da Cidade Administrativa de MG",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Localização",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                children: [
                  Icon(
                      Icons.location_on_outlined,
                    color: Colors.deepPurpleAccent,
                  ),
                  Text(
                    "São Jorge 2ª Seção, Belo Horizonte - MG, 30451-102",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                width: tamanho.width * 0.90,
                height: tamanho.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("https://d2x3xhvgiqkx42.cloudfront.net/12345678-1234-1234-1234-1234567890ab/2d3f30b2-74a7-4aec-8ef7-67de4fff5318/2022/08/22/e5750483-e646-4b3b-9c11-f1b62b8466ae/2636f0c5-1324-4177-b212-e9f7fc5850ee.png")
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                  "Contato",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.whatsapp_rounded,
                    color: Colors.deepPurpleAccent,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                        "+55 15 91234-5678"
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: Colors.deepPurpleAccent,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                        "edificiosul@governomg.com.br"
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}