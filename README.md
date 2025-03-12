# FSRE Timetable Notifier Mobile App

Mobile App for the FSRE Timetable Notifier project. Made with Flutter.

The purpose of the mobile app is to provide the users with a way to view and manage their subscriptions to individual study programs. Unlike the web frontend which uses email addresses as the main identifier and message source of users, the mobile app uses a Firebase Cloud Messaging (FCM) key. This key is stored in the backend upon app startup, and the user can subscribe to study programs by associating them with their FCM key. The notifications will arrive to the user's device using FCM.
