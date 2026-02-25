//
//  ManagerError.swift
//  
//
//  Created by Pao Gonzalez on 25/02/26.
//

import Foundation
public enum ManagerError: Error, LocalizedError {
    case studentNotAddedError
    case subjectNotAssignedError
    case reportNotFoundError
    case maxStudentsReachedError(max: Int)
    
    public var errorDescription: String? {
        switch self {
        case .studentNotAddedError:
            return "El estudiante no se puede agregar"
        case .subjectNotAssignedError:
            return "No se pudo asignar la materia"
        case .reportNotFoundError:
            return "El reporte no se pudo encontrar porque la lista de estudiantes está vacía"
        case .maxStudentsReachedError(max: let max):
            return "La cantidad máxima de estudiantes es: \(max) y ya fue alcanzada"
        }
    }
}
