# AI-Search-Project

Grid pathfinding project that finds a **minimum-cost path** between a start and goal cell using several **uninformed** and **informed** search algorithms.

## Description

Given an *N × N* grid of non-negative costs (and `-1` for blocked cells), the program searches for an optimal path and reports path cost, expanded vertices, runtime, penetration, and related statistics.

**Algorithms implemented:** Iterative Deepening Search (IDS), Uniform Cost Search (UCS), A* (ASTAR), Iterative Deepening A* (IDASTAR), Bidirectional A* (BIASTAR).

## Technologies

- C++ (original project built with Visual Studio)
- Windows console executable (`AISearchProject.exe`)

## Features

- Reads grid size, start/end coordinates, and cell costs from a text input file
- User-defined time limit (`dimension × factor`)
- Prints solution path (direction codes), cost, and search metrics

## Project structure

```
AI-Search-Project/
├── AISearchProject.exe    # Runnable Windows build
├── README.md
├── .gitignore
└── .gitattributes
```

> **Note:** The repository currently ships the **executable only**. Empty placeholder files that were previously committed (`AISearchProject`, `.sln`, `Tests`, PDF) were removed because they contained no usable source or test data.

## How to run

1. Build or use the provided `AISearchProject.exe` on **Windows**.
2. Run the executable.
3. When prompted, paste the **absolute path** to your input `.txt` file.
4. Enter a positive **time limit factor** (time limit = grid dimension × factor).
5. View results on screen.
6. Press `0` to exit.

## Input format

```text
ASTAR
17
0,0
16,16
1, 1, 6, 2, 8, 2, 9, 4, ...
... (N lines of N integers each)
```

| Line | Meaning |
|------|---------|
| 1 | Algorithm name (`IDS`, `UCS`, `ASTAR`, `IDASTAR`, `BIASTAR`) |
| 2 | Grid dimension *N* |
| 3 | Start `row,col` |
| 4 | Goal `row,col` |
| 5… | *N* rows of *N* cell costs (`-1` = blocked) |

## Example output (abbreviated)

```text
Path : RD-LD-D-RD-...
Cost : 36.000000
Number Of Expanded Vertices : 127
Execution Time : 0.026000 seconds
```

## Notes / limitations

- **Windows `.exe` only** in this repo — no C++ source or Visual Studio solution is currently available on GitHub.
- Input files must follow the exact format above.
- Large grids may hit the configured time limit before a solution is returned.
- For coursework details, refer to your local project report if you still have it.

## Author

Mustafa Waked — December 2020
