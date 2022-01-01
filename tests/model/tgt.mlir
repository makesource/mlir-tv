#map0 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map2 = affine_map<(d0, d1) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d1)>
#map4 = affine_map<(d0, d1) -> (d0)>
#map5 = affine_map<(d0, d1, d2) -> (d2)>
#map6 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
module  {
  func @main2(%4 : tensor<1x16xf32>) -> tensor<1x2xf32>  {
    %cst = arith.constant 1.000000e+00 : f32
    %cst_0 = arith.constant -0.000000e+00 : f32
    %cst_1 = arith.constant dense<[[0.091361463, -0.0968776941], [-1.23269629, 0.771379471], [1.33242488, -1.36363328], [0.92142266, -1.1110599], [-0.445623249, -0.304591209], [0.849273681, -1.05579722], [-1.27237022, 0.795746565], [1.28574562, -1.3122592], [0.436188251, 0.352218777], [-0.963210225, 1.04682362], [0.745473146, -1.18796027], [-0.255745709, -0.0409261398], [-1.4491415, 1.05883229], [-1.4687326, 1.48620188], [0.900665163, -1.13325548], [-1.36293614, 1.03072512]]> : tensor<16x2xf32>
    %cst_2 = arith.constant 3.40282347E+38 : f32
    %cst_3 = arith.constant dense<"0xD731CABE880A63BE2C4D813FED2E873F0262863E2140633F8E3060BF550D753FF7B0DEBEA53C67BF21F7D33EE1C5F5BD28B941BE423E57BFB51F103F5352B3BE16C54C3E0CE8493F19493ABE11CA24BFA76B1C3E7C7193BE3AEDA53E26E0FBBE9D5F3A3EA3F6E93E1FB9BE3CAA3A3EBEA2C34E3F393D3D3F631FA6BE8961473FB976513E381E4D3F871230BF571D95BF89E7A13D0D8E16BFD57F593F3B8C83BF7704893E4F214D3FEC6E4CBF559719BEE58FC63ECB8B5C3FD90496BF6F65823FE616F7BD85E0AABF4365B83FD6ADA93FB30AAD3ECD13953F4916C8BFA36E9B3F9999CABED58EC8BFAC61CC3FB66ABE3E483067BF956AA0BF1D2CBA3FE547A7BFD550A53E5AFF843E4B9184BF167422BF7D885D3D474485BF2BFA203FBF9B08BF11F88C3EF1AF773FFF2086BFDD14E63E3621E83E97E01D3F1AA5F8BE4E21DF3EBBC5DB3EE7AC81BF3EF1B13EE9A8D63E7FE6EABB4E82213F9687CABED49C233FD82D143EFDFD87BFA3D94F3F5AD6A03E2BD8A2BE1ABA62BF12594C3FD0FB30BF90518D3E36968CBFE59A663F9350A83F42F2C2BEB4C4843F0300B4BFDC89BF3F61DE893E613FA3BFFFFDC43F462C3CBEBCB0A8BFD193D8BF0E1E843F73EE82BF99FB9CBD759BF2BE5D0F2D3F3C41543F244A9D3EAE50253F47CE6FBF5B55EB3E7FB79D3E7E3453BF38BC5C3FD3FFBCBD0ACA3DBF6FA649BF34A24E3F12AB8BBF7BE04F3D45148E3FB5917BBFC9E57BBF4813BEBECFF187BFC7D77E3F13687BBFE7A3D7BE795A863F038D9ABFBBF5B9BE80EA8C3F454A773FEDDD3FBF4FC65C3F9F1DA7BEA5E0863F31B3A5BF48F361BFF2FAB43E9602ACBFECB5C23F7C8486BF935453BD0E838E3FC34EAABF6AF18E3EE877C03FB4CB503FE3A85BBF5A5FBC3F2FCAB5BD254873BF6B77D13EF00F123F637FB9BE43DA8D3FB9D460BF36626F3F5C1A31BEC01087BF8C427C3F987FC73E1DBD46BF13D164BF39C8043FF26E3CBF046A6E3EB67776BF06FDFE3ECA807B3F97CF213D2876773FE1CA30BF08CD5B3E0967DEBC95D536BFB2797E3E52BBF6BDACC07BBFD5466ABF4081583FFC9202BFE15E5C3E27608C3F3B6087BF71728ABF63D073BE4103A7BFB5F1A53F52D790BF007A803D3AAB863F9731ADBFD534A0BEDB9FBF3F44A08C3F82ED8FBF2F78943F4392B53E531E54BE931A9B3E0D0AA53E74A7F3BCBF19333E04BAABBE27981C3FD1369ABD1BF3B9BE3B289BBC2FB5F13DFB61F3BEFE741BBF90152CBB2741FEBE8811C23E2317603F9A5546BF668679BF6B04E43D379E81BF6EF23E3F83B680BF81D488BE54DB8B3FE2C17DBF39DA2B3DB9A22C3F2DB7463F53B759BFE7FB673FAEE1A83C4D8F91BF028F853F08095E3F520CC73E15CE0D3FE62D9ABF42960C3FAA92443E5A8F11BF7D0DC93E73D80D3E8B6D77BFDC418DBF158D663F86AD00BF"> : tensor<16x16xf32>
    %cst_6 = arith.constant dense<[-0.00698487554, 0.0294856895, 0.0699710473, 0.130019352, -0.0490558445, 0.0987673401, 0.0744077861, 0.0948959812, -0.010937131, 0.0931261852, 0.0711835548, -0.0385615043, 9.962780e-03, 0.00283221388, 0.112116851, 0.0134318024]> : tensor<16xf32>
    %cst_7 = arith.constant dense<[0.043447677, -0.0434476472]> : tensor<2xf32>
    %5 = linalg.init_tensor [1, 16] : tensor<1x16xf32>
    %6 = linalg.fill(%cst_0, %5) : f32, tensor<1x16xf32> -> tensor<1x16xf32> 
    %7 = linalg.matmul ins(%4, %cst_3 : tensor<1x16xf32>, tensor<16x16xf32>) outs(%6 : tensor<1x16xf32>) -> tensor<1x16xf32>
    %8 = linalg.init_tensor [1, 16] : tensor<1x16xf32>
    %9 = linalg.generic {indexing_maps = [#map3, #map2, #map2], iterator_types = ["parallel", "parallel"]} ins(%cst_6, %7 : tensor<16xf32>, tensor<1x16xf32>) outs(%8 : tensor<1x16xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):  // no predecessors
      %21 = arith.addf %arg1, %arg2 : f32
      %22 = arith.cmpf olt, %21, %cst_0 : f32
      %23 = select %22, %cst_0, %21 : f32
      %24 = arith.cmpf olt, %cst_2, %21 : f32
      %25 = select %24, %cst_2, %23 : f32
      linalg.yield %25 : f32
    } -> tensor<1x16xf32>

    %10 = linalg.init_tensor [1, 2] : tensor<1x2xf32>
    %11 = linalg.fill(%cst_0, %10) : f32, tensor<1x2xf32> -> tensor<1x2xf32> 
    %12 = linalg.matmul ins(%9, %cst_1 : tensor<1x16xf32>, tensor<16x2xf32>) outs(%11 : tensor<1x2xf32>) -> tensor<1x2xf32>

    %13 = linalg.init_tensor [1] : tensor<1xf32>
    %14 = linalg.fill(%cst_0, %13) : f32, tensor<1xf32> -> tensor<1xf32> 
    %15 = linalg.generic {indexing_maps = [#map3, #map2, #map4], iterator_types = ["parallel", "reduction"]} ins(%cst_7, %12 : tensor<2xf32>, tensor<1x2xf32>) outs(%14 : tensor<1xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):  // no predecessors
      %21 = arith.addf %arg1, %arg2 : f32
      %22 = math.exp %21 : f32
      %23 = arith.addf %22, %arg3 : f32
      linalg.yield %23 : f32
    } -> tensor<1xf32>
    %16 = tensor.expand_shape %15 [[0, 1]] : tensor<1xf32> into tensor<1x1xf32>
    %17 = tensor.expand_shape %12 [[0, 1], [2]] : tensor<1x2xf32> into tensor<1x1x2xf32>
    %18 = linalg.init_tensor [1, 1, 2] : tensor<1x1x2xf32>
    %19 = linalg.generic {indexing_maps = [#map5, #map6, #map0, #map6], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_7, %17, %16 : tensor<2xf32>, tensor<1x1x2xf32>, tensor<1x1xf32>) outs(%18 : tensor<1x1x2xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32):  // no predecessors
      %21 = arith.divf %cst, %arg3 : f32
      %22 = arith.addf %arg1, %arg2 : f32
      %23 = math.exp %22 : f32
      %24 = arith.mulf %23, %21 : f32
      linalg.yield %24 : f32
    } -> tensor<1x1x2xf32>
    %20 = tensor.collapse_shape %19 [[0, 1], [2]] : tensor<1x1x2xf32> into tensor<1x2xf32>
    return %20 : tensor<1x2xf32>
  }
}

// ./mlir-tv ../tests/model2/tgt.mlir ../tests/model2/tgt.mlir -max-const-tensor-size=1 --smt-to=10000000 --verbose -dump-smt-to=makesource 
