#include<bits/stdc++.h>
#include "VoidScript.h"
using namespace std;

int main() {
    int a = 10, b = 5;

    // Arithmetic
    cout << "orbit: " << orbit(a, b) << endl;
    cout << "eclipse: " << eclipse(a, b) << endl;
    cout << "nova: " << nova(a, b) << endl;
    cout << "horizon: " << horizon(a, b) << endl;
    cout << "comet: " << comet(a, b) << endl;
    cout << "pulsar: " << pulsar(a, b) << endl;
    cout << "quantum: " << quantum(a) << endl;

    // Comparison
    cout << "aligned: " << aligned(a, b) << endl;
    cout << "misaligned: " << misaligned(a, b) << endl;
    cout << "brighter: " << brighter(a, b) << endl;
    cout << "dimmer: " << dimmer(a, b) << endl;
    cout << "supernova: " << supernova(a, b) << endl;
    cout << "nebula: " << nebula(a, b) << endl;

    // Logical
    cout << "conjunction: " << conjunction(true, false) << endl;
    cout << "parallax: " << parallax(true, false) << endl;
    cout << "blackhole: " << blackhole(true) << endl;

    // Control Flow
    cout << navigate(true) << endl;
    cout << detour(false) << endl;
    orbit_cycle(3);
    solar_wind();
    escape_velocity();

    // Function and Return
    cout << "constellation: " << constellation(3, 4) << endl;
    cout << "transmit: " << transmit(100) << endl;

    // I/O
    beacon("Hello from AstroCode!");
    int input_value;
    cout << "Enter a number: ";
    sensor(input_value);
    cout << "You entered: " << input_value << endl;

    // Comment and Array
    starchart();
    int arr[3] = {1, 2, 3};
    galaxy(arr, 3);

    return 0;
}

