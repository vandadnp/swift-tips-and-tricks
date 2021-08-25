// Want to support my work 🤝? https://buymeacoffee.com/vandad

import Foundation

struct Person: CustomDebugStringConvertible {
    let name: String
    let age: Int
    var debugDescription: String { "\(name), age: \(age)" }
}

struct House: CustomDebugStringConvertible {
    let address: String
    let tennants: [Person]
    var debugDescription: String { "House: \(address)" }
}

let houses = [
    House(
        address: "First address",
        tennants: [
            Person(name: "Foo 1", age: 20),
            Person(name: "Bar 1", age: 30),
        ]
    ),
    House(
        address: "Second address",
        tennants: [
            Person(name: "Foo 2", age: 20),
            Person(name: "Bar 2", age: 30),
        ]
    ),
]

extension Array {
    func firstWhere<M: Equatable>(
        _ keyPath: KeyPath<Self.Element, M>,
        is search: M
    ) -> Self.Element? {
        self.first(where: { (element: Self.Element) -> Bool in
            element[keyPath: keyPath] == search
        })
    }
}

let foo1ByName = houses
    .flatMap(\.tennants)
    .firstWhere(
        \.name,
        is: "Foo 1"
    )

let foo1ByAge = houses
    .flatMap(\.tennants)
    .firstWhere(
        \.age,
        is: 20
    )

let secondHouse = houses
    .firstWhere(
        \.address,
        is: "Second address"
    )

