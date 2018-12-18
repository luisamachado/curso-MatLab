function [res, flag] = opera_v2(x1, op, x2)
% Função que realiza operações

flag = 'sucesso';
res = 0;

return

switch op
    case '+'
        res = x1 + x2;
    case '-'
        res = x1 - x2;
    case '*'
        res = x1 * x2;
    case '/'
        if x2 ~= 0
            res = x1 / x2;
        else
            flag = 'erro';
            res = NaN;
        end
    otherwise
        flag = 'erro';
        res = NaN;
end % Fim do switch op
end