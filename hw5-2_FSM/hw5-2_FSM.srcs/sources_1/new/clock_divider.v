module clock_divider (clk, reset, fourMs); //4ms ->  200k
    input clk, reset;
    output reg fourMs;
    integer count = 0;
    
    always @(posedge reset or posedge clk)  begin
        if(reset) begin
            count <= 32'b0;
            fourMs <= 1'b0;
        end
        else begin
            if(count == 200000) begin
                fourMs <= ~fourMs;
                count <= 32'b0;
            end
            else begin
                fourMs <= fourMs;
                count <= count + 1;
            end              
        end
    end

endmodule