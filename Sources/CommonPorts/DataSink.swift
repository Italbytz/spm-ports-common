import Foundation

/// A `DataSink` represents a data sink (the CUD of CRUD).
public protocol DataSink {
    associatedtype idType
    associatedtype entityType
    
    /// Create an entity.
    ///
    /// - parameter entity: The entity to create.
    /// - returns: ID of the created entity.
    func create(entity: entityType) async throws -> idType
    
    /// Updates an entity.
    ///
    /// - parameter id: ID of the entity to update.
    /// - parameter entity: Updated entity.
    /// - returns: Boolean indicating success or failure.
    func update(id: idType, entity: entityType) async throws -> Bool

    /// Deletes an entity.
    ///
    /// - parameter id: ID of the entity to delete.
    /// - returns: Boolean indicating success or failure.
    func delete(id: idType) async throws -> Bool

}

