% Developed By Ashadullah Shawon
% Software Engineer, FSMB
% Email: shawona@frontiersemi.com

parfor i = 1:2
    if i == 1
      func1();
    else
      func2();
    end
end

 function func1()
     %disp('Function 1');
     disp(strcat('Function 1----',datestr(now)));
     pause(2);
     disp(strcat('Function 1----',datestr(now)));
     
 end
 function func2()
    %disp('Function 2');
    disp(strcat('Function 2----',datestr(now)));
    pause(2);
    disp(strcat('Function 2----',datestr(now)));
   
    
 end

