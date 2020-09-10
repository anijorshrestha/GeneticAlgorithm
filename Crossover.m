function [y1 y2]=Crossover(x1,x2,crossover)

    pSinglePoint=0.1;
    pDoublePoint=0.2;
    pUniform=1-pSinglePoint-pDoublePoint;
    
    METHOD=RouletteWheelSelection([pSinglePoint pDoublePoint pUniform]);
    if strcmp(crossover,'Single Point')
        disp('----------Single Point-----------------')
         [y1 y2]=SinglePointCrossover(x1,x2);
    end
    if strcmp(crossover,'Double Point')
         disp('----------Double  Point-----------------')
         [y1 y2]=DoublePointCrossover(x1,x2);
    end
    if strcmp(crossover,'Uniform')
         disp('----------Uniform-----------------')
         [y1 y2]=UniformCrossover(x1,x2);
    end
    if strcmp(crossover,'Mix')
         
        switch METHOD
        case 1
             disp('----------Single Point-----------------')
            [y1 y2]=SinglePointCrossover(x1,x2);
            
        case 2
             disp('----------Double  Point-----------------')
            [y1 y2]=DoublePointCrossover(x1,x2);
            
        case 3
             disp('----------Uniform-----------------')
            [y1 y2]=UniformCrossover(x1,x2);
            
        end
    end
    


end