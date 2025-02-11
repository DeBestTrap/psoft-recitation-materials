method SumOfDigits(x: nat) returns (sum: nat)
    requires x >= 0
    ensures sum == SumOfDigitsSpec(x)
    decreases x
{
    if x < 10 {
        return x;
    } else {
        var rest := SumOfDigits(x / 10);
        return (x % 10) + rest;
    }
}

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