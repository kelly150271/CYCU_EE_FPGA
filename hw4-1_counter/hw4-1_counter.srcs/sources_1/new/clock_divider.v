module clock (clk, reset, oneHz);
    input clk, reset;
    output reg oneHz;
    integer count = 0;
    
    always@(posedge clk)  begin
        if(reset) begin
            count <= 32'b0;
            oneHz <= 1'b0;
        end
        else begin
            if(count == 50000000) begin
                oneHz <= ~oneHz;
                count <= 32'b0;
            end
            else begin
                oneHz <= oneHz;
                count <= count + 1;
            end              
        end
    end

endmodule