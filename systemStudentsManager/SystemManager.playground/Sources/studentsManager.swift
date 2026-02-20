//
//  studentsManager.swift
//  
//
//  Created by Pao Gonzalez on 19/02/26.
//

import Foundation

public protocol Manageable{
    func insertStudents( student: Student)
    func asignSubjectToStudent(subject: Subject, score: Double, targetStudent: Student)
    func generateStudentReport() -> [Student]
    func getApproveStudents() -> [Student]
    func getAverages() -> [Double]
    func getTotalAvarages() -> Double
    func getCoursedSubjects() -> Set<Subject>
    
}

public class StudentsManager: Manageable{
    
    var students: [Student]
    public init(students: [Student]) {
        self.students = students
    }
    
    public func insertStudents(student: Student) {
        self.students.append(student)
    }
    
    public func asignSubjectToStudent(subject: Subject, score: Double, targetStudent: Student) {
        for currentStudent in students{
            if targetStudent.email == currentStudent.name {
                currentStudent.assignSubject(subject: subject, score: score)
                
            }
        }
        
    }
    
    public func generateStudentReport() -> [Student] {
        for currentStudent in self.students{
            print(students.description)
        }
        
        return []
    }
    
    public func getApproveStudents() -> [Student] {
        return []
    }
    
    public func getAverages() -> [Double] {
        return []
    }
    
    public func getTotalAvarages() -> Double {
        return 0
    }
    
    public func getCoursedSubjects() -> Set<Subject> {
        
        return Set<Subject>()
    }
    
    
}
