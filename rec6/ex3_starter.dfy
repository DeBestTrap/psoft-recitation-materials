method power(base: int, exponent: nat) returns (result: int)
    ensures // What does this ensure?
{
    // TODO: Implement the loop to multiply 'base' by itself 'exponent' times.
    // You will need:
    //   - A variable for the current result (initialize it to 1)
    //   - A loop counter i (initialize it to 0)
    //   - A while loop that runs while i < exponent
    //   - Invariants that show how 'result' and i are related to the loop state
    //   - Updating 'result' and i in the loop body
    //
    // Finally, return the result at the end.

    while // something
    // invariants go here
    {
      // do things here
    }
}

// A pure function that specifies how to compute powers, this time with recurision
function pow(base: int, exp: nat): int {
 if exp == 0 then 1 else base * pow(base, exp-1)
}

method Main() {
    var result := power(2, 3);
    assert result == 8;
}