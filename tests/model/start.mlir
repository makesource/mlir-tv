module  {

  func @main2(%9: tensor<1x16xf32>) -> tensor<1x2xf32> {
    %0 = "tosa.const"() {value = dense<[0.043447677, -0.0434476472]> : tensor<2xf32>} : () -> tensor<2xf32>
    %1 = "tosa.const"() {value = dense<[[0.091361463, -1.23269629, 1.33242488, 0.92142266, -0.445623249, 0.849273681, -1.27237022, 1.28574562, 0.436188251, -0.963210225, 0.745473146, -0.255745709, -1.4491415, -1.4687326, 0.900665163, -1.36293614], [-0.0968776941, 0.771379471, -1.36363328, -1.1110599, -0.304591209, -1.05579722, 0.795746565, -1.3122592, 0.352218777, 1.04682362, -1.18796027, -0.0409261398, 1.05883229, 1.48620188, -1.13325548, 1.03072512]]> : tensor<2x16xf32>} : () -> tensor<2x16xf32>
    %2 = "tosa.const"() {value = dense<[-0.00698487554, 0.0294856895, 0.0699710473, 0.130019352, -0.0490558445, 0.0987673401, 0.0744077861, 0.0948959812, -0.010937131, 0.0931261852, 0.0711835548, -0.0385615043, 9.962780e-03, 0.00283221388, 0.112116851, 0.0134318024]> : tensor<16xf32>} : () -> tensor<16xf32>
    %3 = "tosa.const"() {value = dense<"0xD731CABE16C54C3EB976513EE616F7BDD550A53EBBC5DB3E90518D3E99FB9CBD7BE04F3D9F1DA7BE2FCAB5BD046A6E3EE15E5C3E4392B53E8811C23EAEE1A83C880A63BE0CE8493F381E4D3F85E0AABF5AFF843EE7AC81BF36968CBF759BF2BE45148E3FA5E0863F254873BFB67776BF27608C3F531E54BE2317603F4D8F91BF2C4D813F19493ABE871230BF4365B83F4B9184BF3EF1B13EE59A663F5D0F2D3FB5917BBF31B3A5BF6B77D13E06FDFE3E3B6087BF931A9B3E9A5546BF028F853FED2E873F11CA24BF571D95BFD6ADA93F167422BFE9A8D63E9350A83F3C41543FC9E57BBF48F361BFF00F123FCA807B3F71728ABF0D0AA53E668679BF08095E3F0262863EA76B1C3E89E7A13DB30AAD3E7D885D3D7FE6EABB42F2C2BE244A9D3E4813BEBEF2FAB43E637FB9BE97CF213D63D073BE74A7F3BC6B04E43D520CC73E2140633F7C7193BE0D8E16BFCD13953F474485BF4E82213FB4C4843FAE50253FCFF187BF9602ACBF43DA8D3F2876773F4103A7BFBF19333E379E81BF15CE0D3F8E3060BF3AEDA53ED57F593F4916C8BF2BFA203F9687CABE0300B4BF47CE6FBFC7D77E3FECB5C23FB9D460BFE1CA30BFB5F1A53F04BAABBE6EF23E3FE62D9ABF550D753F26E0FBBE3B8C83BFA36E9B3FBF9B08BFD49C233FDC89BF3F5B55EB3E13687BBF7C8486BF36626F3F08CD5B3E52D790BF27981C3F83B680BF42960C3FF7B0DEBE9D5F3A3E7704893E9999CABE11F88C3ED82D143E61DE893E7FB79D3EE7A3D7BE935453BD5C1A31BE0967DEBC007A803DD1369ABD81D488BEAA92443EA53C67BFA3F6E93E4F214D3FD58EC8BFF1AF773FFDFD87BF613FA3BF7E3453BF795A863F0E838E3FC01087BF95D536BF3AAB863F1BF3B9BE54DB8B3F5A8F11BF21F7D33E1FB9BE3CEC6E4CBFAC61CC3FFF2086BFA3D94F3FFFFDC43F38BC5C3F038D9ABFC34EAABF8C427C3FB2797E3E9731ADBF3B289BBCE2C17DBF7D0DC93EE1C5F5BDAA3A3EBE559719BEB66ABE3EDD14E63E5AD6A03E462C3CBED3FFBCBDBBF5B9BE6AF18E3E987FC73E52BBF6BDD534A0BE2FB5F13D39DA2B3D73D80D3E28B941BEA2C34E3FE58FC63E483067BF3621E83E2BD8A2BEBCB0A8BF0ACA3DBF80EA8C3FE877C03F1DBD46BFACC07BBFDB9FBF3FFB61F3BEB9A22C3F8B6D77BF423E57BF393D3D3FCB8B5C3F956AA0BF97E01D3F1ABA62BFD193D8BF6FA649BF454A773FB4CB503F13D164BFD5466ABF44A08C3FFE741BBF2DB7463FDC418DBFB51F103F631FA6BED90496BF1D2CBA3F1AA5F8BE12594C3F0E1E843F34A24E3FEDDD3FBFE3A85BBF39C8043F4081583F82ED8FBF90152CBB53B759BF158D663F5352B3BE8961473F6F65823FE547A7BF4E21DF3ED0FB30BF73EE82BF12AB8BBF4FC65C3F5A5FBC3FF26E3CBFFC9202BF2F78943F2741FEBEE7FB673F86AD00BF"> : tensor<16x16xf32>} : () -> tensor<16x16xf32>
    %10 = "tosa.fully_connected"(%9, %3, %2) : (tensor<1x16xf32>, tensor<16x16xf32>, tensor<16xf32>) -> tensor<1x16xf32>
    %11 = "tosa.clamp"(%10) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x16xf32>) -> tensor<1x16xf32>
    %12 = "tosa.fully_connected"(%11, %1, %0) : (tensor<1x16xf32>, tensor<2x16xf32>, tensor<2xf32>) -> tensor<1x2xf32>
    %13 = "tosa.exp"(%12) : (tensor<1x2xf32>) -> tensor<1x2xf32>
    %14 = "tosa.reduce_sum"(%13) {axis = 1 : i64} : (tensor<1x2xf32>) -> tensor<1x1xf32>
    %15 = "tosa.reciprocal"(%14) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    %16 = "tosa.mul"(%13, %15) {shift = 0 : i32} : (tensor<1x2xf32>, tensor<1x1xf32>) -> tensor<1x2xf32>
    return %16 : tensor<1x2xf32>
  }
}

// ./mlir-tv ../tests/model2/src.mlir ../tests/model2/src.mlir -max-const-tensor-size=1 --smt-to=10000000 --verbose -dump-smt-to=makesource 
