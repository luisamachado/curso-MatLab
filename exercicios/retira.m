function [new_string] = retira(caracter, old_string)
% retira caracter

pos = find(old_string == caracter);

new_string = old_string;

new_string(pos) = [];

end