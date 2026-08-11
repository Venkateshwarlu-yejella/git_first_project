module tb_mux2to1;
    reg a;
    reg b;
    reg sel;
    wire y;

    mux2to1 dut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    initial begin
        $display("time a b sel y");
        $monitor("%0t %b %b %b %b", $time, a, b, sel, y);

        a = 0; b = 0; sel = 0; #5;
        sel = 1;            #5;
        a = 1; sel = 0;     #5;
        sel = 1;            #5;
        a = 0; b = 1; sel = 0; #5;
        sel = 1;            #5;

        $display("Simulation complete");
        $finish;
    end
endmodule
