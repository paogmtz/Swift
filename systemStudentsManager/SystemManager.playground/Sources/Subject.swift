//
//  Subject.swift
//  
//
//  Created by Pao Gonzalez on 17/02/26.
//

import Foundation

public struct Subject: Describable, Hashable {
    let name: String
    let teacherName: String
    let minimunScore: Double
    
    public init(name: String, teacherName: String, minimunScore: Double) {
        self.name = name
        self.teacherName = teacherName
        self.minimunScore = minimunScore
    }
    
    public func isPassed(score: Double) -> Bool {
        return score >= minimunScore
    }
    
    public func describe() -> String {
        return """
        --------------------------------
        Materia: \(name)
        Profesor: \(teacherName)
        Puntaje mínimo para pasar: \(minimunScore)
        """
    }
    
}
