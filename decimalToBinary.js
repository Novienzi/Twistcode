//Decimal to Binary
function convertDecimalToBinary(number) {
    var binary = "";

    while (number > 0) {
        if (number % 2 == 0) {
            binary = "0" + binary;
        }
        else {
            binary = "1" + binary;
        }

        number = Math.floor(number / 2);
    }

    return binary;
}

console.log(convertDecimalToBinary(19));