#include <iostream>

#include "polygon.h"

int main(int argc, char* argv[]) {

  Polygon polygon;

  std::ifstream input;

    polygon.Read(input, argv[1]);

    // Print vertices, edges and the polygon itself
    std::cout << "Vertices:" << std::endl;
    polygon.printVertices();

    std::cout << "\nEdges:" << std::endl;
    polygon.printEdges();

    polygon.drawPolygon();

    return 0;

}