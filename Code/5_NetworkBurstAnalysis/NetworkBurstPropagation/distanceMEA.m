    
function distances = distanceMEA(xy1, xy2, xy3, conf)
    % Definita la posizione degli elettrodi calcolo la matrice delle distanze
 
    for k = 1:length(xy1)
        if strcmp(conf, '4QMEA') || strcmp(conf,'120MEA') || strcmp(conf, '240MEA')    % TO CHECK
            for j = 1:length(xy1)
                distances(xy3(k),xy3(j))= sqrt((100*xy1(k)/1000-100*xy1(j)/1000)^2+(100*xy2(k)/1000-100*xy2(j)/1000)^2);
            end
        else
            for j = 1:length(xy1)
                distances(xy3(k),xy3(j))= sqrt((200*xy1(k)/1000-200*xy1(j)/1000)^2+(200*xy2(k)/1000-200*xy2(j)/1000)^2);
            end
        end
    end
end