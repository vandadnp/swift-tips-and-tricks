// Want to support my work 🤝? https://buymeacoffee.com/vandad

extension Array {
    private func timesToRotate(count: Int) -> Int? {
        assert(count > 0)
        assert(self.count > 1)
        let times = count % self.count
        return times > 0 ? times : nil
    }
    func rotatedLeft(count: Int) -> Self {
        guard let times = timesToRotate(count: count) else { return self }
        return Array(self[times...]) + Array(self[..<times])
    }
    func rotatedRight(count: Int) -> Self {
        guard let times = timesToRotate(count: count) else { return self }
        return Array(self.suffix(times)) + Array(self.prefix(self.count - times))
    }
}

let arr = [1, 2, 3]

assert(arr.rotatedLeft(count: 1) == [2, 3, 1])
assert(arr.rotatedLeft(count: 3) == [1, 2, 3])
assert(arr.rotatedLeft(count: 4) == [2, 3, 1])
assert(arr.rotatedLeft(count: 8) == [3, 1, 2])

assert(arr.rotatedRight(count: 2) == [2, 3, 1])
assert(arr.rotatedRight(count: 1) == [3, 1, 2])
assert(arr.rotatedRight(count: 5) == [2, 3, 1])
