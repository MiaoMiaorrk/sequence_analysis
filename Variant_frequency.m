function res = Variant_frequency(sequences_input,site,referenceAA,variantAA)
    %To calculate the frequency of variant 'variantAA' at the specific site.
    %referenceAA is the amino acid from the reference sequence.
    if(size(sequences_input,1)<2)
        res = -1;
        return;
    end

    sequence_nums = size(sequences_input,1);

    variant_s = 0;
    valid_nums = 0;

    rAA_valid = strcmp(sequences_input(1).Sequence(site),referenceAA);
    if rAA_valid == 0
        res = -1;
        return;
    end
    for i = 2:1:sequence_nums
        AA_i = sequences_input(i).Sequence(site);
        valid_i = check_AA(AA_i);
        if valid_i == 0
            %disp('Warning invalid AA');
            continue;
        else
            if AA_i == variantAA
                variant_s = variant_s+1;
            end
            valid_nums = valid_nums + 1;
        end
    end
    res = variant_s/valid_nums;
end