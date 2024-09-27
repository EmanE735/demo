import 'package:flutter/material.dart';
import 'package:flutter_application_2/contact.dart';

class AddAndDelet extends StatefulWidget {
  AddAndDelet({super.key});

  @override
  State<AddAndDelet> createState() => _AddAndDeletState();
}

class _AddAndDeletState extends State<AddAndDelet> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  List<contact> contacts = [];

 

  void deletContact(int index) {
    if (contacts.isNotEmpty) {
      setState(() {
        contacts.removeAt(index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Contacts Screen",
            style: TextStyle(color: Colors.white, fontSize: 20.0)),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Enter Your Name Here",
                    hintStyle: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                    suffixIcon: Icon(
                      Icons.edit,
                      color: Colors.blue,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    hintText: "Enter Your Nunber Here",
                    hintStyle: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                    suffixIcon: Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                       onPressed: () {
                        String name = nameController.text.trim();
                        String phone = phoneController.text.trim();
                        if (name.isNotEmpty && phone.isNotEmpty) {
                        if(contacts.length<3){
                            setState(() {
                            nameController.clear();
                            phoneController.clear();
                            contacts.add(contact(name: name, phone: phone));
                          });
                        }
                        }
                      },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.blue,
                        ),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                    child: Text("Add",
                        style: TextStyle(color: Colors.black, fontSize: 18.0))),
              ),
              SizedBox(
                height: 30.0,
              ),
              Column(
                children: List.generate(contacts.length, (index) {
                  return Visibility(
                    visible: contacts.isNotEmpty,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name: ${contacts[index].name}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18.0),
                              ),
                              Text("Phone: ${contacts[index].phone}",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18.0))
                            ],
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              deletContact(index);
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
