#include <iostream>
#include <vector>
#include <GLFW/glfw3.h>
#include <cmath>
#include <fstream>
#include <sstream>

#ifndef POLYGON_H
#define POLYGON_H

struct Vertex;

struct Edge {
  Vertex* origin;
  Edge* twin;
  Edge* next;
  Edge* prev;
};

struct Vertex {
  double x;
  double y;
  Edge* incident_edge;
};

class Polygon {
 public:
  Polygon() {}
  ~Polygon() {}

  void addVertex(double x, double y) {
    Vertex* v = new Vertex();
    v->x = x;
    v->y = y;
    vertices_.push_back(v);
  }

  void addEdge(Vertex* v1, Vertex* v2) {
    Edge* e1 = new Edge();
    Edge* e2 = new Edge();

    e1->origin = v1;
    e2->origin = v2;

    e1->twin = e2;
    e2->twin = e1;

    if (v1->incident_edge == nullptr) {
      v1->incident_edge = e1;
    }

    if (v2->incident_edge == nullptr) {
      v2->incident_edge = e2;
    }

    edges_.push_back(e1);
    edges_.push_back(e2);
  }

  std::vector<Vertex*> getVertices() {
    return vertices_;
  }

  std::vector<Edge*> getEdges() {
    return edges_;
  }

  void Read(std::ifstream&, const std::string&);
  void printVertices();
  void printEdges();
  void drawPolygon();

 private:
  std::vector<Vertex*> vertices_;
  std::vector<Edge*> edges_;
};

#endif