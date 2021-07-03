## Setup Environment 
https://qiskit.org/documentation/getting_started.html

pip install -r requirements.txt

## Simulators
### AER Simulator
The AerSimulator has several simulation methods including statevector, stabilizer, extended_stabilizer and 
matrix_product_state. Each of these determines the internal representation of the quantum circuit and the algorithms 
used to process the quantum operations. They each have advantages and disadvantages, and choosing the best method is a 
matter of investigation.

The Aer provider contains a variety of high performance simulator backends for a variety of simulation methods.

 - AerSimulator('aer_simulator')
 - AerSimulator('aer_simulator_stabilizer')
 - AerSimulator('aer_simulator_matrix_product_state')
 - AerSimulator('aer_simulator_extended_stabilizer')
 - AerSimulator('aer_simulator_superop')

#### GPU AER Simulator
The statevector, density_matrix and unitary simulators support running on a NVidia GPUs. For these methods the 
simulation device can also be manually set to CPU or GPU using simulator.set_options(device='GPU') backend option. If a 
GPU device is not available setting this option will raise an exception.

 - AerSimulator('aer_simulator_statevector')
 - AerSimulator('aer_simulator_density_matrix')
 - AerSimulator('aer_simulator_unitary')


### QasmSimulator
[What is the QASM Simulator](https://www.youtube.com/watch?v=V4CwN4rEtVQ)
  - QasmSimulator('qasm_simulator')

### Unitary Simulator 
  [What is the Unitary Simulator](https://www.youtube.com/watch?v=5uT5fUq2HVM)
  - UnitarySimulator('unitary_simulator')

### StateVector Simulator 
[How can I simulator StateVectors in Qiskit](https://www.youtube.com/watch?v=GuppGy50dQ4)
  - StatevectorSimulator('statevector_simulator')

### Pulse Simulator
 - PulseSimulator('pulse_simulator')]
