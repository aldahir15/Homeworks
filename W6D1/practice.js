
document.addEventListener("DOMContentLoaded", function(){

  const canvas = document.getElementById('myCanvas');
  canvas.width = 500;
  canvas.height = 500;

  const context = canvas.getContext('2d');
  context.fillStyle = 'grey';
  context.fillRect(0, 0, 500, 500);
  context.beginPath();
  context.arc(100, 100, 20, 0, 2*Math.PI, true);
  context.strokeStyle = "white";
  context.lineWidth = 5;
  context.stroke();
  context.fillStyle = "blue";
  context.fill();
});
