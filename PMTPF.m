function pmtpf_val = PMTPF(n)
Pol = fileparts(which('PollutionData.py'));

if count(py.sys.path,Pol) == 0
    insert(py.sys.path,int32(0),Pol);
end
ar = py.PollutionData.ReturnData();
cellP = cellfun(@char,cell(ar),'UniformOutput',false);


% PM_TPF = [];
PM_TPF = zeros(52,1);
for i=1:52
    name = prettify(cellP{i});
    temp = split(name,',');
    
    name1 = cell2mat(temp(4));
    PM_TPF(i) = str2double(name1);
    

%     PM_TPF = [PM_TPF;str2num(name1)];


    
    
end
pmtpf_val = PM_TPF(n);
end