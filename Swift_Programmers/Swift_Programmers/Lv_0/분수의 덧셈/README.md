#  분수의 덧셈

## Solution
```swift
func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    
    // 두 분수 더하기
    let number = (numer1 * denom2) + (numer2 * denom1)
    let denom = denom1 * denom2
    
    // 기약 분수 만들기 -> 두 수의 최대공약수로 약분하기
    return [number / gcd(number, denom), denom / gcd(number, denom)]
}

func gcd(_ num1: Int, _ num2: Int) -> Int {
    return num1 % num2 == 0 ? num2 : gcd(num2, num1 % num2)
}
```

## 문제 설명
첫 번째 분수의 분자와 분모를 뜻하는 numer1, denom1, 두 번째 분수의 분자와 분모를 뜻하는 numer2, denom2가 매개변수로 주어집니다. 두 분수를 더한 값을 기약 분수로 나타냈을 때 분자와 분모를 순서대로 담은 배열을 return 하도록 solution 함수를 완성해보세요.

## 제한 사항
- 0 <numer1, denom1, numer2, denom2 < 1,000

## 입출력 예
| numer1 | denom1 | numer2 | denom2 | result  |
|--------|--------|--------|--------|---------|
| 1      | 2      | 3      | 4      | [5, 4]  |
| 9      | 2      | 1      | 3      | [29, 6] |

## 입출력 예 설명
### 입출력 예 #1
- 1 / 2 + 3 / 4 = 5 / 4입니다. 따라서 [5, 4]를 return 합니다.

### 입출력 예 #2
- 9 / 2 + 1 / 3 = 29 / 6입니다. 따라서 [29, 6]을 return 합니다.
