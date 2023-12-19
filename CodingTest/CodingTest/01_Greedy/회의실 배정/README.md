#  회의실 배정

## 문제
한 개의 회의실이 있는데 이를 사용하고자 하는 N개의 회의에 대하여 회의실 사용표를 만들려고 한다.

각 회의 I에 대해 시작시간과 끝나는 시간이 주어져 있고, 각 회의가 겹치지 않게 하면서 회의실을 사용할 수 있는 회의의 최대 개수를 찾아보자.

단, 회의는 한번 시작하면 중간에 중단될 수 없으며 한 회의가 끝나는 것과 동시에 다음 회의가 시작될 수 있다.  
회의의 시작시간과 끝나는 시간이 같을 수도 있다. 이 경우에는 시작하자마자 끝나는 것으로 생각하면 된다.

## 입력
- 첫째 줄에 회의의 수 N(1 ≤ N ≤ 100,000)이 주어진다.
- 둘째 줄부터 N+1 줄까지 각 회의의 정보가 주어지는데 이것은 공백을 사이에 두고 회의의 시작시간과 끝나는 시간이 주어진다.
- 시작 시간과 끝나는 시간은 231-1보다 작거나 같은 자연수 또는 0이다.

## 출력
첫째 줄에 최대 사용할 수 있는 회의의 최대 개수를 출력한다.

## 내 제출
```swift
struct Metting {
    var start: Int
    var end: Int
}

let mettingCnt = Int(readLine()!)!
var mettings: [Metting] = Array(repeating: Metting(start: 0, end: 0), count: mettingCnt)

for cnt in 0 ..< mettingCnt {
    let times = readLine()!.split(separator: " ").map{ Int(String($0))! }
    mettings[cnt].start = times[0]
    mettings[cnt].end = times[1]
}

let sortedMettings = mettings.sorted{ $0.end == $1.end ? $0.start < $1.start : $0.end < $1.end }

var resultCnt = 0
var currentTime = 0

for metting in sortedMettings {
    if metting.start >= currentTime {
        resultCnt += 1
        currentTime = metting.end
    }
}

print(resultCnt)
```
---
### 출처
- [백준 1913번: 회의실 배정](https://www.acmicpc.net/problem/1931)
