module PlusPerSecond (clk, reset, oneHz, fourMs);
    input clk, reset;
    output reg oneHz, fourMs;
    integer count1 = 0, count2 = 0;
    
    always @(posedge clk or posedge reset)  begin
        if(reset) begin
            count1 <= 32'b0;
            oneHz <= 1'b0;
        end
        else begin
            if(count1 == 50000000) begin
                oneHz <= ~oneHz;
                count1 <= 32'b0;
            end
            else begin
                oneHz <= oneHz;
                count1 <= count1 + 1;
            end              
        end
    end

    always @(posedge clk or posedge reset)  begin
        if(reset) begin
            count2 <= 32'b0;
            fourMs <= 1'b0;
        end
        else begin
            if(count2 == 200000) begin
                fourMs <= ~fourMs;
                count2 <= 32'b0;
            end
            else begin
                fourMs <= fourMs;
                count2 <= count2 + 1;
            end              
        end
    end

endmodule