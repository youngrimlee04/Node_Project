pragma solidity ^0.5.7;

// 기본타입
// 1. 복합 데이터 타입(complex type):문자열, 구조체, 배열 <- 여러개의 데이터를 가지고 있다
// 2. 기본 타입 (basic type) : bool, int, float,.. <- 단일 데이터를 가지고 있다
contract BasicType
{
    // 주의 사항: 타입만 볼거니까 함수 형태는 신경 않쓴다    
    function numTest() public pure returns (int8, int, int248, uint, bool)
    {
        // 수치형 
        // int -> 정수 타입 , int8~int 256, int == int256
        // uint -> 부호없는 정수타입 (양수)
        // 부동소수점 : 
        // fixed  / ufixed : 고정크기 소수점, 부호없는 고정크기 소수점 타입
        // fixedMxN 형식 : fixed128x19 => 128:비트수, 19소수점자리수
        // N : 0~80가능, M: 8~ 256사이 단, 8의 배수만 가능
        // bool : true/false
        // 단일형 types: int, uint, bool, bytes, fixed, ufixed
        // 복합형 types: string, address, enum, tuple, struct
        int8 a = 10;
        int  b = 11;
        int248 c = 12;
        uint d = 1;
        bool e = false;
        return (a,b,c,d,e);
    }
    // 열거형: enum
    enum Level {
        Gold,
        Silver,
        Normal
    }
    function enumTest() public pure returns (Level, Level, Level)
    {
        Level a = Level.Gold;
        Level b = Level.Silver;
        Level c = Level.Normal;
        return (a, b, c);
    }
    function enumTest2() public pure returns (Level)
    {
        Level a = Level.Gold;
        return a;
    }
    // 주소형: address
    // 20byte 크기의 자료형
    // 컨트렉트의 주소, 계좌의 주소 등을 담는 변수 타입
    function addrTest() public returns (address, address, address)
    {
        // 임의의(더미) 계좌 생성
        address payable x = address(0x123);
        // this : 현재 컨트렉트, 
        address myAddr = address( this );
        // contact runner address=> msg.sender
        return (x, myAddr, msg.sender);
        
    }
    // 튜플 : 값을 묶는다
// - 여러 데이터를 묶을 때 사용
// 자료형이 달라도 ok
// 여러 데이터를 한 덩어리로 처리할 때 유용 > return
function tupleTest() public pure returns (int, int){
    
    return (1,2);
    
    }
    
function tupleUse() public pure returns (int, int){
        (int x, int y)= tupleTest();
        (x, y) = (y,x);
        return (x+1, y+2);
    }
}

















