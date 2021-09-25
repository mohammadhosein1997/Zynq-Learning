library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    use std.textio.all;
    use ieee.std_logic_textio.all;

entity fibo_tb is
end fibo_tb;


architecture tb of fibo_tb is
    constant clk_period :   time := 20 ns;
    constant width      :   integer := 32;
        

    signal clk          :   std_logic := '0';
    signal rst          :   std_logic := '1';

    -- Fibonacci function input
    signal din          :   unsigned(width - 1 downto 0);
                
    -- When this signal goes high the computation will start 
    signal start        :   std_logic;
    
    -- When this signal is '0' we can start compuation
    signal busy         :   std_logic; 
    
    -- Fibonacci function output
    signal dout         :   unsigned(width - 1 downto 0);
    signal dout_valid   :   std_logic;
    
    
    component fibo is
        generic
        (
            width   : integer := 32
        );
        port 
        (
            clk, rst    :   in  std_logic;

            -- Fibonacci function input
            din         :   in  unsigned(width - 1 downto 0);
            
            -- When this signal goes high the computation will start 
            start       :   in  std_logic;

            -- When this signal is '0' we can start compuation
            busy        :   out std_logic; 

            -- Fibonacci function output
            dout        :   out unsigned(width - 1 downto 0);
            dout_valid  :   out std_logic
        
        );
    end component fibo;

begin
    -- Simulation clock generation
    clk_gen: clk <= not clk after clk_period / 2;

    -- Instantiate the unit under the test
    uut: fibo 
        generic map 
        (
            width
        )
        port map 
        (
            clk, 
            rst, 
            din,
            start,
            busy, 
            dout,
            dout_valid
        );
    

    stim: process
        file input_file             : text;
        constant input_filename     : string := ".\fibo\Input.txt";
        variable input_line 	    : line;


        file output_file            : text;
        constant output_filename    : string := ".\fibo\Output.txt";
        variable output_line 	    : line;

        file faults_file            : text;
        constant faults_filename    : string := ".\fibo\Faults.txt";
        variable faults_line 	    : line;


        variable din_var            : std_logic_vector(width - 1 downto 0);
        variable dout_var           : std_logic_vector(width - 1 downto 0);

        variable expected_z         : integer;
        variable computed_dout         : integer;

        variable test_case_number   : integer := 1;
    begin 
        --
        -- Reset UUT
        -- 
        rst <= '1';
        wait for 2 * clk_period;   
        rst <= '0';

        file_open(input_file, input_filename, read_mode);
        file_open(output_file, output_filename, write_mode);
        file_open(faults_file, faults_filename, write_mode);

        while (not endfile(input_file)) loop
            --
            -- Read each test-case 
            --
            readline(input_file, input_line);
            read(input_line, din_var);

            --
            -- Print test-case information in the output file
            --
            write(output_line, "#" & integer'image(test_case_number) & LF);
            write(output_line, "din = " & to_string(din_var) & "(" & integer'image(to_integer(unsigned(din_var))) & ")"  & LF);
            
            writeline(output_file, output_line); 

    

            din <= unsigned(din_var);
            start <= '1';
            wait for clk_period;
            start <= '0';

            wait until dout_valid = '1';
            wait until clk = '0'; 

            dout_var := std_logic_vector(dout);

            --
            -- Write Information to the output register
            -- 
            computed_dout := to_integer(signed(dout_var));
            write(output_line, "dout = " & to_string(dout_var) & "(" & integer'image(computed_dout) & ")" & LF);
            write(output_line, "==============================================" & LF);

            writeline(output_file, output_line); 



            test_case_number := test_case_number + 1;
        end loop;

        file_close(input_file);
        file_close(output_file);
        file_close(faults_file);
        assert FALSE Report "Simulation Finished" severity FAILURE;
        wait;

    end process; 

end tb ; -- tb