import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

   
List<ProfileTileModel> profilesOptions = [
   // Add more user profiles here
  ProfileTileModel(
    title: 'My Account', 
    icon: FluentIcons.person_16_regular,
    onTop: (){

    }),
  ProfileTileModel(
    title: 'Saved', 
    icon: FluentIcons.bookmark_16_regular,
    onTop: (){
    }),
  ProfileTileModel(
    title: 'Friends', 
    icon: FluentIcons.people_16_regular,
    onTop: (){

    }),
  ProfileTileModel(
    title: 'Events', 
    icon: FluentIcons.calendar_empty_20_regular,
    onTop: (){

    }),
  ProfileTileModel(
    title: 'Help & Support', 
    icon: FluentIcons.chat_help_24_regular,
    onTop: (){

    }),
  ProfileTileModel(
    title: 'Account Settings', 
    icon: FluentIcons.settings_16_regular,
    onTop: (){

    }),
  ProfileTileModel(
    title: 'LogOut', 
    icon: FluentIcons.sign_out_20_regular,
    onTop: (){
      

      showDialog(
        context: context,
         builder: (context){
          return AlertDialog(
            title: Text("Sign Out"),
            content: Text("Are You Sure you want Sign Out?"),
            actions: [
              TextButton(
                onPressed: (){

                },
                 child: Text("No")),


                 TextButton(
                onPressed: (){
                  

                },
                 child: Text("Yes")),



                 
            ],
          );

         });

    }),
 
];



    return Scaffold(
      appBar: AppBar(
        centerTitle: true, 
        title: Text("Profile",style: TextStyle(fontWeight: FontWeight.bold),),
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Column(
                children: [
                  Stack(
              
              alignment: Alignment.bottomRight,
              children: [      
                CircleAvatar(
                  radius: 60.0,
                  child: Text("A",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                ),
                
                Positioned(
                    bottom: 0,
                    right: -15,
                    child: RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.grey.shade100,
                      child: Icon(Icons.camera_alt_outlined),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                    )),
                    
              ],
              
                   ),
          
                  Text("Anas Ahmed",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500),)
                ],
              ),
              20.verticalSpace,
          
          
              //-- OPTIONS
          
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,    // parent is size layga Column
          
                itemBuilder: (context,index){
                  return ListTile(
                    leading: Icon(profilesOptions[index].icon),
                     title: Text(profilesOptions[index].title),
                     trailing: Icon(Icons.arrow_forward_ios_rounded),
                  );
          
                },
                 separatorBuilder: (context,index){
                  return Divider();
                  
                },
                  itemCount: profilesOptions.length
                  
                  )
            ],
          ),
        ),
      ),

    );
  }
}



class ProfileTileModel {
   String title;
   IconData icon;
   VoidCallback onTop;

  ProfileTileModel({required this.title, required this.icon, required this.onTop });
}
