# AI-Search-Project

Grid pathfinding project that finds a **minimum-cost path** between a start and goal cell using several **uninformed** and **informed** search algorithms.

## What this project does

Given an *N × N* grid of non-negative costs (and `-1` for blocked cells), the program searches for an optimal path and reports path cost, expanded vertices, runtime, penetration, and related statistics.

**Algorithms implemented:** Iterative Deepening Search (IDS), Uniform Cost Search (UCS), A* (ASTAR), Iterative Deepening A* (IDASTAR), Bidirectional A* (BIASTAR).

## Technologies

- C++ (original project built with Visual Studio)
- Windows console executable (`AISearchProject.exe`)

## Features

- Reads grid size, start/end coordinates, and cell costs from a text input file
- User-defined time limit (`dimension × factor`)
- Prints solution path (direction codes), cost, and search metrics

## Prerequisites

- **Windows** (64-bit)
- No additional runtime required — the executable is self-contained

## Installation

```bash
git clone https://github.com/Mustafa-Waked/AI-Search-Project.git
cd AI-Search-Project
```

No build step is required when using the provided `AISearchProject.exe`.

## Build

C++ source and Visual Studio solution files are **not** included in this repository. The shipped artifact is the pre-built Windows executable from the original coursework.

## Run

### Interactive

1. Run `AISearchProject.exe`.
2. When prompted, enter the **absolute path** to your input `.txt` file.
3. Enter a positive **time limit factor** (time limit = grid dimension × factor).
4. View results on screen.
5. Press `0` to exit.

### Quick test (PowerShell)

```powershell
.\scripts\run.ps1
```

Or with a custom input file:

```powershell
.\scripts\run.ps1 -InputFile "C:\full\path\to\grid.txt" -TimeFactor 2
```

A minimal sample grid is included at `tests/sample_3x3.txt`.

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

## Example commands

```powershell
# Run with bundled 3×3 UCS sample
.\scripts\run.ps1

# Manual run
.\AISearchProject.exe
# then paste: C:\...\AI-Search-Project\tests\sample_3x3.txt
# then enter time factor: 1
# then press 0 to exit
```

## Expected output (sample_3x3.txt, UCS)

```text
Path : RD-RD
Cost : 2.000000
Number Of Expanded Vertices : 5
Execution Time : 0.002000 seconds
Penetrance : 0.600000
```

## Project structure

```
AI-Search-Project/
├── AISearchProject.exe
├── scripts/run.ps1
├── tests/sample_3x3.txt
├── README.md
├── .gitignore
└── .gitattributes
```

## Troubleshooting

| Problem | Likely cause | Fix |
|---------|--------------|-----|
| Program exits immediately | Wrong path or non-Windows OS | Use an absolute Windows path; run on Windows. |
| No solution / timeout | Time limit too low or blocked grid | Increase the time factor; verify `-1` cells do not block all paths. |
| Garbled metrics | Malformed input file | Ensure exactly *N* rows of *N* integers; algorithm name must match supported list. |
| `Access is denied` | Antivirus quarantine | Allow the exe or rebuild from source if you have the VS project locally. |

## Notes / limitations

- **Windows `.exe` only** in this repo — no C++ source or Visual Studio solution is currently available on GitHub.
- Input files must follow the exact format above.
- Large grids may hit the configured time limit before a solution is returned.

## Author

Mustafa Waked — December 2020
