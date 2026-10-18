function [minimumas, maksimumas, vidurkis] = masyvoinfo(masyvas)
% MASYVOINFO Apskaičiuoja skaičiu masyvo minimumą, maksimumą ir vidurkį.
% Įvestis:
% A = []; - skaičiu masyvas
% [minimumas, maksimumas, vidurkis] = masyvoinfo(A)
% Išvestys:
% minimumas - mažiausia masyvo reikšme.
% maksimumas - didžiausia masyvo reikšme.
% vidurkis - masyvo elementų aritmetinis vidurkis.
minimumas = min(masyvas(:));
maksimumas = max(masyvas(:));
vidurkis = mean(masyvas(:));
end
