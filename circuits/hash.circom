pragma circom  2.0.0;
include "./circomlib/circuits/sha256/sha256.circom";

template hashing() {
    signal input in[1];
    signal output out[256];
    
    component SHA = Sha256(1);
    SHA.in <== in;
    out <== SHA.out;
}

component main = hashing();