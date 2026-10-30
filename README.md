# Digital VLSI Design: 4-bit Array Multiplier

## Team Members
- **Arun** — Roll No: 2024102067
- **Jai Srikar** — Roll No: 2024102041

## Project Overview

This repository contains the complete open-source RTL-to-GDSII physical design flow for a **4-bit unsigned array multiplier**, implemented using Verilog HDL and the SkyWater SKY130 (130 nm) standard cell library.

The project covers RTL design and verification, logic synthesis, gate-level simulation, static timing analysis (STA), and physical design using open-source EDA tools.

### Tools and Technologies
- **Verilog HDL** — RTL design
- **Icarus Verilog** — RTL and gate-level simulation
- **GTKWave** — Waveform visualization
- **Yosys** — Logic synthesis
- **OpenSTA** — Static timing analysis
- **LibreLane** — Physical design and RTL-to-GDSII flow
- **SkyWater SKY130** — 130 nm standard cell library

---

## Part A: RTL Design and Verification

The Verilog RTL and testbench were developed and simulated using Icarus Verilog. GTKWave was used to inspect the generated waveforms and verify the design's functionality.

### Commands

Compile the RTL and testbench:

```bash
iverilog -g2012 -o sim tb/tb_mult.v rtl/full_adder.v rtl/mult_array.v
```

Run the simulation:

```bash
vvp sim
```

View the generated waveforms:

```bash
gtkwave mult.vcd
```

The testbench is intended to verify the multiplier across all **256 possible input combinations**.

---

## Part B: Logic Synthesis Using Yosys

Yosys was used to synthesize the RTL into a gate-level netlist mapped to the `sky130_fd_sc_hd` standard cell library.

Post-synthesis gate-level simulation (GLS) was performed to verify the functionality of the synthesized design.

### Commands

Run the synthesis script:

```bash
yosys -c synth/synth.tcl
```

Set the standard cell library path:

```bash
export CELLS="$PDK_ROOT/sky130A/libs.ref/sky130_fd_sc_hd/verilog"
```

Compile the gate-level simulation:

```bash
iverilog -g2012 -DFUNCTIONAL -DUNIT_DELAY=#1 \
-o gls \
tb/tb_mult.v \
"$CELLS/primitives.v" \
"$CELLS/sky130_fd_sc_hd.v" \
synth/mult_array_netlist.v
```

Run the gate-level simulation:

```bash
vvp gls
```

---

## Part C: Static Timing Analysis (STA)

OpenSTA was used to analyze the critical timing paths of the synthesized design and evaluate its timing performance.

The analysis was performed using the timing constraints and library models specified in the STA configuration.

### Command

```bash
sta sta/sta.tcl
```

The timing reports can be used to examine critical paths, setup and hold requirements, and the estimated maximum operating frequency.

---

## Part D: Physical Design — RTL-to-GDSII

LibreLane was used to perform the physical design flow, including floorplanning, placement, clock-tree synthesis where applicable, routing, and physical verification.

The design was configured to use the SkyWater SKY130 PDK and the `sky130_fd_sc_hd` standard cell library.

### Commands

Navigate to the physical design directory:

```bash
cd pnr
```

Configure the PDK:

```bash
sak-pdk sky130A
export PDK=sky130A
export STD_CELL_LIBRARY=sky130_fd_sc_hd
```

Run the physical design flow:

```bash
librelane --pdk sky130A --scl sky130_fd_sc_hd config.json
```

### Physical Design Configuration

- **PDK:** SkyWater SKY130
- **Standard Cell Library:** `sky130_fd_sc_hd`
- **Die Area:** `[0, 0, 150, 150]`
- **Initial Clock Period:** 3.5 ns
- **Final Clock Period:** 7.0 ns

### Physical Design Iteration Log

The clock period was incrementally increased in 0.5 ns steps to address setup timing violations at the worst-case slow corner, `max_ss_100C_1v60`.

| Attempt | Clock Period | Result |
|:--:|:--:|:--|
| 1 | 3.5 ns | Failed — Setup timing violations |
| 2 | 4.0 ns | Failed — Setup timing violations |
| 3 | 4.5 ns | Failed — Setup timing violations |
| 4 | 5.0 ns | Failed — Setup timing violations |
| 5 | 5.5 ns | Failed — Setup timing violations |
| 6 | 6.0 ns | Failed — Setup timing violations |
| 7 | 6.5 ns | Failed — Setup timing violations |
| 8 | 7.0 ns | Passed — Timing closure achieved |

The final reported run completed with:

- **Setup Violations:** 0
- **Hold Violations:** 0
- **DRC Errors:** 0
- **LVS Errors:** 0

These results correspond to the final reported configuration and should be interpreted in the context of its timing constraints and physical design settings.

---

## Project Structure

```text
.
├── rtl/
│   ├── full_adder.v
│   └── mult_array.v
├── tb/
│   └── tb_mult.v
├── synth/
│   ├── synth.tcl
│   └── mult_array_netlist.v
├── sta/
│   └── sta.tcl
├── pnr/
│   └── config.json
└── README.md
```

*Note: The directory structure above represents the expected organization. Adjust it to match the actual files in your repository.*

---

## Conclusion

This project demonstrates an end-to-end open-source digital VLSI design workflow for a 4-bit unsigned array multiplier, from RTL implementation and functional verification through logic synthesis, timing analysis, and physical design.

It also highlights the importance of timing constraints, standard cell mapping, and physical implementation in achieving timing closure.

---