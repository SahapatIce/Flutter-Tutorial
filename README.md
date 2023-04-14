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
### การสร้าง Function
```
String getDataType(int nType){
	String a = "";
	if(nType == 1){
		a = "ประเภทหลัก";
	}else{
		a = "ประเภทย่อย";
	}
	return a;
}
```
เหมือนกับภาษาอื่นๆทั่วไป แต่จะแตกต่างกันตรงการใช้งาน Parameter ที่เป็น optional 
หากต้องใช้ Parameter ที่ไล่เรียงจากซ้ายไปขวาและเป็น optional ให้ใช้ตามตัวอย่างนี้
```
String getDataType(int nType,[String sFixType = "",String sSuffixType = ""]){
	String a = "";
	if(sFixType.isNotEmpty){
		a = "${sFixType} ${sSuffixType.isNotEmpty ? sSuffixType : ""}";
	}else{
		if(nType == 1){
			a = "ประเภทหลัก  ${sSuffixType.isNotEmpty ? sSuffixType : ""}";
		}else{
			a = "ประเภทย่อย  ${sSuffixType.isNotEmpty ? sSuffixType : ""}";
		}
	}
	
	return a;
}
String resultFunction = getDataType(1,"ประเภทสินค้า","สาขา 1");
//ค่าที่ได้จะเป็น ประเภทสินค้า สาขา 1

resultFunction = getDataType(1);
//ค่าที่ได้จะเป็น ประเภทหลัก

resultFunction = getDataType(1,"","สาขา 1");
//ค่าที่ได้จะเป็น ประเภทหลัก สาขา 1
```
 หากต้องการประกาศ Function โดยมี Parameter แบบ optional และไม่ต้องการให้เรียงจากซ้ายไปขวาสามารถ กำหนดเป็นรายตัวได้ให้ใช้ตามตัวอย่างนี้
```
String getDataType(int nType,{String sFixType = "",String sSuffixType = ""}){
	String a = "";
	if(sFixType.isNotEmpty){
		a = "${sFixType} ${sSuffixType.isNotEmpty ? sSuffixType : ""}";
	}else{
		if(nType == 1){
			a = "ประเภทหลัก  ${sSuffixType.isNotEmpty ? sSuffixType : ""}";
		}else{
			a = "ประเภทย่อย  ${sSuffixType.isNotEmpty ? sSuffixType : ""}";
		}
	}
	
	return a;
}
String resultFunction = getDataType(1,sFixType :"ประเภทสินค้า", sSuffixType:"สาขา 1");
//ค่าที่ได้จะเป็น ประเภทสินค้า สาขา 1

resultFunction = getDataType(1);
//ค่าที่ได้จะเป็น ประเภทหลัก

resultFunction = getDataType(1,sSuffixType:"สาขา 1");
//ค่าที่ได้จะเป็น ประเภทหลัก สาขา 1
```

> สามารถอ่านเพิ่มเติมได้ที่ (https://dart.dev/language/functions)

### การสร้าง class 
 1. สร้าง class สำหรับเขียน ui 
 
	1.1. Stateless
			- การสร้างแบบ Stateless คือการสร้าง widget (หรือที่เรียกกันว่า component) ที่ไม่มี state ในตัว เป็นการสร้างที่จะไม่มีการ render ใหม่เมื่อค่าถูกเปลี่ยนแปลง เป็น widget ที่ไม่ถูกเปลี่ยนแปลง
	```
	class  MyWidget  extends  StatelessWidget {

	const  MyWidget({super.key});
	@override
	Widget  build(BuildContext  context) {
		return  Container();
		}
	}
	```
			
	1.2. Stateful 
			- การสร้างแบบ Stateful คือการสร้าง widget ที่มี state เมื่อตัวแปร state ที่ถูกประกาศไว้ถูก setstate ใหม่ widget ตัวนี้จะถูก rerender ใหม่
	```
	class  MyWidget  extends  StatefulWidget {
	const  MyWidget({super.key});
	@override
	State<MyWidget> createState() => _MyWidgetState();
	}

	class  _MyWidgetState  extends  State<MyWidget> {
		int  _counter = 0;
		void  _incrementCounter() {
			setState(() {
			_counter++;
			});
		}
		
		@override
		Widget  build(BuildContext  context) {
		return  Container();
		}
	}
	``` 	

> จากตัวอย่าง ตัวแปร state คือ _counter หาก _counter ถูกเปลี่ยนแปลงค่า
> widget นี้จะถูก render ใหม่

ส่วนที่ return สำหร้บทั้ง 2 แบบเป็นส่วนที่เขียน UI 

2. การสร้าง class แบบปกติ
	```
	class  ModelA {
	String  sID;
	int  nNo;
	bool  isDelete;
	double? dCurrency;
	ModelA({this.isDelete = false,required  this.sID,required  this.nNo});
	}
	``` 
	
	จากตัวอย่างคือการสร้าง class ที่ชื่อว่า ModelA โดยมี argument เป็น sID nNo isDelete และ dCurrency จะเห็นได้ว่า sID และ nNo ถูกบังคับให้ส่งมาจาก constructor ของ class 
	หากต้องการกำหนดค่าเมื่อไม่ได้ถูกส่งมาหรือไม่ required ก็จำเป็นจะต้องกำหนดค่าให้เหมือนกับตัวแปร isDelete ที่ถูกกำหนดมาเป็น false หากไม่ส่งมา

	ส่วนที่อยู่ใน constructor นั้นจะเป็นค่าที่สามารถส่งมาได้เมื่อเรียก class หากไม่ได้อยู่ใน constructor จะไม่สามารถส่งค่ามาได้ จะสังเกตุได้ว่า ตัวแปร dCurrency ไม่ได้ถูกใส่ไว้ที่ constructor เมื่อเรียก class นี้จะไม่สามารถส่งค่า dCurrency มาได้

	2.1. การสร้าง method หรือ function ภายใน class
		
	สามารถทำได้ ดังนี้
	```
	class  ModelA {
	String  sID;
	int  nNo;
	bool  isDelete;
	double? dCurrency;

	ModelA({this.isDelete = false, required  this.sID, required  this.nNo});
		
		factory  ModelA.fromJson(Map<String, dynamic> json) {
			return  ModelA(
			sID: json["sID"] ?? "",
			nNo: json["nNo"] ?? 0,
			isDelete: json["isDelete"],
			);
		}

		Map<String, dynamic> toJson() {
			return {
			"sID": sID,
			"nNo": nNo,
			"isDelete": isDelete,
			"dCurrency": dCurrency,
			};
		}

	}
	```	
	จากตัวอย่างจะมี 2 method อยู่ 1 method และมี factory function อยู่ 1 function ภายใน class ของ ModelA 
	
	**ModelA.fromJson** คือ factory function ที่ถูกประกาศภายใต้ class หมายความว่า คือ function ที่จะ return class ModelA ออกมาโดยการส่ง Paramenter ที่เป็น Type Map<String,dynamic> เข้าไป 
	```
	Map<String,dynamic> jsonDemo = {"sID":"ทดสอบ","nNo":1,"isDelete":true};
	ModelA objModel = ModelA.fromJson(jsondemo);
	``` 
	จากตัวอย่าง jsonDemo เป็นการยกตัวอย่างหากยิง api แล้วได้ค่าเป็น json แล้วจะมาแปลงเป็น class ได้ด้วยวิธีนี้

	**toJson()** คือ method ภายใต้ class นี้ การใช้งานจะไม่เหมือนกับ factory fuction เนื่องจากการเรียกใช้ method จะต้องมีค่าใน class ก่อน ยกตัวอย่างเช่น ต้องการส่ง Parameter ไปที่ Api ด้วย class ดังนั้นจะต้องแปลง class ให้เป็น json ก่อนโดยใช้ method นี้ 
	```
	Map<String, dynamic> mapToJson = objModel.toJson();
	```	

	 ***ข้อควรระวัง 
	 การแปลง json result api มาเป็น class
	 จะต้องมั่นใจได้ว่าค่านั้นเป็นตัวแปรประเภทอะไร 
	 และหากสามารถเป็น null ได้ 
	 จะต้อง assign ค่ากรณีเป็น null หรือประกาศตัวแปรของ class เป็น null
	หากค่าที่ได้ไม่ตรงกับตัวแปรของ class ตัวภาษา dart จะข้าม process นี้ไปและ return							เป็น null ทั้งหมด (จะไม่ error และหยุดทำงาน)***

> ทั้งหมดนี้เป็นเพียงแค่การยกตัวอย่างมาเท่านั้น ไม่ใช่ทั้งหมดของภาษา
> สามารถอ่านต่อได้ที่ (https://dart.dev/language/classes)

### Folder Template
![ตัวอย่าง Folder](https://drive.google.com/file/d/1k_H1xUzJufApRjIgSH0TZkqi61bPEncR/view?usp=sharing)
### การสร้าง Page
### การสร้าง Route
### การ Call API

