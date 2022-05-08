// 🐦 Twitter                   https://twitter.com/vandadnp
// 🔵 LinkedIn                  https://linkedin.com/in/vandadnp
// 🎥 YouTube                   https://youtube.com/c/vandadnp
// 🤝 Want to support my work?  https://buymeacoffee.com/vandad

import Foundation
import class UIKit.UIImage

struct Person {
  let id: String
  let name: String
  let age: Int
}

extension Person {
  func getImage() async throws -> UIImage {
    fatalError("Not implemented")
  }
}
