library ieee;
    use ieee.std_logic_1164.all; 
    use ieee.numeric_std.all; 


entity top is 
    port
    (
        clk         :   in  std_logic;  
        rst         :   in  std_logic;
        din         :   in  std_logic_vector(7 downto 0);
        dout        :   out std_logic_vector(7 downto 0)
    );
end top;

architecture arch of top is 


   
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
    
    signal internal_dout        : unsigned(7 downto 0);
    signal internal_dout_reg    : unsigned(7 downto 0);
    signal internal_din         : unsigned(7 downto 0);
    signal dout_valid           : std_logic;

begin
    internal_din <= unsigned(din);
    uut: fibo 
        generic map
        (
            width => 8
        )
        port map
        (
            clk => clk, 
            rst => rst,
            din => internal_din,
            start => '1',
            busy => open,
            dout => internal_dout,
            dout_valid => dout_valid
        );
        
    dout <= std_logic_vector(internal_dout_reg);
       
       
    process(clk)
    begin
        if rising_edge(clk) then 
            if rst = '1' then 
                internal_dout_reg <= to_unsigned(170, 8);
            
            else 
                if dout_valid = '1' then 
                    internal_dout_reg <= internal_dout;
                end if;                
            end if;
        
        end if;
    end process;
        


end arch; -- arch