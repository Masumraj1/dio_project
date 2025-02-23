import 'package:get/get.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    // ✅✅✅✅Eager initialization✅✅✅✅ - instance তৈরি হবে এখনই
    // Get.put(() => AuthController(), permanent: true);

    // ✅✅✅✅Lazy initialization✅✅✅✅ - instance তৈরি হবে যখন প্রয়োজন হবে
    // Get.lazyPut(() => AuthController(), fenix: true);
  }
}

/*

//✅✅✅✅ Why i Use Get.lazyPut??✅✅✅✅

আপনি Get.lazyPut() ব্যবহার করেছেন, যা নিশ্চিত করে যে controller গুলো তখন instantiate হবে যখন সত্যিই
 দরকার হবে।এতে memory-র উপর অতিরিক্ত চাপ কমে যায়।
 Fenix: true থাকায় যদি কোনো controller dispose হয়েযায়, পুনরায় প্রয়োজনে তা reinitialize হবে।


// ✅✅✅✅When I use Get.lazyput?✅✅✅✅

যদি আপনি চান যে, controller বা dependency শুধুমাত্র যখন দরকার তখন instantiate হোক,
 তাহলে Get.lazyPut ব্যবহার করা ভালো। এতে করে unnecessary memory usage কমে এবং performance উন্নত হয়।

 //✅✅✅✅ Why use Permanent true ?✅✅✅✅
 permanent: true:
এই option টি ব্যবহার করলে AuthController instance টি সারা App lifetime ধরে memory তে থাকবে, অর্থাৎ, এটি dispose বা বন্ধ হয়ে যাবে না যতক্ষন না App সম্পূর্ণভাবে বন্ধ করা হয়।


✅✅✅✅ GetX-এ মূলত দু’প্রকার initialization পদ্ধতি ব্যবহার করা হয়:✅✅✅✅

✅✅✅✅Eager Initialization:
Instance তৈরি হয় binding execution এর সময়।
App শুরুতেই সব instance উপস্থিত থাকে, যা যদি প্রয়োজন হয় তবে দ্রুত access করা যায়।

✅✅✅✅Lazy Initialization:
Instance তৈরি হয় শুধুমাত্র যখন প্রথমবার প্রয়োজন হয়।
Memory ও performance optimization এর জন্য উপযুক্ত, কারণ শুধুমাত্র দরকার হলে instance তৈরি হয়।
 */
