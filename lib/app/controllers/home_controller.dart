import 'package:get/get.dart';

class HomeController extends GetxController{

}


/*
onInit(): Controller initialize হওয়ার সময় কল হয়। এখানে আপনার প্রাথমিক setup, যেমন API call বা initial data load করা যায়।
onReady(): যখন Controller সম্পূর্ণভাবে UI এর সাথে যুক্ত হয়ে যায় তখন এটি কল হয়।
onClose(): Controller dispose করার সময় এই মেথডটি কল হয়, যাতে আপনি resource বা memory release করতে পারেন।


GetxController এর মাধ্যমে Rx (reactive) variables ব্যবহার করে UI কে সহজে reactive করা যায়।
উদাহরণস্বরূপ, যদি আপনি একটি count variable (.obs) ব্যবহার করেন, তবে Obx widget ব্যবহার করে সেই variable এর পরিবর্তনে UI স্বয়ংক্রিয়ভাবে আপডেট হবে।
 */