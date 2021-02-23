function data_out = initfilter(data,range)
    % [] = INITFILTER(data,range)
    % data - given struct array 
    % range - float array of size 1x2, defines cutoff frequencies of
    % bandpass in Hertz
    % data_out - filtered output in the same format as data 

    data_out = data;
    [T,A,U,~] = size(Data);
    
    for i = 1:1:T
        for j = 1:1:A
            for k = 1:1:U
                var = data(i,j).spikes(k,:);
                data_out(i,j).spikes(k,1:length(var)) = bandpass(var(1:length(var)),range,1);
            end
        end
    end

end