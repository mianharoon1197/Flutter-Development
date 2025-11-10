class Point {
  final double x;
  final double y;
  final double z;  
  Point(this.x, this.y, this.z);
  void printPoints(){
    print(x);
    print(y);
    print(z);
  }}
void main() { 
  Point p = Point(1,2,3);
  p.printPoints();}
