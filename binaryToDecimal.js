//Binary to Decimal
function binaryToDecimal(binaryNumber) {
    var total = 0;
    for (var i = 0; i < binaryNumber.length; i++) {
        var bit = binaryNumber.charAt(binaryNumber.length - (i + 1));
        if (bit == 1) {
            var number = Math.pow(2, i * parseInt(bit));
            total += number;
        }
    }

    return total;
}

console.log(binaryToDecimal("1001"));