#  안전지대

## Solution
```swift
func solution(_ board:[[Int]]) -> Int {
    // 배열의 크기 늘리기
    var newBoard = board
    for index in 0 ..< newBoard.count {
        newBoard[index].insert(2, at: 0)
        newBoard[index].append(2)
    }
    newBoard.insert(Array(repeating: 2, count: newBoard.count + 2), at: 0)
    newBoard.append(Array(repeating: 2, count: newBoard.count + 2))
    
    // 지뢰 탐색
    for xIndex in 0 ..< newBoard.count {
        for yIndex in 0 ..< newBoard.count {
            if newBoard[xIndex][yIndex] == 1 {
                // 위험지역 체크
                for xRange in xIndex-1 ... xIndex+1 {
                    for yRange in yIndex-1 ... yIndex+1 {
                        if newBoard[xRange][yRange] != 1 { newBoard[xRange][yRange] = 2 }
                    }
                }
            }
        }
    }
    
    // 0 count
    return newBoard.flatMap{ $0.filter{ $0 == 0 } }.count
}
```

## 문제 설명
다음 그림과 같이 지뢰가 있는 지역과 지뢰에 인접한 위, 아래, 좌, 우 대각선 칸을 모두 위험지역으로 분류합니다.

<img width="500" alt="사진1" src="https://github.com/OpenBible3438/Algorithm-Solution/assets/59015538/c042f15c-bc8d-4a53-8bbb-c6114682e25f">

지뢰는 2차원 배열 board에 1로 표시되어 있고 board에는 지뢰가 매설 된 지역 1과, 지뢰가 없는 지역 0만 존재합니다.

지뢰가 매설된 지역의 지도 board가 매개변수로 주어질 때, 안전한 지역의 칸 수를 return하도록 solution 함수를 완성해주세요.

## 제한 사항
- board는 n * n 배열입니다.
- 1 ≤ n ≤ 100
- 지뢰는 1로 표시되어 있습니다.
- board에는 지뢰가 있는 지역 1과 지뢰가 없는 지역 0만 존재합니다.

## 입출력 예
| board                                                                                                                    | result |
|--------------------------------------------------------------------------------------------------------------------------|--------|
| [[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 1, 0, 0], [0, 0, 0, 0, 0]]                                    | 16     |
| [[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 1, 1, 0], [0, 0, 0, 0, 0]]                                    | 13     |
| [[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] | 0      |

## 입출력 예 설명

### 입출력 예 #1
- (3, 2)에 지뢰가 있으므로 지뢰가 있는 지역과 지뢰와 인접한 위, 아래, 좌, 우, 대각선 총 8칸은 위험지역입니다. 따라서 16을 return합니다.

### 입출력 예 #2
- (3, 2), (3, 3)에 지뢰가 있으므로 지뢰가 있는 지역과 지뢰와 인접한 위, 아래, 좌, 우, 대각선은 위험지역입니다. 따라서 위험지역을 제외한 칸 수 13을 return합니다.

### 입출력 예 #3
- 모든 지역에 지뢰가 있으므로 안전지역은 없습니다. 따라서 0을 return합니다.
