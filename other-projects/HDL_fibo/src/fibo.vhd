library ieee;
    use ieee.std_logic_1164.all; 
    use ieee.numeric_std.all; 

entity fibo is
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
end entity fibo;


architecture arch of fibo is

    type state_type is (idle_state, computation_state, return_state);
    signal state, next_state                                    : state_type;


    signal value, value_next                                    : unsigned(width - 1 downto 0);  
    signal previous_value, previous_value_next                  : unsigned(width - 1 downto 0);

    signal i, i_next                                            : unsigned(width - 1 downto 0);
begin


    --
    -- This process describes the registers of the FSM
    -- 
    process (clk)
    begin 
        if rising_edge(clk) then 
            if rst = '1' then 
                value <= to_unsigned(1, width);
                previous_value <= to_unsigned(1, width);
                i <= to_unsigned(2, width);
                state <= idle_state;
            else 
                value <= value_next;
                previous_value <= previous_value_next;
                i <= i_next;
                state <= next_state;
            end if;
        end if;
    end process;


    --
    -- This process describes the combinational logic of the FSM 
    --
    process (all)
        variable temp0, temp1   : unsigned(width - 1 downto 0);
    begin 

        -- Default values for outputs and next_states
        dout <= value;
        dout_valid <= '0';
        busy <= '0';

        value_next <= value;
        previous_value_next <= previous_value;
        i_next <= i;

        case(state) is 
            when idle_state =>
                if start = '1' then 
                    i_next <= i + to_unsigned(1, width);
                    next_state <= computation_state; 
                    busy <= '1';
                end if; 
            when computation_state =>
                busy <= '1';
                if i <= din then 
                    value_next <= value + previous_value;
                    previous_value_next <= value;
                    i_next <= i + to_unsigned(1, width);
                    next_state <= computation_state;
                else 
                    next_state <= return_state;
                end if;
            when return_state =>
                dout_valid <= '1';
                value_next <= to_unsigned(1, width);
                previous_value_next <= to_unsigned(1, width);
                i_next <= to_unsigned(2, width);
                next_state <= idle_state;
                busy <= '1';
        end case;
    end process;

end arch; -- arch