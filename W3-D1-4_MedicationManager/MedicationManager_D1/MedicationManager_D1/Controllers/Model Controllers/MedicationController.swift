//
// MedicationController.swift
// MedicationManager_D1
//


import CoreData

class MedicationController {
    
    // MARK: - Properties
    
    static let sharedInstance = MedicationController()
    var medications: [Medication] = []
    
    private lazy var fetchRequest: NSFetchRequest<Medication> = {
       let request = NSFetchRequest<Medication>(entityName: "Medication")
        request.predicate = NSPredicate(value: true)
        return request
    }()
    
    // MARK: - Initializer
    
    private init() {}
    
    // MARK: - Functions
    
    func createMedication(name: String, timeOfDay: Date) {
        let medication = Medication(name: name, timeOfDay: timeOfDay)
        medications.append(medication)
        
        CoreDataStack.saveContext()
    }
    
    func fetchMedications() {
        let medications = (try? CoreDataStack.context.fetch(self.fetchRequest)) ?? []
        print(medications.count)
        self.medications = medications
    }
    
    func updateMedication(_ medication: Medication) {
        CoreDataStack.saveContext()
    }
    
    func deleteMedication() {
        // TODO: -
    }
}
