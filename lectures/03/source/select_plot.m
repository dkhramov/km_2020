x = [12, 64, 24];

plottype = 'pie';

switch plottype
    case 'bar' 
        bar(x)
        title('Столбчатый график')
    case 'pie'
        pie3(x)
        title('Круговая диаграмма')
        legend('First','Second','Third')
    otherwise
        warning('Неизвестный тип графика.');
end
