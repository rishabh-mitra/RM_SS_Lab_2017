%matlab function which limits starting current to 2 * rated value

function Esoft = curlmt(I)
global Ir Ea;
if (I > 2*Ir)
    Esoft = Ea;
else
    Esoft = 0;
end;