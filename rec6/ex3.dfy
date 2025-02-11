method power(base: int, exponent: nat) returns (result: int)
    ensures result == pow(base, exponent)
{
    result := 1;
    var i := 0;

    while i < exponent
        invariant 0 <= i <= exponent
        invariant result == pow(base, i)
    {
        result := result * base;
        i := i + 1;
    }

    return result;
}

// A pure function that specifies how to compute powers, this time with recurision
function pow(base: int, exp: nat): int {
 if exp == 0 then 1 else base * pow(base, exp-1)
}

method Main() {
    var result := power(2, 3);
    assert result == 8;
}