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
    pause(5);
    disp(strcat('Function 1----',datestr(now)));
    NET.addAssembly('System.Core');
    MypipeServer  = System.IO.Pipes.NamedPipeServerStream('my_pipe', ...
                    System.IO.Pipes.PipeDirection.InOut, ...
                    System.IO.Pipes.NamedPipeServerStream.MaxAllowedServerInstances,...
                    System.IO.Pipes.PipeTransmissionMode.Byte,...
    System.IO.Pipes.PipeOptions.Asynchronous);
    disp("Waiting for client connection...");
    MypipeServer.WaitForConnection();
    disp("Client Connected");
    disp('Reading data from Client');
    pause(1);

    sr = System.IO.StreamReader(MypipeServer);
    %sw = System.IO.StreamWriter('E:/pipeKo.txt')
    line = sr.ReadLine();
    disp(line);
    disp(strcat('After Communication----',datestr(now)));
end
function func2()
    %disp('Function 2');
    disp(strcat('Function 2----',datestr(now)));
    pause(5);
    disp(strcat('Function 2----',datestr(now)));


end