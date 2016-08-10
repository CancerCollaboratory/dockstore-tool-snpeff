#!/usr/bin/env cwl-runner

class: CommandLineTool

dct:creator:
  foaf:name: Andy Yang
  foaf:mbox: mailto:ayang@oicr.on.ca
cwlVersion: v1.0

requirements:
- class: DockerRequirement
  dockerPull: quay.io/cancercollaboratory/dockstore-tool-snpeff
inputs:
  genome:
    type: string
    inputBinding:
      position: 1

  in:
    type: File
    inputBinding:
      position: 2
    secondaryFiles:
    - .genome
    doc: Predicted variants (SNPs, insertions, deletions and MNPs). The input file
      is usually obtained as a result of a sequencing experiment, and it is usually
      in variant call format (VCF).
outputs:
  output:
    type: File
    outputBinding:
      glob: output.txt

baseCommand: ['']
doc: |
  Annotates and predicts the effects of variants on genes (such as amino acid changes).

