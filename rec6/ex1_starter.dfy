// This Dafny method returns the maximum of two integers.
method max(a: int, b: int) returns (m: int)
{
    // implementation here
}

// A main method to showcase how Dafny behaves with assertions:
method Main()
{
    var x := max(3, 5);

    // This assertion intentionally fails. Dafny will produce a counterexample:
    //   - In the counterexample, x = 5 (which is correct),
    //   - but the assertion says x == 3, which is false.
    assert x == 3; 

    // Try changing the assertion to the correct value.

    // You can also try additional assertions to explore Dafny's response.
}