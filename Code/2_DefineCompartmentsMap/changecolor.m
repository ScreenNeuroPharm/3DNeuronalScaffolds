function color_new = changecolor(color_old)
    
    if (color_old == [0 1 0 ])
        color_new = [1 0 0];
    elseif (color_old == [1 0 0])
        color_new = [0 1 1];
    elseif (color_old == [0 1 1])
        color_new = [0.8 0.8 0.8];
    elseif (color_old == [0.8 0.8 0.8])
        color_new = [1 0 1];
    elseif (color_old == [1 0 1])
        color_new = [0 0 1];
    elseif (color_old == [0 0 1])
        color_new = [1 1 0];
    else
        color_new = [0 1 0];
    end