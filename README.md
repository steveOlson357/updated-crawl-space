# Crawl Space

### Welcome to the official **Crawl Space** Git repository! 
Can you blast all the *Zap Flies* before they spawn reinforcements?! 
---

**🎮 Play Instant in Browser:** https://techbytrade.itch.io/crawl-space

**🧪 Live Test Deployment:** https://steveolson357.github.io/

---
Controls: 
---
  *On-screen controls are provided in-game for touch-screen users*
  
  **Left Arrow:** Move player left
  
  **Right Arrow:** Move player right
  
  **Up Arrow:** Jump, double-jump
  
  **Down Arrow OR Spacebar:**
    Fire bug blaster
    
---

## 🚀 Executive Summary
A browser-based retro arcade style game built entirely for zero-install, instant-web execution, **Crawl Space** brings the nostalgia of the classic arcade games that pioneered the industry and takes you on a brand new all original space adventure!

While presented as a game, the underlying codebase serves dual purpose as a technical demonstration of **Senior-level architecture, methodical multi-tier QA protocols, and strict Git version control workflows**. 

### 🛠️ Core Technology Stack
* **Language/Engine:** GameMaker with custom GML code
* **Architecture Style:** Component-based event handling and stateful object interactions
* **Testing Framework:** Utilizes debugging and console log message testing, local network testing on multiple devices, and a live test GitHub deployment.
* **CI/CD Pipeline:** The project is built and developed on this repository. Once local tests pass, the project is compiled and saved to a deployment repository that automatically updates the live test deployment, for final testing over WAN before deploying to the production page on <a href="https://techbytrade.itch.io/crawl-space" target="_blank" rel="noopener noreferrrer" >Itch</a>. 

---

## 🧪 Testing, QA, & Network Deployment Pipeline

This repository follows a strict, multi-tier Quality Assurance (QA) and network verification protocol to ensure system stability, cross-platform compatibility, and flawless wide-area network (WAN) deployment.

### 1. Local Simulation & Hardware Debugging (LAN Environment)
* **Real-Time Telemetry Triage:** Code changes are initially deployed to a dedicated local test server. System variables, event execution loops, and states are validated using live software debugging tools and targeted console telemetry outputs.
* **Cross-Platform Network Verification:** To ensure hardware cross-compatibility, the local server environment is bridged to secondary mobile devices over the local network via IP/Port routing, ensuring responsive UI layout adjustments and input mapping consistency.

### 2. Version Control & Staging (Git Workflow)
* **Isolated Branch Strategy:** Features and bug fixes are developed on completely isolated local branches to protect codebase integrity.
* **Staging and Merge Controls:** Once local validation passes, code is compiled, committed, and pushed to a dedicated staging/testing branch within the repository before ever touching production code.

### 3. Production Deployment & WAN Integrity Testing
* **Wide-Area Network (WAN) Validation:** After merging into the deployment branch, a live test deployment page is spun up to evaluate performance over external networks. This step explicitly checks for WAN functionality, latency handling, and asset delivery pipelines when completely disconnected from the local host environment.
* **Production Release Management:** Only after the WAN staging environment passes final checklist validation is the live build compiled and deployed to the production environment on Itch.io.


---

## 📈 Cross-Industry Applicability (Industrial Automation & Robotics)

The software methodologies engineered into this browser application translate perfectly to advanced industrial robotics and warehouse logistics:
1. **Asynchronous Processing:** Built using strict async routines and event loops—highly relevant for handling real-time data telemetry from physical sensors or managing autonomous vehicle routing.
2. **Simulation Modeling:** The same coordinate mapping and physics collision algorithms used here simulate how a heavy telehandler or automated guided vehicle (AGV) maps out and moves through a 2D/3D industrial grid.
3. **Web-Based HMIs:** Modern smart factories rely heavily on responsive, browser-based control dashboards to monitor assembly lines remotely. 

---


## 🏗️ Technical Architecture & Code Design

This application is built using the **GameMaker** engine, leveraging optimized, custom **GML (GameMaker Language)** code blocks rather than visual drag-and-drop actions to ensure maximum control over memory management and execution pipelines.

* **State Mechanics:** Object instances utilize event listeners and properties to make updates to their state instead of a central hub of variables, ensuring data integrity and allowing individual instances to more cleanly step through code.  
* **Asset & Logic Handling:** Input and data dynamically work together to track and update relative objects and vectors-mimicking the exact relationship between an industrial **HMI (Human-Machine Interface)** and a **PLC (Programmable Logic Controller)**.
* **Optimization:** Created to work with dynamic viewports while maintaining app usability and created robust viewport/camera configuration with optional on-screen controls.
* **Deterministic Step Loops & State Machinery:** Built around GameMaker's precise step-event architecture; Object interactions, velocity vectors, and coordinate calculations are computed systematically every frame, closely mirroring the cyclical scan cycles used in industrial **PLC automation loops**.
* **Custom Event-Driven Logic:** Utilizes custom-coded scripts and instance-variable structures to handle inter-object communication, ensuring that system components stay decoupled and responsive.
* **Efficient Memory & Collision Mapping:** Implements custom bounding box checks, layer management, and instance handling to ensure flawless performance directly in HTML5 browser environments.


---

## 🎨 Proprietary Asset & Animation Pipeline

To maintain total creative control and optimize visual performance, 100% of the game’s graphical assets were built and animated natively from scratch.

* **Sprite Architecture:** Designed and animated all 2D pixel-art sprites and tile sets, managing precise frame rates and collision masks to align perfectly with game-world object instance interactions and player input.
* **UI/UX Asset Management:** Engineered responsive visual states and created custom code to map visual touch screen input to virtually activate corresponding hardware buttons, showcasing strong functional design skills applicable to creating modern, web-based **HMIs (Human-Machine Interfaces)** for heavy machinery.
