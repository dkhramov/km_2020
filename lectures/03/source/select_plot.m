x = [12, 64, 24];

plottype = 'pie';

switch plottype
    case 'bar' 
        bar(x)
        title('���������� ������')
    case 'pie'
        pie3(x)
        title('�������� ���������')
        legend('First','Second','Third')
    otherwise
        warning('����������� ��� �������.');
end
