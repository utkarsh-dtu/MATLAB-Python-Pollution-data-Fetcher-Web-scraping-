function pmten_val = PMTEN(n)
Pol = fileparts(which('PollutionData.py'));

if count(py.sys.path,Pol) == 0
    insert(py.sys.path,int32(0),Pol);
end
ar = py.PollutionData.ReturnData();
cellP = cellfun(@char,cell(ar),'UniformOutput',false);


% PM_TEN = [];
PM_TEN = zeros(52,1);
for i=1:52
    name = prettify(cellP{i});
    temp = split(name,',');
    
    name1 = cell2mat(temp(5));
    PM_TEN(i) = str2double(name1);
    

%     PM_TEN = [PM_TEN;str2num(name1)];
    
end

pmten_val = PM_TEN(n);
end