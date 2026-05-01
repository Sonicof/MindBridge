const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.addTimestampToFeedback = functions.firestore
  .document("feedback/{docId}") // Restricted to only the "feedback" collection
  .onCreate((snapshot, context) => {
    return snapshot.ref.update({
      timestamp: admin.firestore.FieldValue.serverTimestamp(),
    });
  });
