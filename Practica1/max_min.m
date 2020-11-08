function [maximum,minimum] = max_min(ELEMS)
%FUNCIONA PER STRUCTS AMB PARAMETRES .maxim i .minim
minimum= ELEMS(1).minim;
maximum= ELEMS(1).maxim;

for N=2:size(ELEMS,2)
    auxmax=ELEMS(N).maxim;
    auxmin=ELEMS(N).minim;
    
    if auxmax > maximum
        maximum = auxmax;
    end
    if auxmin < minimum
        minimum= auxmin;
    end
end
end

