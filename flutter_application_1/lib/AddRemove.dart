import 'package:flutter/material.dart';

class AddRemove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 1,
          title: Center(
              child: Text("Edit Profile",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center)),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.green,
              ),
              onPressed: () {}),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.check,
                color: Colors.green,
              ),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 16, top: 26, right: 16),
          child: GestureDetector(
            onTap: () {
              //this is used to deselect the textfield
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Stack(children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/37553901?v=4"))),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 12,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                              color: Colors.green[200]),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ))
                  ]),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 0, top: 4),
                      labelText: "Full Name",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "Enter Your Name",
                      hintStyle:
                          TextStyle(fontSize: 16, color: Colors.grey[400])),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 0, top: 4),
                      labelText: "Full Name",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "Enter Your Name",
                      hintStyle:
                          TextStyle(fontSize: 16, color: Colors.grey[400])),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 0, top: 4),
                      labelText: "Full Name",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "Enter Your Name",
                      hintStyle:
                          TextStyle(fontSize: 16, color: Colors.grey[400])),
                ),
              ],
            ),
          ),
        ));
  }
}
