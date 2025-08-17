# 16×1 Multiplexer in Verilog  

## Table of Contents  
- [Author](#author)  
- [Introduction](#introduction)  
- [Stages of Implementation](#stages-of-implementation)  
  - [Stage 1: 16×1 Behavioral Modeling](#stage-1-16x1-behavioral-modeling)  
  - [Stage 2: 16×1 Structural using 4×1 Behavioral MUXes](#stage-2-16x1-structural-using-4x1-behavioral-muxes)  
  - [Stage 3: 4×1 Structural using 2×1 Behavioral MUXes](#stage-3-4x1-structural-using-2x1-behavioral-muxes)  
  - [Stage 4: 2×1 Structural Gate-Level Modeling](#stage-4-2x1-structural-gate-level-modeling)  
- [Key Highlights](#key-highlights)  
- [Hierarchy Diagram](#hierarchy-diagram)  
- [Results](#results)  
- [Conclusion](#conclusion)  
- [References](#references)  
- [Author](#author)  

---

## Author  
**Shaik Sardar Basha**  
M. Tech VLSI 2025–27, NIT Jamshedpur  

---

## Introduction  
A **multiplexer (MUX)** is a combinational circuit that selects one input from multiple input signals and forwards it to a single output line.  

This project demonstrates the design of a **16×1 MUX** in Verilog using a **progressive structural approach**. The implementation begins with **behavioral modeling** and step by step decomposes into **structural and gate-level modeling**, illustrating different abstraction levels in hardware description languages (HDL).  

The purpose of this project is to:  
- Understand **hierarchical design** in Verilog.  
- Show how a **complex design (16×1 MUX)** can be built from smaller building blocks.  
- Explore **Behavioral → Structural → Gate-level** modeling transitions.  

---

## Stages of Implementation  

### Stage 1: 16×1 Behavioral Modeling  
- Implemented directly using a `assign` statement.  
- Focuses on **functionality**, not internal structure.

<img width="360" height="447" alt="image" src="https://github.com/user-attachments/assets/a289e522-794c-49d6-9b51-164ec7e861ee" />

### Stage 2: 16×1 Structural using 4×1 Behavioral MUXes  
- Divided the 16×1 MUX into **four 4×1 MUXes** (behavioral).  
- Combined outputs structurally using another 4×1 MUX.

  
<img width="391" height="290" alt="image" src="https://github.com/user-attachments/assets/444033cf-53f4-451d-bf83-a0420cc37d1e" />             <img width="360" height="447" alt="image" src="https://github.com/user-attachments/assets/442a9ff0-f0eb-45e5-9f25-8a09a66f81d4" />




### Stage 3: 4×1 Structural using 2×1 Behavioral MUXes  
- Each 4×1 MUX is constructed using **three 2×1 MUXes**.  
- Demonstrates **hierarchical decomposition**.

  <img width="500" height="400" alt="image" src="https://github.com/user-attachments/assets/8c378572-6499-4f51-8cc0-9b9c919622f7" />


### Stage 4: 2×1 Structural Gate-Level Modeling  
- The smallest block, 2×1 MUX, is implemented with **primitive gates** (`and`, `or`, `not`).  
- Represents **pure gate-level modeling**.

  <img width="500" height="400" alt="image" src="https://github.com/user-attachments/assets/fdc60f17-831a-452f-b918-0ba0e4ecb653" />


---

## Key Highlights  
- Demonstrates **all levels of Verilog modeling**.  
- Clear hierarchy from **behavioral → structural → gate-level**.  
- **Scalable and modular design**.  
- Excellent educational project for learning **HDL abstraction levels**.  

---

## Hierarchy Diagram  

<img width="400" height="900" alt="image" src="https://github.com/user-attachments/assets/6926441b-2059-446b-94c6-0596f07ff680" />


---
## Results

<img width="1115" height="917" alt="Screenshot 2025-08-17 110043" src="https://github.com/user-attachments/assets/cea85331-202e-45bd-a314-1094c04485f5" />

<img width="1618" height="948" alt="Screenshot 2025-08-17 103830" src="https://github.com/user-attachments/assets/9284a664-c3cc-49e2-8d18-88c4eeb697a6" />







