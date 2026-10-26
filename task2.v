module regfile_rv32(clk, rst, we, rs1, rs2, rd, wdata, rdata1, rdata2);
    input clk, rst, we;
    input [4:0] rs1, rs2, rd;
    input [31:0] wdata;
    output [31:0] rdata1, rdata2;

    reg [31:0] regs [0:31];
    integer i;

    always @(posedge clk) begin
        if (rst) begin
            for (i = 0; i < 32; i = i + 1)
                regs[i] <= 32'd0;
        end
        else if (we && rd != 5'd0)      
            regs[rd] <= wdata;
    end

    assign rdata1 = (rs1 == 5'd0) ? 32'd0 : regs[rs1];
    assign rdata2 = (rs2 == 5'd0) ? 32'd0 : regs[rs2];
endmodule



module tb_task3;
    reg clk, rst, we;
    reg [4:0] rs1, rs2, rd;
    reg [31:0] wdata;
    wire [31:0] rdata1, rdata2;

    regfile_rv32 rf(clk, rst, we, rs1, rs2, rd, wdata, rdata1, rdata2);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        we = 0;
        rs1 = 0;
        rs2 = 0;
        rd = 0;
        wdata = 0;

        
        rst = 1;
        #10;
        rst = 0;

       
        we = 1;
        rd = 5'd5;
        wdata = 32'hDEADBEEF;
        #10;
      
        rd = 5'd6;
        wdata = 32'h12345678;
        #10;

       
        we = 0;
        rs1 = 5'd5;
        rs2 = 5'd6;
        #10;
    
        rs1 = 5'd6;
        rs2 = 5'd5;
        #10;

        
        we = 1;
        rd = 5'd0;
        wdata = 32'hFFFFFFFF;
        #10;
        we = 0;
        rs1 = 5'd0;
        #10;

   
        rst = 1;
        #10;
        rst = 0;
        rs1 = 5'd5;
        rs2 = 5'd6;
        #10;

    end
endmodule
