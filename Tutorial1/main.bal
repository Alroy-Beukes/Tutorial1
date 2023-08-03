import ballerina/io;


type st string;

type car record {
    string color;
    string model;
    int gear;
    string engine_type;
    record{} radio;
};

type radio record{
    string name;
    string radio_type;
};

public function main() {
    io:println("Hello, World!");

        //Data types
    st name = "Bob";
    int age = 20;
    float height = 20.9;
    decimal color = 0x78973;

    any salary = 340900;

    //Conditions:
    if (age >= 34){
    io:println("age is >= to 34");
    }

    // Match statement (like switch statement)
    int size = 34;

    match size{
    20 => {
    io:println();
    }
    26 => {
    io:println();
    }

    _=>{
    io:println("invalid number");
    }
    }

    // Loops
    while age >20 {
    io:print("20");
    //break;
    //continue;
    }

    //Foreach - arrays
    foreach int i in 0...30 {
        io:print();
    }

    //Array
    string [5] names = ["john", "mary", "jack", "mark", "terry"];
    foreach string name1 in names{
        io:print(name1);
    }

    // Tuples
    //[int, string, float] myself = [23, "Alroy", 1,67];

    //Map

    map<int> marks = {
        "Isaac": 15,
        "john" : 95
    };

    int student1 = marks.get( "Isaac");
    int student2 = marks["Isaac"]?:0;
    int? student3 = marks["Isaac"];
    io:println(student1);

    //Records
    car car1 ={
        color: "Red",
        gear: 6,
        engine_type: "v10",
        model: "Volvo",
        radio: {name: "sony", radio_type: "FM"}
    };
}     



        function printMarks(map<int> marks){
        foreach string mark in marks.keys(){
            io:print(mark, " ", marks[mark], marks.get(mark));
        }
    }

  

