#!/usr/bin/env cwl-runner

class: CommandLineTool

description: |
  Annotates and predicts the effects of variants on genes (such as amino acid changes).

dct:creator:
  foaf:name: Andy Yang
  foaf:mbox: "mailto:ayang@oicr.on.ca"

requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/cancercollaboratory/dockstore-tool-snpeff"
  - { import: node-engine.cwl }

inputs:
  - id: "#in"
    type: File
    description: "Predicted variants (SNPs, insertions, deletions and MNPs). The input file is usually obtained as a result of a sequencing experiment, and it is usually in variant call format (VCF)."
    inputBinding:
      position: 1

outputs:
  - id: "#out"
    type: File
    description: "Output path(?) for 3 output files: the HTML file containing summary statistics about the variants and their annotations; an annotated VCF file; and a text file summarizing the number of variant types per gene."
    outputBinding:
      glob:
        engine: cwl:JsonPointer
        script: /job/output1

baseCommand: [""]
