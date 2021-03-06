function qjout = sortJointValue(obj,string_search,qj,valueVector)
%% sortJointValue
% Sort the joints values valueVector of the joints listed in the cell of
% strings string_search to match the same order in the joint position
% vector qj as the order in the urdf file

qjout = qj;
for i = 1:length(string_search)
    j = 1;
    while( j <= length(obj.revoluteJointList))
        if (strcmp(obj.revoluteJointList{j}.Attributes.name, string_search{i}))
            qjout(j) = valueVector(1,i);
        end
        j = j+1;
    end
end

end

