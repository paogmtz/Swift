let math = Subject(name: "Math", teacherName: "Mr. Smith", minimunScore: 70)

let student1 = Student(name: "Mich", age: 22, email: "pao.gonzma@gmail.com", subjects: [math], scores: [9.5])

let student2 = AdvancedStudent(name: "Jorge", age: 25, email: "ohchochy@gmail.com", subjects: [math], scores: [8], extraPoints: 1)

let descStudent1 = student1.describe()

let descStudent2 = student2.describe()

print(descStudent1)
print(descStudent2) 
