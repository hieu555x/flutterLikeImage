var i = 0;
var txt = "Hello, world!"; /* Chuỗi cần hiển thị */
var speed = 50; /* Tốc độ của hiệu ứng */

function typeWriter() {
  if (i < txt.length) {
    document.getElementById("demo").innerHTML += txt.charAt(i);
    i++;
    setTimeout(typeWriter, speed);
  }
}

/* Gọi hàm typeWriter() để bắt đầu hiệu ứng */
