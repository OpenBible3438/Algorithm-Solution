#  유한소수 판별하기

## Solution
```swift
import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    
    let child = a / gcd(a, b)
    let parent = b / gcd(a, b)
    
    if parent == 1 || child == parent { return 1 } // 정수는 유한소수

    for num in 2 ... parent {
        // num이 약수인 경우
        if parent % num == 0 {
            // 2, 5, 짝수가 아닐 때
            if num % 2 != 0 && num != 5 {
                // 소수 판별
                if isPrime(num) {
                    return 2
                }
            }
        }
    }
    return 1
}

// 최대공약수
func gcd(_ num1: Int, _ num2: Int) -> Int {
    if num1 % num2 != 0 {
        return gcd(num2, num1 % num2)
    }
    return num2
}

// 소수 판별
func isPrime(_ num: Int) -> Bool {
    for i in 2 ..< num {
        if num % i == 0 {
            return false
        }
    }
    return true
}
```

## 문제 설명
소수점 아래 숫자가 계속되지 않고 유한개인 소수를 유한소수라고 합니다.  
분수를 소수로 고칠 때 유한소수로 나타낼 수 있는 분수인지 판별하려고 합니다.  
유한소수가 되기 위한 분수의 조건은 다음과 같습니다.
- 기약분수로 나타내었을 때, 분모의 소인수가 2와 5만 존재해야 합니다.
두 정수 a와 b가 매개변수로 주어질 때, a/b가 유한소수이면 1을, 무한소수라면 2를 return하도록 solution 함수를 완성해주세요.

## 제한 사항
- a, b는 정수
- 0 < a ≤ 1,000
- 0 < b ≤ 1,000

## 입출력 예
|a|b|result|
|-|-|------|
|7|20|1|
|11|22|1|
|12|21|2|

## 입출력 예 설명
입출력 예 #1
- 분수 7/20은 기약분수 입니다. 분모 20의 소인수가 2, 5 이기 때문에 유한소수입니다. 따라서 1을 return합니다.

입출력 예 #2
- 분수 11/22는 기약분수로 나타내면 1/2 입니다. 분모 2는 소인수가 2 뿐이기 때문에 유한소수 입니다. 따라서 1을 return합니다.

입출력 예 #3
- 분수 12/21는 기약분수로 나타내면 4/7 입니다. 분모 7은 소인수가 7 이므로 무한소수입니다. 따라서 2를 return합니다.

## Hint
- 분자와 분모의 최대공약수로 약분하면 기약분수를 만들 수 있습니다.
- 정수도 유한소수로 분류합니다.
