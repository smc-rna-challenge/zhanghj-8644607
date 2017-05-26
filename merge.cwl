baseCommand: [merge.py]
class: CommandLineTool
cwlVersion: v1.0
hints:
- {class: DockerRequirement, dockerPull: 'quay.io/smc-rna-challenge/zhanghj-8644607-mike:1.0.0'}
inputs:
- id: soap_out
  inputBinding: {position: 2}
  type: File
- id: star_out
  inputBinding: {position: 1}
  type: File
outputs:
- id: output
  outputBinding: {glob: merged_out}
  type: File
requirements:
- {class: InlineJavascriptRequirement}
stdout: merged_out
