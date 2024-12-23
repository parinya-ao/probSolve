#include <iostream>
#include <queue>
#include <vector>
using namespace std;

class Graph
{
private:
  int V; // Number of vertices
  // Adjacency List representation
  vector<vector<int>> adj;

public:
  // Constructor
  Graph(int vertices)
  {
    V = vertices;
    adj.resize(V);
  }

  // Function to add an edge to the graph
  void addEdge(int u, int v)
  {
    adj[u].push_back(v);
  }

  // Function to perform Kahn's topological sort
  vector<int> kahnTopologicalSort()
  {
    vector<int> result;         // Store the final topological order
    vector<int> inDegree(V, 0); // Store in-degree of each vertex
    queue<int> q;               // Queue to store vertices with 0 in-degree

    // Step 1: Calculate in-degree for each vertex
    for (int u = 0; u < V; u++)
    {
      for (int v : adj[u])
      {
        inDegree[v]++;
      }
    }

    // Step 2: Add all vertices with 0 in-degree to queue
    for (int i = 0; i < V; i++)
    {
      if (inDegree[i] == 0)
      {
        q.push(i);
      }
    }

    // Step 3: Process vertices in queue
    while (!q.empty())
    {
      // Remove a vertex from queue
      int u = q.front();
      q.pop();
      result.push_back(u);

      // Reduce in-degree of all adjacent vertices
      for (int v : adj[u])
      {
        inDegree[v]--;
        // If in-degree becomes 0, add to queue
        if (inDegree[v] == 0)
        {
          q.push(v);
        }
      }
    }

    // Step 4: Check if graph has a cycle
    if (result.size() != V)
    {
      // Graph has at least one cycle
      return vector<int>(); // Return empty vector
    }

    return result;
  }
};

// Function to print the topological sort order
void printTopologicalOrder(const vector<int> &order)
{
  if (order.empty())
  {
    cout << "Graph contains a cycle! No valid topological sort exists.\n";
    return;
  }

  cout << "Topological Sort Order: ";
  for (int i = 0; i < order.size(); i++)
  {
    cout << order[i];
    if (i < order.size() - 1)
    {
      cout << " -> ";
    }
  }
  cout << endl;
}

int main()
{
  // Create a graph with 8 vertices (0 to 7)
  Graph g(8);

  // Add edges to create a DAG
  // Example: 0=A, 1=B, 2=C, 3=D, 4=E, 5=F, 6=G, 7=H
  g.addEdge(0, 2); // A -> C
  g.addEdge(1, 2); // B -> C
  g.addEdge(1, 3); // B -> D
  g.addEdge(2, 4); // C -> E
  g.addEdge(3, 5); // D -> F
  g.addEdge(4, 7); // E -> H
  g.addEdge(4, 5); // E -> F
  g.addEdge(5, 6); // F -> G

  // Perform topological sort
  vector<int> result = g.kahnTopologicalSort();

  // Print the result
  printTopologicalOrder(result);

  return 0;
}