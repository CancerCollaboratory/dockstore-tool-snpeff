#!/usr/bin/env cwl-runner

class: CommandLineTool

description: |
  Annotates and predicts the effects of variants on genes (such as amino acid changes).

dct:creator:
  foaf:name: Andy Yang
  foaf:mbox: "mailto:ayang@oicr.on.ca"

cwlVersion: draft-3

requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/cancercollaboratory/dockstore-tool-snpeff"

inputs:
  - id: "#in"
    type: File
    description: "Predicted variants (SNPs, insertions, deletions and MNPs). The input file is usually obtained as a result of a sequencing experiment, and it is usually in variant call format (VCF)."
    inputBinding:
      position: 2 
    secondaryFiles:
      - ".genome"

  - id: "#genome"
    type: string
    inputBinding:
      position: 1

stdout: output.txt

outputs:
  - id: output
    type: File
    outputBinding:
      glob: output.txt

baseCommand: [""]
