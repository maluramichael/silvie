meta:
  id: chr
  file-extension: chr
  endian: le
seq:
- id: start
  size: 8
- id: chunk
  type: chunk
- id: offsets
  type: material_offsets
- id: meshes
  type: meshes
- id: textures
  type: textures
- id: nodes
  type: nodes
#- id: mesh_groups
#  type: mesh_groups
types:
  chunk:
    seq:
    - id: id
      type: u4
    - id: size
      type: u4
  material_offsets:
    seq:
    - id: chunk
      type: chunk
    - id: count
      type: u4
    - id: data
      type: u4
      repeat: expr
      repeat-expr: count
  meshes:
    seq:
    - id: chunk
      type: chunk
    - id: count
      type: u4
    - id: mesh_id
      type: u4
    - id: data
      type: mesh
      repeat: expr
      repeat-expr: 2
  mesh:
    seq:
    - id: chunk
      type: chunk
    - id: idx
      type: u4
    - id: id
      type: u4
    - id: unknown_0
      type: u4
    - id: number_of_vertices
      type: u4
    - id: number_of_normals
      type: u4
    - id: number_of_faces
      type: u4
    - id: unknown_1
      type: u4
    - id: unknown_2
      type: u4
    - id: origin
      type: f4
      repeat: expr
      repeat-expr: 3
    - id: matrix
      type: f4
      repeat: expr
      repeat-expr: 16
    - id: vertices
      type: f4
      repeat: expr
      repeat-expr: number_of_vertices * 3
    - id: normals
      type: f4
      repeat: expr
      repeat-expr: number_of_normals * 3
    - id: faces
      type: face
      repeat: expr
      repeat-expr: number_of_faces
  face:
    seq:
    - id: flags
      type: u1
    - id: idx
      type: u1
    - id: number_of_vertices
      type: u1
    - id: material_offset_idx
      type: u1
    - id: unknown
      type: u4
    - id: vertices
      type: face_vertex
      repeat: expr
      repeat-expr: number_of_vertices
  face_vertex:
    seq:
    - id: idx
      type: u4
    - id: unknown_0
      type: u4
    - id: color_idx
      type: u2
    - id: texel_u
      type: u2
    - id: unknown_1
      type: u2
    - id: texel_v
      type: u2
  textures:
    seq:
    - id: chunk
      type: chunk
    - id: cst_0
      type: u4
    - id: width_0
      type: u4
    - id: height
      type: u4
    - id: cst_1
      type: u4
    - id: buffer_size
      type: u4
    - id: width_1
      type: u4
    - id: buffer_offset
      type: u4
    - id: unknown_0
      type: s4
    - id: unknown_1
      type: s4
    - id: unknown_2
      type: s4
    - id: unknown_3
      type: s4
    - id: unknown_4
      type: s4
    - id: unks
      type: s4
      repeat: expr
      repeat-expr: height
    - id: buffer
      type: u1
      repeat: expr
      repeat-expr: buffer_size - 8
  texture:
    seq:
    - id: chunk
      type: chunk
    - id: idx
      type: u4
    - id: id
      type: u4
    - id: unknown_0
      type: u4
    - id: number_of_vertices
      type: u4
    - id: number_of_normals
      type: u4
    - id: number_of_faces
      type: u4
    - id: unknown_1
      type: u4
    - id: unknown_2
      type: u4
    - id: origin
      type: f4
      repeat: expr
      repeat-expr: 3
    - id: matrix
      type: f4
      repeat: expr
      repeat-expr: 16
    - id: vertices
      type: f4
      repeat: expr
      repeat-expr: number_of_vertices * 3
    - id: normals
      type: f4
      repeat: expr
      repeat-expr: number_of_normals * 3
    - id: faces
      type: face
      repeat: expr
      repeat-expr: number_of_faces
  nodes:
    seq:
    - id: chunk
      type: chunk
    - id: unknown
      type: s4
    - id: number_of_nodes
      type: u4
    - id: data
      type: node
      repeat: expr
      repeat-expr: number_of_nodes
  node:
    seq:
    - id: chunk
      type: chunk
    - id: parent_idx
      type: s4
    - id: position
      type: f4
      repeat: expr
      repeat-expr: 3
  mesh_groups:
    seq:
    - id: chunk
      type: chunk
    - id: data
      type: mesh_group
      repeat: expr
      repeat-expr: 2
  mesh_group:
    seq:
    - id: chunk
      type: chunk
