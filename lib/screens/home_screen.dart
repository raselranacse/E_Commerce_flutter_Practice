import 'package:e_commerce/AppConstant.dart';
import 'package:e_commerce/components/CustomTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomTextField(hintText: 'test hints',
                         color: Colors.orange,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.message),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width *.85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey,
                      image: DecorationImage(image: NetworkImage('https://mir-s3-cdn-cf.behance.net/project_modules/disp/49a95316393381.562ab19aaf535.jpg'),
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 20,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: litems.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.grey[300],
                                  backgroundImage: NetworkImage(litems[index]['icon']),
                                ),
                                SizedBox(height: 10,),
                                Text(litems[index]['title']),

                              ],
                            ),
                          );
                        }

                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ongoing Compaigns",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Show all",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width * .65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.lightBlue[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("HOT DEAL", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("Up to 30% Discount & 70% Cash back"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width * .65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.red[300],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("PRIME DEAL", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text("Up to 30% Discount"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Express",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "Show all",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * .25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white,
                              image: DecorationImage(image: NetworkImage('https://static.toiimg.com/photo/72023714.cms'),
                                fit: BoxFit.fill,
                              )
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Food"),
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * .25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white,
                                image: DecorationImage(image: NetworkImage('https://media-eng.dhakatribune.com/uploads/2019/04/web-vegetable-shop-dt-1554608318229.jpg'),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Daily Bazar"),
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * .25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white,
                                image: DecorationImage(image: NetworkImage('https://i.insider.com/5ee38c325af6cc7c49346834?width=1100&format=jpeg&auto=webp'),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Meat"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * .25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.lightBlue,
                                image: DecorationImage(image: NetworkImage('https://www.thedailystar.net/sites/default/files/beta2/uploads/2013/07/Unimart6.jpg'),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Unimart"),
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * .25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white,
                                image: DecorationImage(image: NetworkImage('https://www.aci-bd.com/assets/images/theme/retail-chain.jpg'),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Sopno"),
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * .25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.white,
                                image: DecorationImage(image: NetworkImage('https://lh3.googleusercontent.com/proxy/91X5xMatoJnThzm7KVPChXgdOkkV6dvzF_eDtHJh7DtDW84i3rdW2_qe_VRlX_FGpqmTOTBarZuv-unRiBN5MEzWS4lVDInECd-qDsshNYad0Be7PXAqCrN4GZzzJf5XSkhmN-YDo_vxIm0JTcSNOq11xflxbtq3oiKsleMyGH5t-05J12g'),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Agora"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    )));
  }
}

