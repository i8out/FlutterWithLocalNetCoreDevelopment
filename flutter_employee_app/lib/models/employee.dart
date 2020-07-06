class Employee {
  int employeeId;
  String lastName;
  String firstName;
  String title;
  String titleOfCourtesy;
  String birthDate;
  String hireDate;
  String address;
  String city;
  String region;
  String postalCode;
  String country;
  String homePhone;
  String extension;
  String photo;
  String notes;
  int reportsTo;
//  String photoPath;
//  String photoString;

  Employee({
    this.employeeId,
    this.lastName,
    this.firstName,
    this.title,
    this.titleOfCourtesy,
    this.birthDate,
    this.hireDate,
    this.address,
    this.city,
    this.region,
    this.postalCode,
    this.country,
    this.homePhone,
    this.extension,
    this.photo,
    this.notes,
    this.reportsTo,
  });

  Employee.fromJson(Map json) {
    this.employeeId = json['employeeId'];
    this.lastName = json['lastName'];
    this.firstName = json['firstName'];
    this.title = json['title'];
    this.titleOfCourtesy = json['titleOfCourtesy'];
    this.birthDate = json['birthDate'];
    this.hireDate = json['hireDate'];
    this.address = json['address'];
    this.city = json['city'];
    this.region = json['region'];
    this.postalCode = json['postalCode'];
    this.country = json['country'];
    this.homePhone = json['homePhone'];
    this.extension = json['extension'];
    this.photo = json['photo'];
    this.notes = json['notes'];
    this.reportsTo = json['reportsTo'];
  }
}
