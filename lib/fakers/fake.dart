import 'package:faker/faker.dart';

class Person {
  String firstName;
  String lastName;
  int age;
  String gender;
  String profileImage;
  String profession;
  String nationality;
  String email;
  String phoneNumber;
  String bloodGroup;
  String address;

  Person({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.gender,
    required this.profileImage,
    required this.profession,
    required this.nationality,
    required this.email,
    required this.phoneNumber,
    required this.bloodGroup,
    required this.address,
  });

  @override
  String toString() {
    return 
    'Name: $firstName $lastName\n'
    'Age: $age\n'
    'Gender: $gender\n'
    'Profile Image: $profileImage\n'
    'Profession: $profession\n'
    'Nationality: $nationality\n'
    'Email: $email\n'
    'Phone Number: $phoneNumber\n'
    'Blood Group: $bloodGroup\n'
    'Address: $address\n';
  }
}

List<Person> generateFakePeople(int count) {
  var faker = Faker();
  List<Person> people = [];

  for (int i = 0; i < count; i++) {
    String firstName = faker.person.firstName();
    String lastName = faker.person.lastName();
    int age = faker.date.dateTime(minYear: 1950, maxYear: 2020).year;
    String gender = faker.randomGenerator.boolean() ? 'Male' : 'Female';
    String profileImage = faker.image.image();
    String profession = faker.job.title();
    String nationality = faker.address.country();
    String email = faker.internet.email();
    String phoneNumber = faker.phoneNumber.us();
    String bloodGroup = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'][faker.randomGenerator.integer(8)];
    String address = '${faker.address.streetAddress()}, ${faker.address.city()}, ${faker.address.country()}';

    people.add(Person(
      firstName: firstName,
      lastName: lastName,
      age: DateTime.now().year - age,
      gender: gender,
      profileImage: profileImage,
      profession: profession,
      nationality: nationality,
      email: email,
      phoneNumber: phoneNumber,
      bloodGroup: bloodGroup,
      address: address,
    ));
  }

  return people;
}

void main() {
  List<Person> fakePeople = generateFakePeople(10); // You can change the number to generate more data

  for (var person in fakePeople) {
    print(person);
    print('---');
  }
}
