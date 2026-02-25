//
//  studentsManager.swift
//  
//
//  Created by Pao Gonzalez on 19/02/26.
//

import Foundation

public protocol Manageable{
    func insertStudent( student: Student?) throws
    func asignSubjectToStudent(subject: Subject, score: Double, targetStudent: Student) throws
    func generateStudentsReport() throws
    func getApprovedStudents() -> [Student]
    func getReprobedStudents() -> [Student]
    func getAverages() -> [Double]
    func getTotalAvarages() -> Double
    func getCoursedSubjects() -> Set<Subject>
    
}

public class StudentsManager: Manageable{
    
    var students: [Student]
    let maxStudents: Int
    
    public init(students: [Student], maxStudents: Int) {
        self.students = students
        self.maxStudents = maxStudents
    }
    
    //MANEJO DE ERRORES CON GUARD, REVISA SI EL CALOR QUE LE DAS ES VERDADERO
    //es para tener un codigo seguro
    public func insertStudent(student: Student?) throws {
        guard let student else{
            throw ManagerError.studentNotAddedError
        }
        if (students.count < maxStudents) {
            self.students.append(student)
        } else {
            throw ManagerError.maxStudentsReachedError(max: maxStudents)
        }
        
    }
    
    public func asignSubjectToStudent(subject: Subject, score: Double, targetStudent: Student) throws{
        for currentStudent in students{
            if targetStudent.email == currentStudent.email {
                currentStudent.assignSubject(subject: subject, score: score)
                
            } else{
                throw ManagerError.subjectNotAssignedError
            }
        }
        
    }
    
    public func generateStudentsReport() throws {
        if students.isEmpty {
            throw ManagerError.reportNotFoundError
        } else{
            for currentStudent in self.students{
                print(currentStudent.describe())
            }
        }
        
        
    }
    
    //Vamos a implementar filter (filtra)
    public func getApprovedStudents() -> [Student] {
        return students.filter { student in
            return student.isApproved()
            
        }
        
    }
    
    public func getReprobedStudents() -> [Student] {
        return students.filter { student in
            return !student.isApproved()
            
        }
        
    }
    
    //Función map. Puedo mapear una lista en una lista de otro tipo
    public func getAverages() -> [Double] {
        
        return students.map { student in
            return student.getAvarageScore()
            
        }
    }
    
    public func getTotalAvarages() -> Double {
        let avr = getAverages()
        let sum = avr.reduce(0.0, +)
        return sum / Double(avr.count)
    }
    
    //Función reduce: reduce un arreglo en un valor único final
    public func getCoursedSubjects() -> Set<Subject> {
        return students.reduce(into: Set<Subject>()) { result, student in
            for subject in student.subjects {
                result.insert(subject)
            }
            
        }
    }
    
    
}
