
function setup() {
    initializeFields();
    // 設定一次
    createCanvas(500, 500);
}

function draw() {
    // 每一秒畫60次
    background(color(0x79, 0xFF, 0xC4));
    fill(color(0xFE, 0xFF, 0xCB));
    rect(100, 200, 100, 100);
    fill(color(0xB4, 0xBB, 0xFF));
    rect(mouseX, mouseY, 100, 200);
}

function initializeFields() {
}
