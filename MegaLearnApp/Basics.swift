//
//  Basics.swift
//  MegaLearnApp
//
//  Created by Lars Löffler on 19.03.23.
//

import Foundation
import SwiftUI

struct Player {
    var name: String
    var highscore: Int
}

class Person {
  
  let name: String
  var height: Int
  
  init( name: String, height: Int ) {
    self.name = name
    self.height = height
  }
  
  func toString() -> String {
    return "My name is \(name), my height is \(height) cm"
  }
  
}

extension Person {
  
  func grow( _ by: Int ) {
    height = height + by
  }
  
}

func main() -> String {
  
  let out = Output()
  
  var numbers: [Int] = [1,2,3]
  
  numbers.append(1)
  numbers.append(2)
  numbers.append(3)
  
  let sorted = numbers.sorted { a, b in
    a < b
  }
  
  out.add( "Sorted: \(sorted)" )
  
  let lotsOfNumbers = Array( repeating: 1, count: 10 )
  
  out.add( "lotsOfNumbers: \(lotsOfNumbers)" )
  
  out.add( "sorted + lotsOfNumbers: \(sorted + lotsOfNumbers)" )
  
  for (index, item) in sorted.enumerated() {
    out.add(  "\(index+1): \(item*2)" )
  }
  
  let set = Set( sorted.sorted() )
  out.add( "set: \(set)" )
  
  let immutable: Set<Int> = [1,2,3]
  // immutable.insert(4) // <-- does not compile
  out.add( "immutable: \(immutable)" )
  
  let map = [ 10: "Zehn", 12: "Zwölf", 20: "Zwanzig"]
  
  out.add( "map: \(map)" )
  
  for key in map.keys.sorted() {
    let value = String( map[key] ?? "" )
    out.add( "key: \(key) value: \(value)" )
  }
  
  for( key, value ) in map {
    out.add( "key: \(key) value: \(value)" )
  }
  
  message( out, "for i in 0..<9" )
  for i in 0..<9 {
    out.add( "\(i)" )
  }
  
  message( out, "for i in stride(from:100, to:120, by:5 )" )
  for i in stride(from:100, to:120, by:5 ) {
    out.add( "\(i)" )
  }
  
  out.add( "8 Bit: \(pow1(2,8))" )
  
  func pow1(_ base: Int,_ pow: Int ) -> Int {
    var num = base
    for _ in 1..<pow {
      num = num * base
    }
    return num
  }
  
  func greet(_ name: String ) {
    out.add( "Hello \(name)" )
  }
  
  greet( "Alice" )
  
  let person = Person( name: "Max", height: 186 )
  
  out.add( person.toString() )
  
  person.grow( 10 )
  
  out.add( person.toString() )
  
  let a: String? = nil
  
  let b = a?.uppercased()
  let c = "empty"
  
  out.add( "b is \(b ?? c)" )
  
  enum StringError : Error {
    case CannotBeNil
  }
  
  func toUppercase( _ input : String? ) throws -> String {
    guard let result = input?.uppercased() else {
      throw StringError.CannotBeNil
    }
    return result
  }
  
  do {
    var a: String? = "hello"
    var upper = try toUppercase(a)
    out.add( "toUppercase(\(a ?? "nil") = \(upper)")
    a = nil
    upper = try toUppercase(a)
    out.add( "toUppercase(\(a ?? "nil") = \(upper)")
  }
  catch StringError.CannotBeNil {
    out.add( "cannot be nil" )
  }
  catch {
    out.add( "Unknown error ")
  }
  
  func times2( aliasName internerName: Int ) -> Int {
    return internerName * 2
  }
  
  out.add( "10 times 2 is \(times2(aliasName:10))" )
  
  struct Universe {
    var universeName: String
    init( builder: (String) -> String ) {
      universeName = builder("Version 1.0")
    }
  }
  
  let universe = Universe { inputString in
    return inputString.uppercased()
  }
  
  out.add( "Universe: \(universe)" )
  
  let from = 0
  let to = 10
  let by = 2
  
  for i in stride(from: from, to: to, by: by ) {
    out.add( "\(i)" )
  }
  
  
  struct S {
    
    func transform( input eingabe: String ) -> String {
      return eingabe.uppercased()
    }
    
  }
  
  out.add( S().transform( input: "abc" ) )
  
  struct Employee {
    var name: String
    var birthdate: Date
    var age: Int {
      get {
        Calendar.current.dateComponents([.year], from: birthdate, to: Date()).year!
      }
    }
  }
  
  var components = DateComponents()
  components.day = 28
  components.month = 1
  components.year = 1972
  let date = Calendar.current.date(from: components) ?? Date()
  
  var e = Employee( name: "Hoffmann", birthdate: date )
  
  e.name = "Hofmann"
  
  out.add( "Name is \(e.name)" )
  out.add( "Birthday is \(e.birthdate)" )
  out.add( "Age is \(e.age)" )
  
  let helloworld = "Hello World!"
  let hello = String( helloworld.prefix( 5 ) )
  let world = String( helloworld.suffix( 6 ) )
  let excl = String( helloworld.suffix( 1 ) )

  out.add( "helloworld=\(helloworld)")
  out.add( "hello=\(hello)")
  out.add( "world=\(world)")
  out.add( "excl=\(excl)")

//  let rgb = "RRGGBB"
//  let r = rgb.substring(to: <#T##String.Index#>)
  
  return out.toString()
  
}


// - helper ----------------------------------------------

func print( _ text: String ) {
  
}

func message( _ out: Output, _ message : String ) {
  out.add( "" )
  out.add( "-----------------------------------------" )
  out.add( message )
}

class Output {
  
  var text = ""
  
  func add( _ line: String ) {
    text = text + "\n" + line
  }
  
  func toString() -> String {
    return text
  }
  
}


// --------------------------------------------------

struct PureSwift_Misc_Previews2: PreviewProvider {
    static var previews: some View {
        PureSwift_Misc()
    }
}


