function chessboardGame(x, y) {
  x = (x - 1) % 4
  y = (y - 1) % 4
  return (x < 2 && y < 2) ? "Second" : "First"
}