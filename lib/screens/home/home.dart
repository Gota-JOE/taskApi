import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../prodect_screen/controller.dart';
import '../services/main_services.dart';

class Home extends StatelessWidget {
  Home({super.key});

  //TestController controller = Get.put(TestController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Prodecuts',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Image.network(
              'https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/51/545744/2.jpg?3432',
              //color: Colors.black45,
              height: 200,
            ),
          ),
          Expanded(
            child: GetBuilder<TestController>(
              init: TestController(),
              //GetX
              builder: (controller) => controller
                      .list.isNotEmpty //prodectList list.value
                  ? GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 1.5,//1 / 1.5 , .6
                        crossAxisSpacing: 5,//5 , 15
                        mainAxisSpacing: 5,//5 , 15
                      ),
                      itemCount: controller.list.length,
                      itemBuilder: (BuildContext context, int index) => InkWell(
                        onTap: () {
                          controller.list[index].images!.first; //[0]
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Image.network(
                                "${controller.list[index].images?.first}", //?.first.toString()
                                height: 200,
                                width: 200,
                              ),
                              /*Image.network(
                          controller.prodectList[index].images![0],//Image.network(controller.list[index].images!.first.toString(),height: 100,),

                          height: 200,
                          width: 200,
                        ),*/
                              Text(
                                'Title: ${controller.list[index].title}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                                /*Text(
                                controller.prodectList[index].title![0],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),*/
                                /*Text(
                          controller.prodectList[index].price![0],
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),*/
                                //Text('Price 1000' r'$'),
                              ),
                              Text(
                                'Price: ${controller.list[index].price}',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Center(child: CircularProgressIndicator()),
            ),
          ),
        ],
      ),
    );
  }
}

/*GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Set the number of columns in the grid
        ),
        itemCount: con.list.length,
        itemBuilder: (context, index) {
           return Card(
            child: Column(
              children: [
                // Display the product details
                Image.network(con.list[index].images!.first.toString(),height: 100,),
                Text('Title: ${con.list[index].title}'),
                Text('Price: ${con.list[index].price}'),
                // Add more widgets to display other product information
              ],
            ),
          );
        },
      ),*/

/*GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1/1.5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: controller.prodectList.length,
              itemBuilder: (BuildContext, int index) => InkWell(
                child: Column(
                  children: [
                    Card(
                      child: Image.network(
                        controller.prodectList[index].images![0],
                        height: 200,
                        width: 200,
                      ),
                    ),
                    Text(
                      controller.prodectList[index].title![0],
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
              ),
            ),*/

/*final controller = Get.put(TestController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Prodcuts',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
        ),
        body: Container(
          child: Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: controller.prodectList.length,
              itemBuilder: (BuildContext, int index) => InkWell(
                child: Column(
                  children: [
                    Card(
                      child: Image.network(
                        controller.prodectList[index].images![0],
                        height: 200,
                        width: 200,
                      ),
                    ),
                    Text(
                      controller.prodectList[index].title![0],
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),*/
/*),InkWell(
            onTap: (){},
            child: Container(
              child: Column(
                children: [
                  Image.network(
                    'src',
                    height: 200,
                    width: 200,
                  ),
                  Text('mobile'),
                  Text('Price 1000' r'$'),
                ],
              ),
            ),
          ),
    );*/

/*Expanded(
            child: GetBuilder<TestController>(
              builder: (controller) =>
                  controller.prodectList.value!=null?
                  GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.5,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: controller.prodectList.value.length,
                itemBuilder: (BuildContext context, int index) => InkWell(
                  onTap: () {
                    controller.prodectList[index].images![0];
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Image.network(
                          controller.prodectList[index].images![0],//Image.network(controller.list[index].images!.first.toString(),height: 100,),

                          height: 200,
                          width: 200,
                        ),
                        Text(
                          controller.prodectList[index].title![0],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          /*Text(
                          controller.prodectList[index].price![0],
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),*/
                          //Text('Price 1000' r'$'),
                        ),
                      ],
                    ),
                  ),
                ),
              ):CircularProgressIndicator(),
            ),
          ),*/
