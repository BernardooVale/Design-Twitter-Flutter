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
        physics: const ClampingScrollPhysics(),
        children: [
          fundoImagem(tamanho),
          Container(
            transform: Matrix4.translationValues(0, -125, 0),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
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
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
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
    decoration: const BoxDecoration(
      color: Colors.blue,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('lib/imagens/fundo.jpg'),
      )
    ),
  );
}

Widget perfil(BuildContext context){
  return Container(
    transform: Matrix4.translationValues(0, -75, 0),
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 55,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('lib/imagens/principal.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const editarPerfil())),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 1,
                      ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: const Text(
                    "Editar perfil",
                    style: TextStyle(color:  Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
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
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Perfil Oficial da Cidade Administrativa de MG"
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
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
      SizedBox(
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
            child: Column(
              children: const <Widget>[
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
          body: Center(
            child: TabBarView(
              children: <Widget>[
                atividades(tamanho),
                sobre(tamanho, context),
                Column(
                  children: const <Widget>[],
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
        child: SizedBox(
          width: tamanho.width * 0.95,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('lib/imagens/principal.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children:[
                            const Text(
                              "Cidade ADM de MG",
                              style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 1.8),
                              child: Icon(
                                Icons.verified_rounded,
                                color: Color.fromRGBO(255, 215, 0, 1.0),
                                size: 15,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 6.0),
                              child: Text(
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                  "@cidadeadm"
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                              child: Text(
                                ".",
                                style: TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: Text(
                                "10 Mai",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Transform.rotate(
                                angle: -90 * 3.14 / 180,
                                child: const Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: Colors.grey,
                                  size: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In convallis felis et quam aliquam venenatis.",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(222, 10, 0, 0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.messenger_outline_rounded,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
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
        child: SizedBox(
          width: tamanho.width * 0.95,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('lib/imagens/principal.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children:[
                            const Text(
                              "Cidade ADM de MG",
                              style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 1.8),
                              child: Icon(
                                Icons.verified_rounded,
                                color: Color.fromRGBO(255, 215, 0, 1.0),
                                size: 15,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 6.0),
                              child: Text(
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                  "@cidadeadm"
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                              child: Text(
                                ".",
                                style: TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: Text(
                                "10 Mai",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Transform.rotate(
                                angle: -90 * 3.14 / 180,
                                child: const Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: Colors.grey,
                                  size: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                          child: Text(
                            "Lorem ipsum dolor sit amet.",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(222, 10, 0, 0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.messenger_outline_rounded,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
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
        child: SizedBox(
          width: tamanho.width * 0.95,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('lib/imagens/principal.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children:[
                            const Text(
                              "Cidade ADM de MG",
                              style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 1.8),
                              child: Icon(
                                Icons.verified_rounded,
                                color: Color.fromRGBO(255, 215, 0, 1.0),
                                size: 15,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 6.0),
                              child: Text(
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                  "@cidadeadm"
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                              child: Text(
                                ".",
                                style: TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: Text(
                                "10 Mai",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Transform.rotate(
                                angle: -90 * 3.14 / 180,
                                child: const Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: Colors.grey,
                                  size: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In convallis felis et quam aliquam venenatis. Etiam justo sem, venenatis condimentum justo eu",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(222, 10, 0, 0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.messenger_outline_rounded,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
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
        child: SizedBox(
          width: tamanho.width * 0.95,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('lib/imagens/principal.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children:[
                            const Text(
                              "Cidade ADM de MG",
                              style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 1.8),
                              child: Icon(
                                Icons.verified_rounded,
                                color: Color.fromRGBO(255, 215, 0, 1.0),
                                size: 15,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 6.0),
                              child: Text(
                                  style: TextStyle(color: Colors.grey, fontSize: 12),
                                  "@cidadeadm"
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                              child: Text(
                                ".",
                                style: TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: Text(
                                "10 Mai",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Transform.rotate(
                                angle: -90 * 3.14 / 180,
                                child: const Icon(
                                  Icons.arrow_back_ios_rounded,
                                  color: Colors.grey,
                                  size: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 260,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In convallis felis et quam aliquam venenatis.",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(222, 10, 0, 0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.messenger_outline_rounded,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
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
      child: SizedBox(
        width: tamanho.width * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const editarSobre())),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: const Text(
                  "Editar seção sobre",
                  style: TextStyle(color:  Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
              child: Text(
                "Horário de Atendimento",
                style: TextStyle(color:  Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  const Text(
                      'Segunda-Feira',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Text(
                      '.' * 100,
                      style: const TextStyle(color: Colors.grey),
                      maxLines: 1
                  )
                  ),
                  const Text(
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
                  const Text(
                    'Terça-Feira',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Text(
                      '.' * 100,
                      style: const TextStyle(color: Colors.grey),
                      maxLines: 1
                  )
                  ),
                  const Text(
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
                  const Text(
                    'Quarta-Feira',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Text(
                      '.' * 100,
                      style: const TextStyle(color: Colors.grey),
                      maxLines: 1
                  )
                  ),
                  const Text(
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
                  const Text(
                    'Quinta-Feira',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Text(
                      '.' * 100,
                      style: const TextStyle(color: Colors.grey),
                      maxLines: 1
                  )
                  ),
                  const Text(
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
                  const Text(
                    'Sexta-Feira',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Text(
                      '.' * 100,
                      style: const TextStyle(color: Colors.grey),
                      maxLines: 1
                  )
                  ),
                  const Text(
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
                  const Text(
                    'Sábado',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(child: Text(
                      '.' * 100,
                      style: const TextStyle(color: Colors.grey),
                      maxLines: 1
                  )
                  ),
                  const Text(
                    style: TextStyle(color: Colors.grey),
                    'Fechado',
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Text(
                  'Domingo',
                  style: TextStyle(color: Colors.grey),
                ),
                Expanded(child: Text(
                    '.' * 100,
                    style: const TextStyle(color: Colors.grey),
                    maxLines: 1
                )
                ),
                const Text(
                  style: TextStyle(color: Colors.grey),
                  'Fechado',
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                "Edifícios",
                style: TextStyle(color:  Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
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
                                    const Text(
                                      "Edifício Sul",
                                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                                    ),
                                    const Padding(padding: EdgeInsets.only(left: 6)),
                                    const Icon(
                                      Icons.verified_rounded,
                                      color: Colors.deepPurpleAccent,
                                      size: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Row(
                                        children: const [
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
                                child: SizedBox(
                                  width: tamanho.width * 0.7,
                                  child: const Text(
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
                                    const Text(
                                      "Edifício Norte",
                                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                                    ),
                                    const Padding(padding: EdgeInsets.only(left: 6)),
                                    const Icon(
                                      Icons.verified_rounded,
                                      color: Colors.deepPurpleAccent,
                                      size: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Row(
                                        children: const [
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
                                child: SizedBox(
                                  width: tamanho.width * 0.7,
                                  child: const Text(
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
                                const Text(
                                  "Edifício Central",
                                  style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
                                ),
                                const Padding(padding: EdgeInsets.only(left: 6)),
                                const Icon(
                                  Icons.verified_rounded,
                                  color: Colors.deepPurpleAccent,
                                  size: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Row(
                                    children: const [
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
                            child: SizedBox(
                              width: tamanho.width * 0.7,
                              child: const Text(
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
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                "Localização",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                children: const [
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
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('lib/imagens/mapa.jpg'),
                  )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                  "Contato",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.whatsapp_rounded,
                    color: Colors.deepPurpleAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
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
                children: const [
                  Icon(
                    Icons.email_outlined,
                    color: Colors.deepPurpleAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
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