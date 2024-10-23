module FSM (inc, set, reset, seg7, clk, display4);
input reset, clk, inc, set;
output reg [7:0] seg7;
output reg [3:0] display4;

reg [1:0] sel;
reg [7:0] number;
reg [3:0] number4b, state, next_state;

integer count;

parameter idle = 3'b000, up_mode = 3'b001, setup = 3'b010, pulse = 3'b011, down_mode = 3'b100;

clock_divider f1(clk, reset, fourMs);
debounce f3(clk, inc, de_inc);
debounce f4(clk, set, de_set);


always @(posedge reset or posedge fourMs) begin
    if(reset) begin
        number <= 8'b0;
    end
    else if (state == up_mode) begin
        if (count == 250) begin
            number <= number + 1'b1;
            count <= 0;
        end
        else begin
            number <= number;
            count <= count + 1;
        end
    end
    else if (state == down_mode) begin
        if (count == 250) begin
            number <= number - 1'b1;
            count <= 0;
        end
        else begin
            number <= number;
            count <= count + 1;
        end
    end
    else if (state == pulse) begin
        number <= number + 1;
    end
    else begin
        number <= number;
    end
end


always@ (posedge reset or posedge fourMs) begin
    if(reset) begin
        state <= idle;
    end
    else begin
        state <= next_state;
    end
end

//next state controll
always @ (state) begin
    case (state)
        idle: begin
            if(de_inc) begin
                next_state = up_mode;
            end
            else begin
                next_state = idle;
            end

        end
        up_mode: begin
            if(de_set) begin
                next_state = setup;
            end
            else begin
                next_state = up_mode;
            end
        end
        setup: begin
            if(de_set && de_inc) begin
                next_state = down_mode;
            end
            else if(de_set) begin
                next_state = up_mode;
            end
            else if(de_inc) begin
                next_state = pulse;
            end
            else begin
                next_state = setup;
            end
        end
        pulse: begin
            next_state = setup;
        end
        down_mode: begin
            if(de_set && de_inc) begin
                next_state = idle;
            end
            else if (de_set) begin
                next_state = setup;
            end
            else begin
                next_state = down_mode;
            end
        end

    endcase
end

always @(posedge reset or posedge fourMs) begin
    if(reset) begin
        sel <= 2'b0;
    end
    else begin
        sel <= sel + 1;
    end
end


always @(reset or sel) begin
    if(reset) begin
        number4b = 4'b0;
        display4 = 4'b1110;
    end
    case (sel)
        2'b00: begin
            number4b = number[3:0];
            display4 = 4'b1110;
        end
        2'b01: begin
            number4b = number[7:4];
            display4 = 4'b1101;
        end
        2'b10: begin
            number4b = 4'b0;
            display4 = 4'b1011;
        end
        2'b11: begin
            number4b = 4'b0;
            display4 = 4'b0111;
        end
        default: begin
            number4b = 4'b0;
            display4 = 4'b0111;
        end
    endcase
end

always @(reset or number4b) begin
    seg7[7] = 1'b1;
    if(reset) begin
        seg7 = 7'b0000001;
    end
    else begin
        case (number4b)
            4'h0:
                seg7 = 7'b0000001;
            4'h1:
                seg7 = 7'b1001111;
            4'h2:
                seg7 = 7'b0010010;
            4'h3:
                seg7 = 7'b0000110;
            4'h4:
                seg7 = 7'b1001100;
            4'h5:
                seg7 = 7'b0100100;
            4'h6:
                seg7 = 7'b0100000;
            4'h7:
                seg7 = 7'b0001111;
            4'h8:
                seg7 = 7'b0000000;
            4'h9:
                seg7 = 7'b0000100;
            4'hA:
                seg7 = 7'b0001000;
            4'hb:
                seg7 = 7'b1100000;
            4'hC:
                seg7 = 7'b0110001;
            4'hd:
                seg7 = 7'b1000010;
            4'hE:
                seg7 = 7'b0110000;
            4'hF:
                seg7 = 7'b0111000;
            default:
                seg7 = 7'b0000001;
        endcase
    end
end


endmodule
