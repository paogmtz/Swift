//
//  AdvancedStudent.swift
//  
//
//  Created by Pao Gonzalez on 18/02/26.
//

import Foundation
public class AdvancedStudent: Student {
    let extraPoints: Double
    
    public init(name: String, age: Int, email: String, subjects: [Subject], scores: [Double], extraPoints: Double) {
        self.extraPoints = extraPoints
        super.init(name: name, age: age, email: email, subjects: subjects, scores: scores)
    }
    
    public override func studentDescription() -> String {
        var description = """
            ***********************************
            ESTUDIANTE AVANZADO
            ***********************************
            Nombre: \(name)
            Edad: \(age)
            Email: \(email)
            Puntos extra: \(extraPoints)
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
