// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class CompanyProfile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Company Profile'),
//         backgroundColor: Colors.deepPurple,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Colors.deepPurple, Colors.purpleAccent],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage('assets/images/logo.jpeg'),
//                   ),
//                   SizedBox(height: 16),
//                   Text(
//                     'About Us',
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Deskripsi informatif tentang perusahaan Anda di sini...',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white70,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 24),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: ElevatedButton.icon(
//                 onPressed: () {
//                   _launchInstagramAndWhatsApp();
//                 },
//                 icon: Icon(Icons.contact_mail),
//                 label: Text('Contact Us'),
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(vertical: 16.0),
//                   backgroundColor: Colors.deepPurple,
//                   textStyle: TextStyle(fontSize: 18),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   _launchInstagramAndWhatsApp() async {
//     const urlInstagram = 'https://instagram.com/ikiwygy_';
//     const urlWhatsApp = 'https://wa.me/+6285817298071';

//     // Membuka Instagram
//     await Future.delayed(Duration(seconds: 0), () => _launchURL(urlInstagram));

//     // Setelah 5 detik membuka WhatsApp
//     await Future.delayed(Duration(seconds: 5), () => _launchURL(urlWhatsApp));
//   }

//   void _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class CompanyProfile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Company Profile'),
//         backgroundColor: Colors.deepPurple,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Colors.deepPurple, Colors.purpleAccent],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage('assets/images/logo.jpeg'),
//                   ),
//                   SizedBox(height: 16),
//                   Text(
//                     'About Us',
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Deskripsi informatif tentang perusahaan Anda di sini...',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white70,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 24),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: ElevatedButton.icon(
//                 onPressed: () {
//                   _launchInstagramAndWhatsApp();
//                 },
//                 icon: Icon(Icons.contact_mail),
//                 label: Text('Contact Us'),
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(vertical: 16.0),
//                   backgroundColor: Colors.deepPurple,
//                   textStyle: TextStyle(fontSize: 18),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   _showChatForm(context);
//                 },
//                 child: Text('Chat with Us'),
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(vertical: 16.0),
//                   backgroundColor: Colors.purpleAccent,
//                   textStyle: TextStyle(fontSize: 18),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   _launchInstagramAndWhatsApp() async {
//     const urlInstagram = 'https://instagram.com/ikiwygy_';
//     const urlWhatsApp = 'https://wa.me/+6285817298071';

//     // Membuka Instagram
//     await Future.delayed(Duration(seconds: 0), () => _launchURL(urlInstagram));

//     // Setelah 5 detik membuka WhatsApp
//     await Future.delayed(Duration(seconds: 5), () => _launchURL(urlWhatsApp));
//   }

//   void _showChatForm(BuildContext context) {
//     TextEditingController nameController = TextEditingController();
//     TextEditingController messageController = TextEditingController();

//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Chat with Us'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: nameController,
//                 decoration: InputDecoration(
//                   labelText: 'Your Name',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 16),
//               TextField(
//                 controller: messageController,
//                 decoration: InputDecoration(
//                   labelText: 'Your Message',
//                   border: OutlineInputBorder(),
//                 ),
//                 maxLines: 3,
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 _sendMessage(nameController.text, messageController.text);
//                 Navigator.of(context).pop();
//               },
//               child: Text('Send'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _sendMessage(String name, String message) {
//     // Implementasikan logika pengiriman pesan di sini
//     // Misalnya, mengirim data ke backend atau menggunakan API real-time
//     print('Name: $name');
//     print('Message: $message');
//   }

//   void _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CompanyProfile(),
//     );
//   }
// }

// class CompanyProfile extends StatelessWidget {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Company Profile'),
//         backgroundColor: Colors.deepPurple,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Colors.deepPurple, Colors.purpleAccent],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage('assets/images/logo.jpeg'),
//                   ),
//                   SizedBox(height: 16),
//                   Text(
//                     'About Us',
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Deskripsi informatif tentang perusahaan Anda di sini...',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white70,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 24),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: ElevatedButton.icon(
//                 onPressed: () {
//                   _launchInstagramAndWhatsApp();
//                 },
//                 icon: Icon(Icons.contact_mail),
//                 label: Text('Contact Us'),
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(vertical: 16.0),
//                   backgroundColor: Colors.deepPurple,
//                   textStyle: TextStyle(fontSize: 18),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => ChatScreen()),
//                   );
//                 },
//                 child: Text('Chat with Us'),
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(vertical: 16.0),
//                   backgroundColor: Colors.purpleAccent,
//                   textStyle: TextStyle(fontSize: 18),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   _launchInstagramAndWhatsApp() async {
//     const urlInstagram = 'https://instagram.com/ikiwygy_';
//     const urlWhatsApp = 'https://wa.me/+6285817298071';

//     // Membuka Instagram
//     await Future.delayed(Duration(seconds: 0), () => _launchURL(urlInstagram));

//     // Setelah 5 detik membuka WhatsApp
//     await Future.delayed(Duration(seconds: 5), () => _launchURL(urlWhatsApp));
//   }

//   void _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
// }

// class ChatScreen extends StatefulWidget {
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final TextEditingController _controller = TextEditingController();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   User? user;

//   @override
//   void initState() {
//     super.initState();
//     _auth.authStateChanges().listen((user) {
//       setState(() {
//         this.user = user;
//       });
//     });
//   }

//   void _sendMessage() async {
//     if (_controller.text.trim().isNotEmpty) {
//       await _firestore.collection('chat').add({
//         'text': _controller.text,
//         'sender': user?.email ?? 'Anonymous',
//         'timestamp': FieldValue.serverTimestamp(),
//       });
//       _controller.clear();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Real-Time Chat'),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: StreamBuilder<QuerySnapshot>(
//               stream: _firestore
//                   .collection('chat')
//                   .orderBy('timestamp', descending: true)
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 }

//                 final messages = snapshot.data!.docs;
//                 List<MessageBubble> messageWidgets = [];
//                 for (var message in messages) {
//                   final messageText = message['text'];
//                   final messageSender = message['sender'];
//                   final currentUser = user?.email;

//                   final messageWidget = MessageBubble(
//                     sender: messageSender,
//                     text: messageText,
//                     isMe: currentUser == messageSender,
//                   );
//                   messageWidgets.add(messageWidget);
//                 }
//                 return ListView(
//                   reverse: true,
//                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//                   children: messageWidgets,
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     decoration: InputDecoration(
//                       hintText: 'Type your message...',
//                       border: OutlineInputBorder(),
//                       contentPadding:
//                           EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.send, color: Colors.deepPurple),
//                   onPressed: _sendMessage,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MessageBubble extends StatelessWidget {
//   final String sender;
//   final String text;
//   final bool isMe;

//   MessageBubble({required this.sender, required this.text, required this.isMe});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(10.0),
//       child: Column(
//         crossAxisAlignment:
//             isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//         children: [
//           Text(
//             sender,
//             style: TextStyle(fontSize: 12.0, color: Colors.black54),
//           ),
//           Material(
//             borderRadius: isMe
//                 ? BorderRadius.only(
//                     topLeft: Radius.circular(30.0),
//                     bottomLeft: Radius.circular(30.0),
//                     bottomRight: Radius.circular(30.0),
//                   )
//                 : BorderRadius.only(
//                     topRight: Radius.circular(30.0),
//                     bottomLeft: Radius.circular(30.0),
//                     bottomRight: Radius.circular(30.0),
//                   ),
//             elevation: 5.0,
//             color: isMe ? Colors.deepPurple : Colors.white,
//             child: Padding(
//               padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//               child: Text(
//                 text,
//                 style: TextStyle(
//                   color: isMe ? Colors.white : Colors.black54,
//                   fontSize: 15.0,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:url_launcher/url_launcher.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: AuthScreen(),
//     );
//   }
// }

// // Screen for user authentication (Sign In or Register)
// class AuthScreen extends StatefulWidget {
//   @override
//   _AuthScreenState createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool isLogin = true;

//   Future<void> _authenticate() async {
//     try {
//       if (isLogin) {
//         await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: _emailController.text.trim(),
//           password: _passwordController.text.trim(),
//         );
//       } else {
//         await FirebaseAuth.instance.createUserWithEmailAndPassword(
//           email: _emailController.text.trim(),
//           password: _passwordController.text.trim(),
//         );
//       }
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => CompanyProfile()),
//       );
//     } catch (e) {
//       print(e);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(isLogin ? 'Sign In' : 'Register'),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _emailController,
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             TextField(
//               controller: _passwordController,
//               decoration: InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _authenticate,
//               child: Text(isLogin ? 'Login' : 'Register'),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.deepPurple,
//               ),
//             ),
//             TextButton(
//               onPressed: () {
//                 setState(() {
//                   isLogin = !isLogin;
//                 });
//               },
//               child: Text(isLogin
//                   ? 'Create a new account'
//                   : 'Already have an account? Login'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CompanyProfile extends StatelessWidget {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Company Profile'),
//         backgroundColor: Colors.deepPurple,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.admin_panel_settings),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => AdminChatScreen()),
//               );
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.logout),
//             onPressed: () async {
//               await _auth.signOut();
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => AuthScreen()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Colors.deepPurple, Colors.purpleAccent],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage('assets/images/logo.jpeg'),
//                   ),
//                   SizedBox(height: 16),
//                   Text(
//                     'About Us',
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Deskripsi informatif tentang perusahaan Anda di sini...',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white70,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 24),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: ElevatedButton.icon(
//                 onPressed: () {
//                   _launchInstagramAndWhatsApp();
//                 },
//                 icon: Icon(Icons.contact_mail),
//                 label: Text('Contact Us'),
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(vertical: 16.0),
//                   backgroundColor: Colors.deepPurple,
//                   textStyle: TextStyle(fontSize: 18),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => ChatScreen()),
//                   );
//                 },
//                 child: Text('Chat with Us'),
//                 style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(vertical: 16.0),
//                   backgroundColor: Colors.purpleAccent,
//                   textStyle: TextStyle(fontSize: 18),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   _launchInstagramAndWhatsApp() async {
//     const urlInstagram = 'https://instagram.com/ikiwygy_';
//     const urlWhatsApp = 'https://wa.me/+6285817298071';

//     // Membuka Instagram
//     await Future.delayed(Duration(seconds: 0), () => _launchURL(urlInstagram));

//     // Setelah 5 detik membuka WhatsApp
//     await Future.delayed(Duration(seconds: 5), () => _launchURL(urlWhatsApp));
//   }

//   void _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
// }

// class ChatScreen extends StatefulWidget {
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final TextEditingController _controller = TextEditingController();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   User? user;

//   @override
//   void initState() {
//     super.initState();
//     _auth.authStateChanges().listen((user) {
//       setState(() {
//         this.user = user;
//       });
//     });
//   }

//   void _sendMessage() async {
//     if (_controller.text.trim().isNotEmpty) {
//       await _firestore.collection('chat').add({
//         'text': _controller.text,
//         'sender': user?.email ?? 'Anonymous',
//         'timestamp': FieldValue.serverTimestamp(),
//       });
//       _controller.clear();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Real-Time Chat'),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: StreamBuilder<QuerySnapshot>(
//               stream: _firestore
//                   .collection('chat')
//                   .orderBy('timestamp', descending: true)
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 }

//                 final messages = snapshot.data!.docs;
//                 List<MessageBubble> messageWidgets = [];
//                 for (var message in messages) {
//                   final messageText = message['text'];
//                   final messageSender = message['sender'];
//                   final currentUser = user?.email;

//                   final messageWidget = MessageBubble(
//                     sender: messageSender,
//                     text: messageText,
//                     isMe: currentUser == messageSender,
//                   );
//                   messageWidgets.add(messageWidget);
//                 }
//                 return ListView(
//                   reverse: true,
//                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//                   children: messageWidgets,
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     decoration: InputDecoration(
//                       hintText: 'Type your message...',
//                       border: OutlineInputBorder(),
//                       contentPadding:
//                           EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.send, color: Colors.deepPurple),
//                   onPressed: _sendMessage,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MessageBubble extends StatelessWidget {
//   final String sender;
//   final String text;
//   final bool isMe;

//   MessageBubble({required this.sender, required this.text, required this.isMe});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(10.0),
//       child: Column(
//         crossAxisAlignment:
//             isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//         children: [
//           Text(
//             sender,
//             style: TextStyle(fontSize: 12.0, color: Colors.black54),
//           ),
//           Material(
//             borderRadius: isMe
//                 ? BorderRadius.only(
//                     topLeft: Radius.circular(30.0),
//                     bottomLeft: Radius.circular(30.0),
//                     bottomRight: Radius.circular(30.0),
//                   )
//                 : BorderRadius.only(
//                     topRight: Radius.circular(30.0),
//                     bottomLeft: Radius.circular(30.0),
//                     bottomRight: Radius.circular(30.0),
//                   ),
//             elevation: 5.0,
//             color: isMe ? Colors.deepPurple : Colors.white,
//             child: Padding(
//               padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//               child: Text(
//                 text,
//                 style: TextStyle(
//                   color: isMe ? Colors.white : Colors.black54,
//                   fontSize: 15.0,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Admin Screen for viewing and responding to user messages
// class AdminChatScreen extends StatefulWidget {
//   @override
//   _AdminChatScreenState createState() => _AdminChatScreenState();
// }

// class _AdminChatScreenState extends State<AdminChatScreen> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   User? adminUser;

//   @override
//   void initState() {
//     super.initState();
//     _auth.authStateChanges().listen((user) {
//       setState(() {
//         adminUser = user;
//       });
//     });
//   }

//   void _sendAdminMessage(String chatId, String messageText) async {
//     if (messageText.trim().isNotEmpty) {
//       await _firestore
//           .collection('chat')
//           .doc(chatId)
//           .collection('messages')
//           .add({
//         'text': messageText,
//         'sender': adminUser?.email ?? 'Admin',
//         'timestamp': FieldValue.serverTimestamp(),
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Admin Chat Panel'),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore.collection('chat').snapshots(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return Center(child: CircularProgressIndicator());
//           }

//           final chatDocuments = snapshot.data!.docs;
//           List<Widget> chatTiles = [];
//           for (var doc in chatDocuments) {
//             chatTiles.add(ListTile(
//               title: Text(doc.id),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => AdminChatDetailScreen(
//                       chatId: doc.id,
//                     ),
//                   ),
//                 );
//               },
//             ));
//           }

//           return ListView(
//             children: chatTiles,
//           );
//         },
//       ),
//     );
//   }
// }

// // Detail screen where admin can view and respond to a specific chat
// class AdminChatDetailScreen extends StatefulWidget {
//   final String chatId;

//   AdminChatDetailScreen({required this.chatId});

//   @override
//   _AdminChatDetailScreenState createState() => _AdminChatDetailScreenState();
// }

// class _AdminChatDetailScreenState extends State<AdminChatDetailScreen> {
//   final TextEditingController _controller = TextEditingController();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   User? adminUser;

//   @override
//   void initState() {
//     super.initState();
//     _auth.authStateChanges().listen((user) {
//       setState(() {
//         adminUser = user;
//       });
//     });
//   }

//   void _sendMessage() async {
//     if (_controller.text.trim().isNotEmpty) {
//       await _firestore
//           .collection('chat')
//           .doc(widget.chatId)
//           .collection('messages')
//           .add({
//         'text': _controller.text,
//         'sender': adminUser?.email ?? 'Admin',
//         'timestamp': FieldValue.serverTimestamp(),
//       });
//       _controller.clear();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chat with ${widget.chatId}'),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: StreamBuilder<QuerySnapshot>(
//               stream: _firestore
//                   .collection('chat')
//                   .doc(widget.chatId)
//                   .collection('messages')
//                   .orderBy('timestamp', descending: true)
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(child: CircularProgressIndicator());
//                 }

//                 final messages = snapshot.data!.docs;
//                 List<MessageBubble> messageWidgets = [];
//                 for (var message in messages) {
//                   final messageText = message['text'];
//                   final messageSender = message['sender'];
//                   final isMe = adminUser?.email == messageSender;

//                   final messageWidget = MessageBubble(
//                     sender: messageSender,
//                     text: messageText,
//                     isMe: isMe,
//                   );
//                   messageWidgets.add(messageWidget);
//                 }
//                 return ListView(
//                   reverse: true,
//                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//                   children: messageWidgets,
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     decoration: InputDecoration(
//                       hintText: 'Type your message...',
//                       border: OutlineInputBorder(),
//                       contentPadding:
//                           EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.send, color: Colors.deepPurple),
//                   onPressed: _sendMessage,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:company_profile/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthScreen(),
    );
  }
}

// Screen for user authentication (Sign In or Register)
class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isLogin = true;

  Future<void> _authenticate() async {
    try {
      if (isLogin) {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
      } else {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
      }
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CompanyProfile()),
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isLogin ? 'Sign In' : 'Register'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
              style:
                  TextStyle(color: Colors.white), // Mengubah warna teks input
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              style:
                  TextStyle(color: Colors.white), // Mengubah warna teks input
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _authenticate,
              child: Text(isLogin ? 'Login' : 'Register'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor:
                    Colors.white, // Mengubah warna teks tombol menjadi putih
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isLogin = !isLogin;
                });
              },
              child: Text(
                isLogin
                    ? 'Create a new account'
                    : 'Already have an account? Login',
                style: TextStyle(
                    color: Colors
                        .deepPurple), // Mengubah warna teks link menjadi putih
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CompanyProfile extends StatefulWidget {
  @override
  _CompanyProfileState createState() => _CompanyProfileState();
}

class _CompanyProfileState extends State<CompanyProfile>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<int> _textAnimation;
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _showPlayIcon = false;
  bool _showUrls = false;

  final String description =
      'Saya Rizki Maulana, Mahasiswa Universitas Esa Unggul Fakultas Ilmu Komputer jurusan Teknik Informatika. Seorang programmer web developer, mobile developer, software developer, dan game developer. Saya juga mempunyai freelance joki project software dan web di kampus lain dan juga joki makalah, poster, dan tugas apapun yang bisa saya kerjakan. Untuk project web developer biasa menggunakan Next.js, React.js, dan Laravel.js. Untuk project mobile developer biasa menggunakan Java Android Studio, Next.js, React Vercel, dan Flutter. Untuk project software developer biasa menggunakan Java Android Studio, Next.js, React Electron, dan Flutter. Untuk project game developer biasa menggunakan C# dan Phaser.js.';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 5), // Percepat animasi
      vsync: this,
    )..forward().whenComplete(() {
        setState(() {
          _showPlayIcon = true;
        });
      });

    _textAnimation = IntTween(begin: 0, end: description.length).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );
  }

  Future<void> _playSound() async {
    await _audioPlayer.play(AssetSource('sound/your_sound.mp3'));
  }

  Future<void> _launchInstagramAndWhatsApp() async {
    const urlInstagram = 'https://instagram.com/ikiwygy_';
    const urlWhatsApp = 'https://wa.me/+6285817298071';
    const urlLinkedIn = 'https://linkedin.com/in/rizky-maulana-920343218';

    // Membuka Instagram
    await Future.delayed(Duration(seconds: 0), () => _launchURL(urlInstagram));

    // Setelah 5 detik membuka WhatsApp
    await Future.delayed(Duration(seconds: 5), () => _launchURL(urlWhatsApp));

    // Setelah 5 detik membuka LinkedIn
    await Future.delayed(Duration(seconds: 5), () => _launchURL(urlLinkedIn));

    // Kembali ke halaman CompanyProfile
    setState(() {
      _showUrls = true;
    });
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company Profile'),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.admin_panel_settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdminChatScreen()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => AuthScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.purpleAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/logo.jpeg'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'About Me',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  AnimatedBuilder(
                    animation: _textAnimation,
                    builder: (context, child) {
                      String visibleText =
                          description.substring(0, _textAnimation.value);
                      return Text(
                        visibleText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white70,
                        ),
                      );
                    },
                  ),
                  if (_showPlayIcon)
                    IconButton(
                      icon:
                          Icon(Icons.play_circle_filled, color: Colors.white70),
                      onPressed: _playSound,
                    ),
                  if (_showUrls)
                    Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.link, color: Colors.white70),
                          title: Text(
                            'Instagram: ikiwygy_',
                            style: TextStyle(color: Colors.white70),
                          ),
                          onTap: () =>
                              _launchURL('https://instagram.com/ikiwygy_'),
                        ),
                        ListTile(
                          leading: Icon(Icons.link, color: Colors.white70),
                          title: Text(
                            'WhatsApp: +6285817298071',
                            style: TextStyle(color: Colors.white70),
                          ),
                          onTap: () =>
                              _launchURL('https://wa.me/+6285817298071'),
                        ),
                        ListTile(
                          leading: Icon(Icons.link, color: Colors.white70),
                          title: Text(
                            'LinkedIn: Your LinkedIn Profile',
                            style: TextStyle(color: Colors.white70),
                          ),
                          onTap: () => _launchURL(
                              'https://linkedin.com/in/your-linkedin-profile'),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton.icon(
                onPressed: _launchInstagramAndWhatsApp,
                icon: Icon(Icons.contact_mail),
                label: Text('Contact Us'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  backgroundColor: Colors.deepPurple,
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen()),
                  );
                },
                child: Text('Chat with Us'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  backgroundColor: Colors.purpleAccent,
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ChatScreen and AdminChatScreen classes follow the previous implementation.
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  User? user;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((user) {
      setState(() {
        this.user = user;
      });
    });
  }

  void _sendMessage() async {
    if (_controller.text.trim().isNotEmpty) {
      await _firestore.collection('chat').add({
        'text': _controller.text,
        'sender': user?.email ?? 'Anonymous',
        'timestamp': FieldValue.serverTimestamp(),
      });
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Real-Time Chat'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: _firestore
                  .collection('chat')
                  .orderBy('timestamp', descending: true)
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }

                final messages = snapshot.data!.docs;
                List<MessageBubble> messageWidgets = [];
                for (var message in messages) {
                  final messageText = message['text'];
                  final messageSender = message['sender'];
                  final currentUser = user?.email;

                  final messageWidget = MessageBubble(
                    sender: messageSender,
                    text: messageText,
                    isMe: currentUser == messageSender,
                  );
                  messageWidgets.add(messageWidget);
                }
                return ListView(
                  reverse: true,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  children: messageWidgets,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.deepPurple),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final bool isMe;

  MessageBubble({required this.sender, required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: TextStyle(fontSize: 12.0, color: Colors.black54),
          ),
          Material(
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
            elevation: 5.0,
            color: isMe ? Colors.deepPurple : Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                text,
                style: TextStyle(
                  color: isMe ? Colors.white : Colors.black54,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Admin Screen for viewing and responding to user messages
class AdminChatScreen extends StatefulWidget {
  @override
  _AdminChatScreenState createState() => _AdminChatScreenState();
}

class _AdminChatScreenState extends State<AdminChatScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  User? adminUser;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((user) {
      setState(() {
        adminUser = user;
      });
    });
  }

  void _sendAdminMessage(String chatId, String messageText) async {
    if (messageText.trim().isNotEmpty) {
      await _firestore
          .collection('chat')
          .doc(chatId)
          .collection('messages')
          .add({
        'text': messageText,
        'sender': adminUser?.email ?? 'Admin',
        'timestamp': FieldValue.serverTimestamp(),
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Chat Panel'),
        backgroundColor: Colors.deepPurple,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('chat').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          final chatDocuments = snapshot.data!.docs;
          List<Widget> chatTiles = [];
          for (var doc in chatDocuments) {
            chatTiles.add(ListTile(
              title: Text(doc.id),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminChatDetailScreen(
                      chatId: doc.id,
                    ),
                  ),
                );
              },
            ));
          }

          return ListView(
            children: chatTiles,
          );
        },
      ),
    );
  }
}

// Detail screen where admin can view and respond to a specific chat
class AdminChatDetailScreen extends StatefulWidget {
  final String chatId;

  AdminChatDetailScreen({required this.chatId});

  @override
  _AdminChatDetailScreenState createState() => _AdminChatDetailScreenState();
}

class _AdminChatDetailScreenState extends State<AdminChatDetailScreen> {
  final TextEditingController _controller = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  User? adminUser;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((user) {
      setState(() {
        adminUser = user;
      });
    });
  }

  void _sendMessage() async {
    if (_controller.text.trim().isNotEmpty) {
      await _firestore
          .collection('chat')
          .doc(widget.chatId)
          .collection('messages')
          .add({
        'text': _controller.text,
        'sender': adminUser?.email ?? 'Admin',
        'timestamp': FieldValue.serverTimestamp(),
      });
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with ${widget.chatId}'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: _firestore
                  .collection('chat')
                  .doc(widget.chatId)
                  .collection('messages')
                  .orderBy('timestamp', descending: true)
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }

                final messages = snapshot.data!.docs;
                List<MessageBubble> messageWidgets = [];
                for (var message in messages) {
                  final messageText = message['text'];
                  final messageSender = message['sender'];
                  final isMe = adminUser?.email == messageSender;

                  final messageWidget = MessageBubble(
                    sender: messageSender,
                    text: messageText,
                    isMe: isMe,
                  );
                  messageWidgets.add(messageWidget);
                }
                return ListView(
                  reverse: true,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  children: messageWidgets,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.deepPurple),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
