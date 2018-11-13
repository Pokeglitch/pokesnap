// Place repeating data
macro rpt(value, size) {
  while {size} > 0 {
    db {value}
    evaluate size({size} - 1)
  }
}
