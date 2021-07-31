import 'package:get/get.dart';
import 'package:getxlearning/ReactiveStateManager/helpers/student.dart';
import 'package:getxlearning/ReactiveStateManager/helpers/student2.dart';

class MyController extends GetxController {
  Student student = Student();
  Rx<Student2> student2 = Student2(name: 'Waqar', age: 21).obs;

  void convertToUpperCaseForIndividualVariables() {
    student.name.value = student.name.value.toUpperCase();
  }

  void convertToUpperCaseForEntireClass() {
    student2.update((std2) {
      std2?.name = std2.name.toString().toUpperCase();
    });
  }
}
