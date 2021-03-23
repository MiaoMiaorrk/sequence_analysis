function res = Substitution_rate(sequences_input)
    %To calculate the substitution rate of the protein.
    %The first sequence is the reference sequence.
    if(size(sequences_input,1)<2)
        res = 0;
        return;
    end
    
    find_end_flag = 0;
    index = strfind(sequences_input(1).Sequence,'*');
    if(size(index)>0)
        find_end_flag = 1;
    end
    
    sequence_nums = size(sequences_input,1);
    protein_lenth = size(sequences_input(1).Sequence,2);
    if find_end_flag
        protein_lenth = protein_lenth - 1;
    end
    
    substitution_position = zeros(1,protein_lenth);
    valid_position = zeros(1,protein_lenth);
    
    for p = 1:1:protein_lenth 
        protein_reference = sequences_input(1).Sequence(p);
        for i = 2:1:sequence_nums    
            AA_i = sequences_input(i).Sequence(p); 
            valid_i = check_AA(AA_i);
            if valid_i == 0
                %disp('Warning invalid protein');
                continue;
            else
                if AA_i ~= protein_reference
                    substitution_position(1,p) = substitution_position(1,p)+1;
                end
                valid_position(1,p) = valid_position(1,p) + 1;
            end
        end
    end
    
    substitution_sum = 0;
    valid_sum = 0;
    for j = 1:1:protein_lenth
        substitution_sum = substitution_sum + substitution_position(1,j);
        valid_sum = valid_sum + valid_position(1,j);
    end
    
    res = substitution_sum/valid_sum;
    %disp(res);

end
