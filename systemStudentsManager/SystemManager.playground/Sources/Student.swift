//
//  Student.swift
//  
//
//  Created by Pao Gonzalez on 17/02/26.
//

import Foundation
public class Student {
    let name: String
    let age: Int
    let email: String
    let subjects: [Subject]
    let scores: [Double]
    
    public init(name: String, age: Int, email: String, subjects: [Subject], scores: [Double]) {
        self.name = name
        self.age = age
        self.email = email
        self.subjects = subjects
        self.scores = scores
    }
    
    public func studentDescription() -> String {
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
            description += "\n\(contador). \n\(subject.subjectDescription())"
            contador+=1
        }
        return description
    }
    
}
        
        
    
    
    
    


