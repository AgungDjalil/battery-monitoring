import 'package:firebase_database/firebase_database.dart';

class FetctFromFirebase {
  DatabaseReference ref = FirebaseDatabase.instance.ref("example_path");

  Stream<Map<String, dynamic>> streamData() {
    return ref.onValue.map((DatabaseEvent event) {
      return Map<String, dynamic>.from(
          event.snapshot.value as Map); // Mengonversi menjadi Map
    });
  }
}
