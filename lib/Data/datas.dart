class Specialist {
  final title, doctorName, speciality, imgPath;
  Specialist(this.title, this.doctorName, this.speciality, this.imgPath);
}

class Category {
  final iconpath, categoryName;
  Category(this.categoryName, this.iconpath);
}

class AvailableDoctor {
  final doctorName,
      doctorSpetialist,
      numOfRating,
      experiance,
      patients,
      imgPath;
  AvailableDoctor(this.doctorName, this.doctorSpetialist, this.numOfRating,
      this.experiance, this.patients, this.imgPath);
}

class Datas {
  List<AvailableDoctor> doctors = [
    AvailableDoctor("Serena Gome", "Medicine Specialist", 5, "8 Years", "1.08K",
        "assets/images/Serena_Gome.png"),
    AvailableDoctor("Asma Khan", "Medicine Specialist", 4, "5 Years", "2.7K",
        "assets/images/Asma_Khan.png"),
    AvailableDoctor("Kiran Shakia", "Medicine Specialist", 4, "6 Years",
        "3.08K", "assets/images/Kiran_Shakia.png"),
    AvailableDoctor("Masuda Khan", "Medicine Specialist", 3, "10 Years", "2.07K",
        "assets/images/Masuda_Khan.png"),
    AvailableDoctor("Salina Zaman", "Medicine Specialist", 4, "7 Years", "4K",
        "assets/images/Salina_Zaman.png"),
    AvailableDoctor("Johir Raihan", "Medicine Specialist", 5, "9 Years",
        "2.8K", "assets/images/Johir_Raihan.png"),
        
  ];
  List<AvailableDoctor> availableDoctorList = [
    AvailableDoctor("Serena Gome", "Medicine Specialist", 5, "8 Years", "1.08K",
        "assets/images/Serena_Gome.png"),
    AvailableDoctor("Asma Khan", "Medicine Specialist", 4, "5 Years", "2.7K",
        "assets/images/Asma_Khan.png"),
    AvailableDoctor("Kiran Shakia", "Medicine Specialist", 4, "6 Years",
        "3.08K", "assets/images/Kiran_Shakia.png"),
  ];
  List<Specialist> specialityLists = [
    Specialist(
        "Looking For Your Desire Specialist Doctor?",
        "Asma Khan",
        "Medicine & Heart Specialist Good Health Clinic",
        "assets/images/Asma_Khan.png"),
    Specialist(
        "Looking For Your Desire Specialist Doctor?",
        "Kiran Shakia",
        "Medicine & Nerologist Good Health Clinic",
        "assets/images/Kiran_Shakia.png"),
    Specialist(
        "Looking For Your Desire Specialist Doctor?",
        "Salina Zaman",
        "Medicine & Dematologist Good Health Clinic",
        "assets/images/Salina_Zaman.png"),
  ];

  List<Category> categoryList = [
    Category("Pediatrician", "assets/icons/Pediatrician.svg"),
    Category("Neurosurgeon", "assets/icons/Neurosurgeon.svg"),
    Category("Cardiologist", "assets/icons/Cardiologist.svg"),
    Category("Psychiatrist", "assets/icons/Psychiatrist.svg"),
    Category("Cardiologist", "assets/icons/Cardiologist.svg"),
    Category("Cardiologist", "assets/icons/Cardiologist.svg")
  ];
}
