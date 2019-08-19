//
//
//
//  Created by SAS 
//  Copyright © 2019   All rights reserved.
//


import Foundation
import UIKit

public extension Sequence where Element: Equatable {
    var uniqueElements: [Element] {
        return self.reduce(into: []) {
            uniqueElements, element in
            if !uniqueElements.contains(element) {
                uniqueElements.append(element)
            }
        }
    }
}
