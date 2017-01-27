import UIKit

protocol MapView {
    mutating func remove<T: Annotationable>(annotation: T)
    
    mutating func add<T: Annotationable>(annotation: T)
}
