import Foundation

/// A `Repository` represents a data storage.
public protocol Repository {
    associatedtype idType
    associatedtype entityType
    
    /// Create an entity.
    ///
    /// - parameter entity: The entity to create.
    /// - returns: ID of the created entity.
    func create(entity: entityType,
                completion: @escaping (Result<idType,Error>) -> Void)
    
    /// Retrieves an entity.
    ///
    /// - parameter id: ID of the entity to retrieve.
    /// - returns: An entity.
    func retrieve(id: idType,
                  completion: @escaping (Result<entityType,Error>) -> Void)

    /// Retrieves all entities.
    ///
    /// - returns: All entities.
    func retrieveAll(completion: @escaping (Result<[entityType],Error>) -> Void)

    /// Updates an entity.
    ///
    /// - parameter id: ID of the entity to update.
    /// - parameter entity: Updated entity.
    /// - returns: Boolean indicating success or failure.
    func update(id: idType, entity: entityType,
                completion: @escaping (Result<Bool,Error>) -> Void)

    /// Deletes an entity.
    ///
    /// - parameter id: ID of the entity to delete.
    /// - returns: Boolean indicating success or failure.
    func delete(id: idType,
        completion: @escaping (Result<Bool,Error>) -> Void)

}

