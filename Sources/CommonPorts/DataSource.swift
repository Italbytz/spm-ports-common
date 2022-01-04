import Foundation

/// A `DataSource` represents a data source (the R of CRUD).
public protocol DataSource {
    associatedtype idType
    associatedtype entityType

    /// Retrieves an entity.
    ///
    /// - parameter id: ID of the entity to retrieve.
    /// - returns: An entity.
    func retrieve(id: idType) async throws -> entityType

    /// Retrieves all entities.
    ///
    /// - returns: All entities.
    func retrieveAll() async throws -> [entityType]

}
