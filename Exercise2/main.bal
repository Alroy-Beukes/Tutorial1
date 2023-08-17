import ballerina/io;
import ballerina/random;

    function createIntInRange(int startRange, int endRange)returns int|error{
    int randomInteger = check random:createIntInRange(10, 60);
    return randomInteger;
    }
public function main() {
    io:println();
}
