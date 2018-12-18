function [res, flag] = opera(x1, op, x2)
% Função que realiza operações

flag = 'sucesso';

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
        return
end % Fim do switch op
end