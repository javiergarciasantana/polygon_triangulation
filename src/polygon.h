#include <iostream>
#include <vector>
#include <GLFW/glfw3.h>

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

  void printVertices() {
    for (const auto& vertex : vertices_) {
      std::cout << "(" << vertex->x << ", " << vertex->y << ")" << std::endl;
    }
  }

  std::vector<Vertex*> getVertices() {
    return vertices_;
  }

  std::vector<Edge*> getEdges() {
    return edges_;
  }

  void printEdges() {
    for (const auto& edge : edges_) {
      std::cout << "(" << edge->origin->x << ", " << edge->origin->y << ") -> ("
                << edge->twin->origin->x << ", " << edge->twin->origin->y << ")" << std::endl;
    }
  }

  void drawPolygon() {
    GLFWwindow* window;

    /* Initialize the library */
    if (!glfwInit())
      return;

    /* Create a windowed mode window and its OpenGL context */
    window = glfwCreateWindow(640, 480, "Simple Polygon", NULL, NULL);
    if (!window) {
      glfwTerminate();
      return;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);

    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window)) {
      glClear(GL_COLOR_BUFFER_BIT);

      // Draw polygon
      glBegin(GL_LINE_LOOP);
      for (const auto& vertex : vertices) {
        glVertex2d(vertex->x, vertex->y);
      }
      glEnd();

      /* Swap front and back buffers */
      glfwSwapBuffers(window);

      /* Poll for and process events */
      glfwPollEvents();
    }

    glfwTerminate();
  }

 private:
  std::vector<Vertex*> vertices_;
  std::vector<Edge*> edges_;
};

#endif