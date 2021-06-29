function aqi_val = AQI(n)
Pol = fileparts(which('PollutionData.py'));

if count(py.sys.path,Pol) == 0
    insert(py.sys.path,int32(0),Pol);
end
ar = py.PollutionData.ReturnData();
cellP = cellfun(@char,cell(ar),'UniformOutput',false);


% aqi_arr = [];
aqi_arr = zeros(52,1);
for i=1:52
    name = prettify(cellP{i});
    temp = split(name,',');
    
    name1 = cell2mat(temp(3));

%     aqi_arr = [aqi_arr;str2num(name1)];
      aqi_arr(i) = str2double(name1);


    
    
end
aqi_val = aqi_arr(n);
end