#include <iostream>

#include "polygon.h"

int main() {
    Polygon polygon;

    // Add vertices
    polygon.addVertex(0, 0);
    polygon.addVertex(1, 0);
    polygon.addVertex(1, 1);
    polygon.addVertex(0, 1);

    // Add edges
    polygon.addEdge(polygon.getVertices()[0], polygon.getVertices()[1]);
    polygon.addEdge(polygon.getVertices()[1], polygon.getVertices()[2]);
    polygon.addEdge(polygon.getVertices()[2], polygon.getVertices()[3]);
    polygon.addEdge(polygon.getVertices()[3], polygon.getVertices()[0]);

    // Print vertices and edges
    std::cout << "Vertices:" << std::endl;
    polygon.printVertices();

    std::cout << "\nEdges:" << std::endl;
    polygon.printEdges();

    return 0;
}