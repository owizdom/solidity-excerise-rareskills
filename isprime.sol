// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract IsPrime {
    /**
     * The goal of this exercise is to return if "number" is prime or not (true or false)
     */
    function isPrime(uint256 number) public view returns (bool) {
        if (number <= 1) {
            return false; // 0 and 1 are not prime numbers
        }
        if (number <= 3) {
            return true; // 2 and 3 are prime numbers
        }
        if (number % 2 == 0 || number % 3 == 0) {
            return false; // Numbers divisible by 2 or 3 are not prime
        }
        uint256 i = 5;
        while (i * i <= number) {
            if (number % i == 0 || number % (i + 2) == 0) {
                return false; // Numbers divisible by i or i+2 are not prime
            }
            i += 6; // Increment by 6 to check for divisibility by numbers other than 2 and 3
        }
        return true; // If no divisors are found, the number is prime
    }
}
