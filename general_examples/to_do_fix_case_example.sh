#!/usr/bin/fish

set -l count
set -l stars

while true
    read -n1 -P '¿Cuántas estrellitas le darías a este curso? (1-5)> ' count

    if string match --regex --quiet '^[1-5]$' $count
        break
    else
        echo 'Por favor, introduce un número del 1 al 5'
    end
end

# String ######################################################################
echo -e '\nWith the `string` builtin command'
echo 'Gracias por darle estás estrellitas al curso '(string repeat -n $count '🌟')

# For #########################################################################
for ignore in (seq $count)
    set stars "$stars🌟"
end

echo -e '\nWith `for`'
echo "Gracias por darle estás estrellitas al curso $stars"

# Switch-case #################################################################
switch $count
    case '1'
        set stars '🌟'
    case '2'
        set stars '🌟🌟'
    case '3'
        set stars '🌟🌟🌟'
    case '4'
        set stars '🌟🌟🌟🌟'
    case '5'
        set stars '🌟🌟🌟🌟🌟'
    case '*'
        exit 1 # Should not be reached
end

echo -e '\nWith `switch-case`'
echo "Gracias por darle estás estrellitas al curso $stars"