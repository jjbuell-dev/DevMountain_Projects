//
// Medication+Convenience.swift
// MedicationManager_D1
//


import CoreData

extension Medication {
    
    @discardableResult convenience init(name: String, timeOfDay: Date, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.name = name
        self.timeOfDay = timeOfDay
    }
}
