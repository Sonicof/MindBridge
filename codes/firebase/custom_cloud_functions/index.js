const admin = require("firebase-admin/app");
admin.initializeApp();

const addTimestampToFeedback = require("./add_timestamp_to_feedback.js");
exports.addTimestampToFeedback = addTimestampToFeedback.addTimestampToFeedback;
