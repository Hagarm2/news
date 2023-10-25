import 'package:flutter/material.dart';


class DrawerTab extends StatelessWidget {
  Function onClick;

  DrawerTab(this.onClick, {super.key});
  static int CAT_ID = 1;
  static int SET_ID = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.green,
              child: Center(
                child: Text("News App!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.list,
                    color: Color(0xFF000000)),
                InkWell(
                  onTap: () {
                    onClick(CAT_ID);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Categories",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.settings,
                  color: Color(0xFF000000),),
                InkWell(
                  onTap: () {
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Settings",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}