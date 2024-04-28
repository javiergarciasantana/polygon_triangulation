#include "polygon.h"

void Polygon::Read(std::ifstream& input, const std::string& textfile) {
  input.open(textfile, std::ios_base::in);
  if (input.is_open()) {
  
  std::string line;
  bool readingVertices = true;

  while (getline(input, line)) {
    if (line.empty()) {
        // Skip empty lines and comments
        continue;
    }

    if (line == "# Edges") {
        // Switch to reading edges after encountering '# Edges'
        readingVertices = false;
        continue;
    }

    if (readingVertices) {
        // Read vertices
        std::istringstream iss(line);
        Vertex vertex;
        if (!(iss >> vertex.x >> vertex.y)) {
            std::cerr << "Error: Invalid vertex format in line: " << line << std::endl;
            continue;
        }
        addVertex(vertex.x, vertex.y);
    } else {
        // Read edges
        std::istringstream iss(line);
        int v1, v2;
        if (!(iss >> v1 >> v2)) {
            std::cerr << "Error: Invalid edge format in line: " << line << std::endl;
            continue;
        }
        // Do something with edges if needed
        addEdge(this->vertices_[v1], this->vertices_[v2]);
    }
  }
  input.close();

  } else {
    std::cerr << "An error was produced opening the file" << std::endl;
    exit(EXIT_SUCCESS);
  }
}

void Polygon::printVertices() {
  for (const auto& vertex : vertices_) {
    std::cout << "(" << vertex->x << ", " << vertex->y << ")" << std::endl;
  }
}

void Polygon::printEdges() {
  for (const auto& edge : edges_) {
    std::cout << "(" << edge->origin->x << ", " << edge->origin->y << ") -> ("
              << edge->twin->origin->x << ", " << edge->twin->origin->y << ")" << std::endl;
  }
}

void Polygon::drawPolygon() {
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

        // Calculate bounding box of the polygon
        double minX = std::numeric_limits<double>::max();
        double maxX = std::numeric_limits<double>::lowest();
        double minY = std::numeric_limits<double>::max();
        double maxY = std::numeric_limits<double>::lowest();

        for (const auto& vertex : vertices_) {
            if (vertex->x < minX) minX = vertex->x;
            if (vertex->x > maxX) maxX = vertex->x;
            if (vertex->y < minY) minY = vertex->y;
            if (vertex->y > maxY) maxY = vertex->y;
        }

        // Calculate center of the bounding box
        double centerX = (minX + maxX) / 2.0;
        double centerY = (minY + maxY) / 2.0;

        // Calculate scaling factors to make the polygon smaller
        double scaleFactor = 1; // Adjust as needed

        // Apply scaling transformation
        glPushMatrix();
        glTranslatef(centerX, centerY, 0.0f);
        glScalef(scaleFactor, scaleFactor, 0.5f);
        glTranslatef(-centerX, -centerY, 0.0f);

        // Draw polygon
        glColor3f(1.0f, 1.0f, 0.0f); // Set color to yellow
        glBegin(GL_LINE_LOOP);
        for (const auto& vertex : vertices_) {
            glVertex2d(vertex->x/8, vertex->y/8);
        }
        glEnd();

        // Draw vertices as circles
        glColor3f(1.0f, 0.0f, 0.0f); // Set color to red for vertices
        for (const auto& vertex : vertices_) {
            glBegin(GL_TRIANGLE_FAN);
            glVertex2d(vertex->x, vertex->y); // Center of circle
            for (int i = 0; i <= 100; i++) { // Loop to draw circle
                double angle = 2.0 * M_PI * i / 100;
                double dx = 0.05 * cos(angle); // Radius of circle
                double dy = 0.05 * sin(angle);
                glVertex2d(vertex->x + dx, vertex->y + dy);
            }
            glEnd();
        }

        // Restore transformation matrix
        glPopMatrix();

        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
    }

    glfwTerminate();
}
