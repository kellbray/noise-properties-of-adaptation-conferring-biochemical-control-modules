function array = read_binary_to_double_array(filename, Ndoubles_per_sim)

fileID = fopen(filename); % open file
fseek(fileID, 0, 'eof'); %move to end of file
filesize = ftell(fileID);%determine file size
Nelements = filesize/8; % number of doubles in file (double is 8 bytes)
fseek(fileID, 0, 'bof'); % move back to begin of file to read data
array = fread(fileID, [1,Nelements], 'double'); % load data into linear array
fclose(fileID); % close file

% safeguard against partial lines (e.g., if batch didn't exit cleanly)
r = mod(Nelements, Ndoubles_per_sim);
if mod(Nelements, Ndoubles_per_sim)~=0
    Nelements = Nelements-r;
    msg = strcat('Data file contains partial line. Truncating',...
        {' '}, num2str(r), ' doubles\n');
    msg = msg{1};
    fprintf(msg)
    array = array(1:end-r);
end

%reshape array
Nsim = Nelements/Ndoubles_per_sim; 
array = reshape(array, [Ndoubles_per_sim, Nsim])'; % size(array) = [Nsims, Ndoubles_per_sim]

end