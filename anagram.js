function anagram(input) {
    var result = new Array();
    var list = new Array();
    var objects = new Object();

    for (var i in input) {
        var array = input[i].toUpperCase().split("");
        array = array.sort();
        value = array.join("");

        if (list.indexOf(value) != -1) {
            objects[value] = input[i];
        }

        list.push(value);
    }

    for (var key in objects) {
        result.push(objects[key]);
    }

    return result;
}
