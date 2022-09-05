
function setup() {
    initializeFields();
    createCanvas(500, 500);
    background(color(0xAC, 0xB3, 0xC6));
    stroke(color(0x05, 0x01, 0x01));
}

function draw() {
    if (mouseIsPressed) {
        line(mouseX, mouseY, pmouseX, pmouseY);
    }
}

function keyPressed() {
    if (key == '1')
        stroke(color(0xFE, 0xFF, 0x31));
    if (key == '2')
        stroke(color(0xFF, 0xB7, 0x31));
    if (key == '3')
        stroke(color(0x33, 0xFF, 0x31));
    if (key == '4')
        stroke(color(0x31, 0xD1, 0xFF));
    if (key == '5')
        stroke(color(0x31, 0x51, 0xFF));
    if (key == '6')
        stroke(color(0xFE, 0x31, 0xFF));
    if (key == '7')
        stroke(color(0xFF, 0x31, 0x5A));
}

function initializeFields() {
}
