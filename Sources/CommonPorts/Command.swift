import Foundation

/// A `Command` may be used to trigger simple business logic of a use case.
public protocol Command {
    associatedtype inDTOType
    associatedtype outDTOType

    /// Executes the UseCase.
    ///
    /// - parameter inDTO: Encapsulated inDTO parameters.
    /// - returns: Result with outDTOType 
    func execute(inDTO : inDTOType) async throws -> outDTOType
}
