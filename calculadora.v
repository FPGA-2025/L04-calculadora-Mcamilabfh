module calculadora(
  input  [7:0] entrada_A,
  input  [7:0] entrada_B,
  input  [2:0] codigo,
  output reg [7:0] saida
);

  always @(*) begin
    case (codigo)
      3'b000: saida = 8'b00000000;               // Zerar
      3'b001: saida = entrada_A;                 // Mostrar A
      3'b010: saida = entrada_B;                 // Mostrar B
      3'b011: saida = entrada_A + entrada_B;     // Somar
      3'b100: saida = entrada_A - entrada_B;     // Subtrair
      default: saida = 8'b00000000;              // Código inválido
    endcase
  end

endmodule
