import ballerina/io;
import ballerina/http;

type Course record{
    string name;
    readonly string code; // key identifier
    int number_of_students;
    string coordinator;
};

public function main() returns error?{
    //http Client courseClient = check new ("localhost:6500");

    //io:println("1. Create Course");
    //string createCourseResponds = check courseClient->/ createCourse.post({name: "Distributed", code:"dsa612s", number_of_students:100});
    //io:println(createCourseResponds);
    //json course2 = {name:"programming 2", code:"prg612s", number_of_students:100};

    //io:println("Get Course");
    //Course getcoursebycodecourseResponds = check courseClient->/getCourseByCode.get({code:"prg612s"});
    //io:println(getcoursebycodecourseResponds);

    //io:println("Get course Coordinator");
   // Course coursebyCoordResponds = check courseClient ->
}
