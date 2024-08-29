---
title: "set"
#description: "This is a story..."
#cover: cover.png
#image: cover.png
#date: 2024-07-02
---

The std::set container in C++ is a sorted associative container that stores
unique elements. Internally, it is typically implemented as a balanced binary
tree (usually a Red-Black Tree). The memory layout of std::set is similar to
that of std::map, but since std::set only stores keys (without associated
values), its node structure is simpler.

## Methods

- operations
- complexity

## Implementation

`std::set` is typically implemented as a balanced binary tree (usually a
Red-Black Tree).

```cpp
template<typename T>
struct Node {
    T key;         // The key element
    Node* parent;  // Pointer to the parent node
    Node* left;    // Pointer to the left child
    Node* right;   // Pointer to the right child
    bool color;    // Color for Red-Black Tree (true = red, false = black)
}
```

std::set uses a tree structure where each node contains:

- **Key**: The key element.
- **Parent Pointer**: A pointer to the parent node.
- **Left Child Pointer**: A pointer to the left child node.
- **Right Child Pointer**: A pointer to the right child node.
- **Color**: An attribute indicating the color of the node (red or black)

### Layout

_TODO_

### Size

- **16 bytes**
