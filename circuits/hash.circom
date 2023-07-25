pragma circom  2.0.0;
include "../../node_modules/circomlib/sha256/sha256.circom";

template hashing() {
    signal input in;
    signal output out;
    
    component SHA = Sha256(1);
    SHA.inputs[0] <== in;
    out <== SHA.out;
}

component main = hashing();