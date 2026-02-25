let math = Subject(name: "Matemáticas", teacherName: "Mr. Smith", minimunScore: 70)

let spanish = Subject(name: "Español", teacherName: "Mr. Gonzalo", minimunScore: 60)

let biology  = Subject(name: "Biología", teacherName: "Peter Parker", minimunScore: 65)

let economy = Subject(name: "Economía", teacherName: "Sofía Vega", minimunScore: 80)

let student1 = Student(name: "Mich", age: 22, email: "pao.gonzma@gmail.com", subjects: [], scores: [])

let student2 = AdvancedStudent(name: "Jorge", age: 25, email: "ohchochy@gmail.com", subjects: [], scores: [], extraPoints: 10)

let service = StudentsManager(students: [])

service.insertStudent(student: student1)
service.insertStudent(student: student2)

service.asignSubjectToStudent(subject: math, score: 85, targetStudent: student1)
service.asignSubjectToStudent(subject: spanish, score: 70, targetStudent: student1)
service.asignSubjectToStudent(subject: biology, score: 90, targetStudent: student1)


service.asignSubjectToStudent(subject: math, score: 90, targetStudent: student2)
service.asignSubjectToStudent(subject: spanish, score: 60, targetStudent: student2)
service.asignSubjectToStudent(subject: biology, score: 60, targetStudent: student2)


service.generateStudentsReport()
let avarage = service.getAverages()
let subjects = service.getCoursedSubjects()
