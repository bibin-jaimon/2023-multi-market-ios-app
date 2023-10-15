import SwiftUI

/**
 A shared dependency injection container - PROTOTYPE
 */
public class Container {
    var register: [ObjectIdentifier: Any] = [:]
    
    public init() { }
    
    public func registerChild<T>(_ interface: T.Type, _ instance: T) {
        register[ObjectIdentifier(interface)] = instance
//        print(String(describing: register))
    }
    
    public func get<T>(_ interface: T.Type = T.self) -> T {
        return (register[ObjectIdentifier(interface)]!) as! T
    }

    public func getIfRegistered<T>(_ interface: T.Type = T.self) -> T? {
        return (register[ObjectIdentifier(interface)]) as? T
    }

}

/**
 To create a tab bar item
 */
public struct ECTabBarItem: Identifiable {
    public var id: UUID = UUID()
    public var view: AnyView
    
    public init(view: AnyView) {
        self.view = view
    }
}

