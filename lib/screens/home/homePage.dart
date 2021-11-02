import 'package:appdesafio/controllers/ControladorApi.dart';
import 'package:appdesafio/model/item_card.dart';
import 'package:appdesafio/screens/home/DetalhesHomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> itensContem = [];
  final controladorApi = GetIt.I.get<ControladorApi>();
  bool exibirItens = true;
  verificarContains() { //verificar a pesquisa do usuario
    if (controllerPesquisa.text != "") {
      controladorApi.aux.clear();
      controladorApi.auxiliar!.clear();
      controladorApi.quantidadeAchada = 0;
      controladorApi.aux.addAll(controladorApi.retorno["data"]);

      controladorApi.aux.forEach((element) {
        String auxName = element["name"];
        if (auxName.toLowerCase() == controladorApi.texto.toLowerCase()) {
          controladorApi.quantidadeAchada++;
          controladorApi.auxiliar?.add(element);
        }
      });
      controladorApi.tamanhoLista = controladorApi.quantidadeAchada;
      if (controladorApi.tamanhoLista == 0) {
        exibirItens = false;
        setState(() {});
      } else {
        exibirItens = true;
        setState(() {});
      }
    } else {
      controladorApi.auxiliar!.addAll(controladorApi.retorno["data"]);
      controladorApi.tamanhoLista = controladorApi.retorno["data"].length;
    }
  }

  TextEditingController controllerPesquisa = TextEditingController();

  @override
  void initState() {
    super.initState();
    verificarContains();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.dehaze_outlined,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      "CASA",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Cart(0)",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey.withAlpha(600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Wrap(
                          spacing: 20,
                          runAlignment: WrapAlignment.start,
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.search_outlined,
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              "Shop",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "New Arrivals",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "Sneakers",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey.withAlpha(600),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16, top: 16),
                        child: Theme(
                          data: new ThemeData(hintColor: Colors.blueGrey),
                          child: TextFormField(
                            controller: controllerPesquisa,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      controladorApi.texto =
                                          controllerPesquisa.text;
                                    });
                                    verificarContains();
                                  },
                                  icon: Icon(Icons.search_outlined)),
                              hintText: "Digite a sua pesquisa",
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueGrey)),
                            ),
                          ),
                        ),
                      ),
                      controllerPesquisa.text != ""
                          ? Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.only(top: 8, right: 16),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  color: Colors.blueGrey,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      controllerPesquisa.text = "";
                                    });
                                    verificarContains();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16.0, right: 16),
                                    child: Text(
                                      "Limpar pesquisa",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Container()
                    ]),
              ),
              exibirItens
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: GridView.builder(
                            itemCount: controladorApi.tamanhoLista,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 16,
                              crossAxisSpacing: 16,
                              childAspectRatio: 0.75,
                            ),
                            itemBuilder: (context, index) => ItemCard(
                                  indexRecebido: index,
                                  product: controladorApi.retorno["data"]
                                      [index],
                                  press: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetalhesHomePage(
                                          product:
                                              controladorApi.auxiliar![index],
                                        ),
                                      )),
                                )),
                      ),
                    )
                  : Center(
                      child: Container(
                          child: Text(
                      "Item não encontrado.",
                      style: TextStyle(color: Colors.black),
                    ))),
            ]),
      ),
    );
  }
}
