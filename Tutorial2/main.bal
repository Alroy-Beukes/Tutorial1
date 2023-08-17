//Client-Server interaction
//Technologies:
//REST API
//GRAPHQL
//GRPC
//KAFKA

//REST API - C.R.U.D (create, read, update, delete)
//                   (POST,   GET,   PUT,   DELETE)

//Course management
//define{code, name, number_of_students, coordinator}

//Client-server request and response
// pathparametrs  |
//                |=> get & delete to server
// queryparameters|
// bodyrequest --------------POST & PUT
// headerrequest-------------GET,DELETE,POST,PUT } authentication and authorisation (token/key)

//Start with backend (server) development
//then frontend development
import ballerina/io;
import ballerina/http;

type Course record{
    string name;
    readonly string code; // key identifier
    int number_of_students;
    string coordinator;
};

type UpdatedStudents record{
    string code;
    int number_of_students;
};

table<Course> key(code) courseTable = table[];

//run a service, run until service session over or server crash
service / on new http:Listener(6500){
    //implement logic
    resource function post createCourse(Course course) returns string{   //use a body request
        // data type to store the data
        io:println(course);
        courseTable.add(course);
        return course.name + "saved successfully";

    }
    resource function put updateNumberOFStudents(Course course) returns string{
        courseTable.put(course);
        return course.name + "saved successfully";
    }
    resource function get courseCoordinator/[string code]() returns string{
        Course course = courseTable.get(code);
        if(course.coordinator !=="") {
            return course.coordinator;
        }
        return "Coordinator not found";
    }
    resource function get getCourseByCode(string code) returns Course|string{
        Course course = courseTable.get(code);
        if(course.code !=="") {
            return course;
        }
        return code;
    }
}

//Client will
//1, Create course
//2. Update course
//3. get all course
//4. get course by code
//5. get course by name