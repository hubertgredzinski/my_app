import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:moja_apka/domain/model/goal_model.dart';

@injectable
class GoalRepository {
  Stream<List<GoalModel>> getGoalsStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('items')
        .orderBy('end_date')
        .snapshots()
        .map(
      (querySnapshot) {
        return querySnapshot.docs.map(
          (doc) {
            return GoalModel(
              id: doc.id,
              title: doc['title'],
              imageURL: doc['image_url'],
              goal: doc['goal'],
              unit: doc['unit'],
              endDate: (doc['end_date'] as Timestamp).toDate(),
            );
          },
        ).toList();
      },
    );
  }

  Future<void> remove({required String id}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    return FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('items')
        .doc(id)
        .delete();
  }

  Future<void> add(
    String title,
    String goal,
    String unit,
    String imageURL,
    DateTime endDate,
  ) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('items')
        .add(
      {
        'title': title,
        'goal': goal,
        'unit': unit,
        'image_url': imageURL,
        'end_date': endDate,
      },
    );
  }
}
