# Flutter-Tutorial

github สำหรับสอนเขียน Flutter

## การติดตั้ง

 - **Windowns**
	1. Download Flutter SDK (https://docs.flutter.dev/get-started/install/windows)
	2. แตกไฟล์ที่ดาวน์โหลดจากข้อ 1 (ที่ไหนก็ได้แต่ในเว็ปจะให้แตกไฟล์ไว้ที่ C:\src\flutter)
	3. Update Environment ในเครื่อง โดยการกดปุ่ม Windowns ที่คีย์บอร์ดและพิมพ์คำว่า **Edit environment variables for your account**. จากนั้นให้เลือกไปที่ Path ภายใต้ **User variables** (ด้านบน) จากนั้นคลิกที่ Edit ให้เราใส่ Path ของ flutter\bin ที่ได้จากการแตกไฟล์ด้านบน และทดสอบโดยการใช้คำสั่ง 
	``` batch
	where flutter dart
	``` 
	4. เมื่อข้อที่ 3 ใน command line หา path เจอแล้วให้ ใช้คำสั่ง 
	``` batch
	flutter doctor
	```
	เพื่อ check ว่าเครื่องเรายังขาดส่วนไหนอยู่
	5. ลง JAVA SDK (https://www.oracle.com/java/technologies/downloads/)
	6. ลง Android Studio (https://developer.android.com/studio)
	
**หากทำครบทั้งหมดแล้วให้ลองใช้คำสั่งข้อ 4 เพื่อ Check ส่วนที่ยังขาดอยู่และทำการติดตั้ง**

- **Mac**
	1. หากเป็นเครื่องใหม่ที่ใช้ cpu apple silicon ให้ใช้คำสั่งด้านล่างก่อน
	``` batch 
	sudo softwareupdate --install-rosetta --agree-to-license
	```
	2. Download Flutter SDK (https://docs.flutter.dev/get-started/install/macos)
	3. ใช้ command line ไปที่ Folder ที่ต้องการติดตั้ง และใช้คำสั่งแตกไฟล์ที่ดาวน์โหลดมาเช่น
	``` batch
	cd ~/development
	unzip ~/Downloads/flutter_macos_3.7.11-stable.zip
	```
	4. จากนั้นให้ทำการประกาศตัวแปร Environment ด้วยคำสั่ง 
	``` batch
	export PATH="$PATH:`pwd`/flutter/bin"
	```
	5. ลง Android Studio (https://developer.android.com/studio)
	6. ลง Xcode โดยการค้นหาจาก App Store และ Search หา Xcode

**หากทำครบทั้งหมดแล้วให้ลองใช้คำสั่งด้านล่าง เพื่อ Check ส่วนที่ยังขาดอยู่และทำการติดตั้ง**
``` batch
flutter doctor
```

cr.https://docs.flutter.dev/get-started/install
## วิธีสร้างโปรเจค

ให้ใช้คำสั่งดังต่อไปนี้ 
``` batch
flutter create my_project_name
```
หรือจะใช้ Extension ของทาง VSCode ก็ได้ 
Extension **Flutter**,**Dart** ใช้สำหรับ Develop flutter ใน vscode

## เริ่มต้นเขียนภาษา Dart
เมื่อสร้างโครงการ Flutter แล้ว จะเจอกับ Folder และ File ที่สำคัญ ดังนี้
 - android ใช้สำหรับ coding หรือ config ส่วนต่างๆของฝั่ง android
 - ios ใช้สำหรับ coding หรือ config ส่วนต่างๆของฝั่ง ios
 - lib ใช้สำหรับ coding เป็นหลักในภาษา Dart โดยเมื่อเริ่ม Run จะเริ่มจากไฟล์ main.dart
 - pubspec.yaml ใช้สำหรับลง Library และตั้งค่า assets ในการเก็บไฟล์ต่างๆที่ใช้ในโครงการรวมไปถึง Version ที่ใช้สำหรับ Develop และ Version ของแอป การ config Front ต่างๆ จะรวมอยู่ในไฟล์นี้

### การประกาศตัวแปร
1. var ตัวแปรนี้จะกำหนด type อัตโนมัติตามค่าที่ถูกกำหนด เช่น 
	```
	var a = 1;
	
	ตัวแปร a จะมี type เป็น int
	```
2. int การประตัวแปรให้เป็น type int เช่น 
	```
	int a = 1;
	```
3. String การประกาศตัวแปรให้เป็น type String
	```
	String a = "ทดสอบ";
	```
4. const การประกาศตัวแปรคงที่ ไม่สามารถเปลี่ยนแปลงค่าได้ เช่น
	```
	const String a = "ทดสอบ";
	const int b = 1;
	const double c = 1.2;
	```
5. final การประตัวแปรคงที่ เหมือนกับ const แต่จะสามารถประกาศโดยไม่ต้องให้ค่าก่อนได้ และมากำหนดค่าทีหลัง เช่น
	```
	final String a;
	a = "ทดสอบ";
	```
6. List เป็นตัวแปร Array สามารถกำหนด type ไปก่อนหรือไม่ต้องก็ได้เช่น
	```
	List arrayA = [];
	List<String> arrayString = [];
	```
7. Map เป็นตัวแปร Object ที่มี Key และ Value เหมือน Dictionary ของ C# แต่สามารถกำหนด Type ของ Key และ Value ได้
	```
	Map<dynamic,dynamic> map = {"asdasdas":1,2:"asdsad"};
	Map<String,int> mapStringInt = {"test":1,"test2":2};
	```
8. dynamic เป็นตัวที่สามารถเปลี่ยน type ได้ เช่น
	```
	dynamic dyTest = "string";
	dyTest = 1;
	dyTest = 2.2;
	```
9. bool เป็นตัวแปรประเภท boolean เช่น
	```
	bool isPass = false;
	```  
> ตัวแปรของ Dart ไม่ได้มีแค่นี้เป็นเพียงแค่การยกตัวอย่างเท่านั้น สามารถศึกษาเพิ่มเติมได้ที่ (https://dart.dev/language/variables) และ (https://dart.dev/language/built-in-types)
