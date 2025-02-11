// method SumOfDigits()
// what is required?
// what is ensured?
// what decreases?

// A pure function that specifies how to compute sum of digits (mathematically)
function SumOfDigitsSpec(x: nat): nat
{
    if x < 10 then x
    else (x % 10) + SumOfDigitsSpec(x / 10)
}

method Main() {
    var sum := SumOfDigits(123);

    // Try and get Dafny to verify this.
    assert sum == 6;
}