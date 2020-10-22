import Foundation

/// A `Command` may be used to trigger simple business logic of a use case.
public protocol Command {
    associatedtype inDTOType
    associatedtype outDTOType

    /// Executes the UseCase.
    ///
    /// - parameter inDTO: Encapsulated inDTO parameters.
    /// - parameter completion: Closure for completion
    func execute(inDTO : inDTOType,
                 completion: @escaping (Result<outDTOType,Error>) -> Void)
}
