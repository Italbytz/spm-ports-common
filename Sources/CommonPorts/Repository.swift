import Foundation

/// A `Repository` represents a data storage.
public protocol Repository {
    associatedtype idType
    associatedtype entityType
    
    /// Create an entity.
    ///
    /// - parameter entity: The entity to create.
    /// - returns: ID of the created entity.
    func create(entity: entityType) async -> Result<idType,Error>
    
    /// Retrieves an entity.
    ///
    /// - parameter id: ID of the entity to retrieve.
    /// - returns: An entity.
    func retrieve(id: idType) async -> Result<entityType,Error>

    /// Retrieves all entities.
    ///
    /// - returns: All entities.
    func retrieveAll() async -> Result<[entityType],Error>

    /// Updates an entity.
    ///
    /// - parameter id: ID of the entity to update.
    /// - parameter entity: Updated entity.
    /// - returns: Boolean indicating success or failure.
    func update(id: idType, entity: entityType) async -> Result<Bool,Error>

    /// Deletes an entity.
    ///
    /// - parameter id: ID of the entity to delete.
    /// - returns: Boolean indicating success or failure.
    func delete(id: idType) async -> Result<Bool,Error>

}

