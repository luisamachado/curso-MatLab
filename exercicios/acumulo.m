% Escreva uma função que determina o tempo (em anos) necessário para 
% que você acumule pelo menos VF (em dólares) em uma conta bancária se você 
% depositar inicialmente Vo (em dólares) e mais P (em dólares) ao final de 
% cada ano, com um rendimento anual de R%.
function [anos] = acumulo(VF, Vo, P, R)
anos = 0;

while Vo < VF
    Vo = (Vo * (1 + (R / 100))) + P;
    anos = anos + 1;
end

end