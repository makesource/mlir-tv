// VERIFY

#map = affine_map<(d0, d1)-> (d1 * 10 + d0 + 2)>
func @buffer_cast(%arg : tensor<10x10xf32>) -> f32
{
  %c0 = constant 0 : index
  %c1 = constant 1 : index
  %0 = memref.buffer_cast %arg : memref<10x10xf32, #map>
  %1 = memref.load %0[%c0, %c1] : memref<10x10xf32, #map>
  return %1 : f32
}
