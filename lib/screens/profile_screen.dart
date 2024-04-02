import 'package:api_test/cubit/user_cubit.dart';
import 'package:api_test/cubit/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        return Scaffold(
          body: ListView(
            children: [
              const SizedBox(height: 16),
              //! Profile Picture
              CircleAvatar(
                radius: 80,
                child: Image.asset("assets/images/avatar.png"),
              ),
              const SizedBox(height: 16),

              //! Name
              const ListTile(
                title: Text("Name"),
                leading: Icon(Icons.person),
              ),
              const SizedBox(height: 16),

              //! Email
              const ListTile(
                title: Text("Email"),
                leading: Icon(Icons.email),
              ),
              const SizedBox(height: 16),

              //! Phone number
              const ListTile(
                title: Text("phone number"),
                leading: Icon(Icons.phone),
              ),
              const SizedBox(height: 16),

              //! Address
              const ListTile(
                title: Text("Address"),
                leading: Icon(Icons.location_city),
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}
