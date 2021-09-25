fibonacci state machine:
    inputs 
    {
        start 
    }
    states 
    {
        i 
        previous_value 
        previous_previous_value 
        value
    }
    output
    {
        dout <= value 
        busy <= 0
    }
    functional description
    {
        idle 
            next_state 
            {
                if start
                {
                  
                    next_state <= computation
                    busy <= 1
                }

            }
        computation 
            next state 
            {
                if i <= din 
                {
                    value_next <= previous_value + previous_previous_value
                    previous_previous_value_next <=  previous_value
                    previous_value_next <= value
                    i_next <= i + 1
                    next_state <= computation
                }
                else 
                {
                    next_state <= return_state 
                }
                busy <= 1
            }
        return_state 
            next state 
            {
                finish <= 1
                previous_value_next <= 1 
                previous_previous_value_next <= 1 
                next_state <= idle
                busy <= 1
            }
    }
   
    
