#include <bits/stdc++.h>
using namespace std;

// Arithmetic operations
int orbit(int a, int b)
{
    return a + b;    // addition
}

int eclipse(int a, int b)
{
    return a - b;    // subtraction
}

int nova(int a, int b)
{
    return a * b;    // multiplication
}

int horizon(int a, int b)
{
    return a / b;    // division
}

int comet(int a, int b)
{
    return a % b;    // modulus
}

int pulsar(int a, int b)
{
    return pow(a, b);    // exponentiation
}

double quantum(int x)
{
    return sqrt(x);    // square root
}


// Assignment
void terraform(int &a, int b)
{
    a = b;    // assignment
}


// Comparison
bool aligned(int a, int b)
{
    return a == b;    // equals
}

bool misaligned(int a, int b)
{
    return a != b;    // not equals
}

bool brighter(int a, int b)
{
    return a > b;    // greater than
}

bool dimmer(int a, int b)
{
    return a < b;    // less than
}

bool supernova(int a, int b)
{
    return a >= b;    // greater or equal
}

bool nebula(int a, int b)
{
    return a <= b;    // less or equal
}

// Logical
bool conjunction(bool a, bool b)
{
    return a && b;    // logical AND
}

bool parallax(bool a, bool b)
{
    return a || b;    // logical OR
}

bool blackhole(bool a)
{
    return !a;    // logical NOT
}

// Control Flow
string navigate(bool condition)                         // conditional
{
    return condition ? "Condition true" : "Condition false";
}

string detour(bool condition)                           // alternative
{
    return condition ? "Path A" : "Path B";
}

void orbit_cycle(int n)                                 // iteration
{
    for(int i = 0; i < n; i++)
    {
        cout << "Cycle " << i << endl;
    }
}

void escape_velocity()                                  // terminate loop
{
    cout << "Loop terminated" << endl;
}

void solar_wind()                                       // skip iteration
{
    cout << "Skipped this iteration" << endl;
}

// Function
int constellation(int a, int b)                         // function
{
    return a + b;
}

int transmit(int result)
{
    return result;    // return value
}

// I/O
void beacon(string msg)
{
    cout << msg << endl;    // output
}
void sensor(int &x)
{
    cin >> x;    // input
}

// Comment
void starchart()
{
    cout << "// This is a comment" << endl;
}

// Array
void galaxy(int arr[], int size)                        // array
{
    for(int i = 0; i < size; i++)
    {
        cout << "Element " << i << ": " << arr[i] << endl;
    }
}

