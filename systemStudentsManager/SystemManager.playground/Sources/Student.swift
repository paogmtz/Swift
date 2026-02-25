//
//  Student.swift
//  
//
//  Created by Pao Gonzalez on 17/02/26.
//

import Foundation
public class Student: Describable {
    let name: String
    let age: Int
    let email: String
    var subjects: [Subject]
    var scores: [Double]
    
    public init(name: String, age: Int, email: String, subjects: [Subject], scores: [Double]) {
        self.name = name
        self.age = age
        self.email = email
        self.subjects = subjects
        self.scores = scores
    }
    
    public func describe() -> String {
        var description = """
            ***********************************
            ESTUDIANTE
            ***********************************
            Nombre: \(name)
            Edad: \(age)
            Email: \(email)
            Materias: 
            """
        var contador = 1
        
        
        for subject in subjects {
            description += "\n\(contador). \n\(subject.describe())"
            contador+=1
        }
        return description
    }
    
    public func assignSubject(subject: Subject, score: Double) {
        self.subjects.append(subject)
        self.scores.append(score)
    }
    
    //Debe tener el 60% de las materias pasadas
    public func isApproved() -> Bool {
        if subjects.isEmpty { return false }
        var counterApprovedSubjects: Double = 0
        var percentageSubjectsPassed: Double = 0
        let totalSubjects = self.subjects.count
        
        for i in 0..<totalSubjects {      // .count: es una propiedad que te dice la cantidad total de elementos que hay dentro de una colección
            
            if subjects[i].isPassed(score: scores[i]){
                counterApprovedSubjects += 1
            }
        }
        
        percentageSubjectsPassed = (counterApprovedSubjects*100) / Double(self.subjects.count)
        
        return percentageSubjectsPassed >= 60.0
        
    }
    
    public func getAvarageScore() -> Double {
        if scores.isEmpty { return 0.0 }
        var sum : Double = 0
        let totalScore: Int = self.scores.count
        for i in 0..<totalScore {
           sum += scores[i]
        }
        
        return sum / Double(totalScore)
    }
    
}
        
        
    
    
    
    


