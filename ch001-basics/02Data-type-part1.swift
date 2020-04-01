// Int is the type if we need to assign it t any variable
// provides 8, 16, 32, 64 bit formats 


/////////////////////////////
// Integer bounds
////////////////////////////

// 8 bit is represented as UInt8, 32 bit as Int32

print(UInt8.min, UInt8.max)
//=> 0 255
print(Int32.min, Int32.max)
//=> -2147483648 2147483647

// by default swift provides Int as Int32 on 32-bit platform and on 64-bit platform it provides Int64 by default


////////////////////////////////////
// UInt - Unsigned integers
///////////////////////////////////////

print(UInt32.min, UInt32.max)
//=> 0 4294967295
// unsigned numbers start from 0
// on 32 bit platform, UInt is same as UInt32
// on 64 bit platform, UInt is same as UInt64

print(UInt.max)
print(UInt64.max)

////////////////////////////////////////
///////////////////////////////////////
// Floating Point and Double
//////////////////////////////////////

// Double: represent a 64-bit floating number
// Float: represents a 32-bit floating number

// Double has precision of at least 15 decimal digits
// Float has of 6 decimal digits

// when both types are appropriate, there double is preferred

var flotOrDoub = 42.0;

// if we don't specify the type of float or double then by default swift assumes it is double


var combinedFloatInt = 3 + 0.14

// automatically the type of combinedFloatInt is inferred as double



////////////////////////////////
// numbers with different base values
////////////////////////////////////

// binary: 0b prefix
// octa; : 0o
// hexa: 0x

print (0b10001)
print(17)
print(0o21)
print(0x11)

//=> All the above codes will output 17

//////////////////////////////////////
// exponential representation
////////////////////////////////////

print("///////////////")
print (1.25e2)

// 1.25e2 is (1.25 * 10 ^ 2)
// 1.25e-2 is (1.25 * 10 ^ -2)

print(0xFp2)
 print (0x9p2)

 // 0xNpn means ((N to dec) * 2 ^ n)

 print(1_000_000)
 print(1_1000_000)
 print(1_009990_000)


// numbers acn be separated by _ to increase readability

 print(1_000_000.0000)

 print(1_000_000.99_0000_666)

 
////////////////////////////////////////////////////////
////////////////////////////////////////////////////
// Type Conversions
////////////////////////////////////////////////////////

// If value is not conpatible with given type then compiler will report an error

print("///////////////////////////////////");

//~ print(UInt8.max + 1)
//=> error: arithmetic operation '255 + 1' (on type 'UInt8') results in an overflow

//~ let notNegative: UInt8 = -1
//=>  error: negative integer '-1' overflows when stored into unsigned type 'UInt8'


let int16: UInt16 = 2_000;
let int8 : UInt8 = 10;

//~ print(int16 + int8);

print(int16 + UInt16(int8))

// even two numbers of different types cannot be operated together without type Conversions


//~ print(UInt8(int16))
//~=> error: not enough bits to represent


let newInt8: Int8 = 20;

let newUInt8: UInt8 = 10;

// print(newInt8 + newUInt8)
print(newInt8 + Int8(newUInt8))

//~ print(UInt8(-20))
//=> if value is negative it cannot be converted to unsigned number

//~ print(Int8(245))
//~=> not allowed because 245 will overflow

// swift is rigid when it comes to type Conversions


