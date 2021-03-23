function valid_flag = check_AA(AA)
%CHECK_AA To verify whether AA is a valid amino acid 
%valid(TRUE); invalid(FALSE)
    switch AA
        case 'X'
        valid_flag = 0;
        case 'x'
        valid_flag = 0;
        case '-'
        valid_flag = 0;
        case '*'
        valid_flag = 0;
        otherwise
        valid_flag = 1;
    end
end